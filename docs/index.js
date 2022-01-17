// ISC License (ISC)
// Copyright (c) 2021, Statsig, Inc.

// Permission to use, copy, modify, and/or distribute this software for any purpose
// with or without fee is hereby granted, provided that the above copyright notice
// and this permission notice appear in all copies.

// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
// REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
// FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
// INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
// OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
// TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF
// THIS SOFTWARE.

let maxDays = 30;

async function generateAllReport() {
    const url = new URL(location)
    const params = url.searchParams
    const versions = params.getAll('version')
    let langs = params.getAll('lang')
    const reqMaxDays = params.get('maxDays')
    if( reqMaxDays && reqMaxDays > 0 && reqMaxDays < maxDays) {
        maxDays = reqMaxDays
    }
    if( !langs || langs.length == 0 ) {
        const f = await fetch("lang.txt")
        const langsText = await f.text()
        langs = langsText.split("\n")
    }
    langs = uniq(langs)
    let permlinks = await getPermlinkMap()
    for(let i = 0; i < langs.length; ++i ) {
        const lang = langs[i].trim()
        if( lang ) {
            await generateLangVersionsReport(lang, versions, permlinks)
        }
    }
    const spinner = document.getElementById('loading')
    spinner.classList.add('loaded')
}

async function getPermlinkMap() {
    const path = normalizedFilePath(`permlinks/permlinks.csv`)
    const f = await fetch(path)
    let permlinks = {}
    if( f.ok ) {
        csv = await f.text()
        const rows = csv.split("\n")
        for(let i = 0; i < rows.length; ++i ) {
            const row = rows[i]
            if( !row ) {
                continue
            }
            const [lang, version, permlink] = row.split(",", 3).map(s => s.trim())
            if( !(lang in permlinks) ) {
                permlinks[lang] = {}
            }
            if( !(version in permlinks[lang]) ) {
                permlinks[lang][version] = permlink
            }
        }
    }
    console.log(permlinks)
    return permlinks
}

function getPermlinkFromMap(lang, version, permlinks) {
    if( lang in permlinks ) {
        if( version in permlinks[lang] ) {
            return permlinks[lang][version]
        }
    }
    return "https://wandbox.org"
}

async function generateLangVersionsContainerReportFromAll(lang, container, versionFilter, permlinks) {
    const path = normalizedFilePath(`logs/${lang}_versions_report.csv`)
    const f = await fetch(path)
    if( ! f.ok ) {
        return [null, 0]
    }

    let upTimes = []
    for( let i=0; i < maxDays; ++i ) {
        upTimes.push([])
    }
    let count = 0
    const versionsReportText = await f.text()
    const versionsReport = versionsReportText.split("--- ")
    for(let i = 0; i < versionsReport.length; ++i ) {
        const lines = versionsReport[i].split("\n")
        const version = regexFilter(lines[0].trim(), versionFilter)
        if( version ) {
            count++
            let permlink = getPermlinkFromMap(lang, version, permlinks)
            const [statusStream, normalized] = generateReportFromStatusLines(lang, version, permlink, lines.slice(1,-1))
            container.appendChild(statusStream)
            for( let n=0; n < upTimes.length; ++n ) {
                const lastSet = normalized.status[n]
                if( lastSet >= 0 ){
                    upTimes[n].push(lastSet)
                }
            }
        }
    }
    return [upTimes, count]
}
async function generateLangVersionsContainerReportFromEachFile(lang, container, versionFilter, permlinks) {
    const path = normalizedFilePath(`keys/${lang}_versions.txt`)
    const f = await fetch(path)
    if( !f.ok ) {
        return [null, 0]
    }

    let upTimes = []
    for( let i=0; i < maxDays; ++i ) {
        upTimes.push([])
    }
    let count = 0
    const versionsText = await f.text()
    const versions = versionsText.split("\n")
    for(let i = 0; i < versions.length; ++i ) {
        const version = regexFilter(versions[i].trim(), versionFilter)
        if( version ) {
            count++
            let permlink = getPermlinkFromMap(lang, version, permlinks)
            const [statusStream, normalized] = await generateReport(lang, version, permlink)
            container.appendChild(statusStream)
            for( let n=0; n < upTimes.length; ++n ) {
                const lastSet = normalized.status[n]
                if( lastSet >= 0 ){
                    upTimes[n].push(lastSet)
                }
            }
        }
    }
    return [upTimes, count]
}
async function generateLangVersionsContainerReport(lang, container, versionFilter, permlinks) {
    const [upTimes, count] = await generateLangVersionsContainerReportFromAll(lang, container, versionFilter, permlinks)
    if( upTimes ) {
        return [upTimes, count]
    }
    return await generateLangVersionsContainerReportFromEachFile(lang, container, versionFilter, permlinks)
}

async function generateLangVersionsReport(lang, versionFilter, permlinks) {
    const versionsContainer = templatize("statusLangVersionContainerTemplate", {
        title: lang,
    });

    const [upTimes, count] = await generateLangVersionsContainerReport(lang, versionsContainer, versionFilter, permlinks)
    if( versionFilter && versionFilter.length > 0 && count == 0) {
        return
    }

    const upTime = getAvailableAverage(upTimes)
    const color = getColor(upTime)
    const upTimeStr = upTime == null ? "--%" : `${(upTime * 100).toFixed(2)}%`
    const container = templatize("statusLangContainerTemplate", {
        title: lang,
        lang: lang,
        urlParamLang: encodeURIComponent(lang),
        color: color,
        status: getStatusText(color),
        upTime: upTimeStr,
      });
    container.appendChild(versionsContainer)
    document.getElementById("reports").appendChild(container)
}

async function getStatusLine(lang, version) {
    const path = normalizedFilePath(`logs/${lang}__${version}_report.csv`)
    const f = await fetch(path)
    let statusLines = ""
    if( f.ok ) {
        statusLines = await f.text()
    }
    return statusLines
}

async function getPermlink(lang, version) {
    const path = normalizedFilePath(`permlinks/${lang}__${version}_permlink.txt`)
    const f = await fetch(path)
    let permlink = "https://wandbox.org"
    if( f.ok ) {
        permlink = await f.text()
    }
    return permlink
}

async function generateReport(lang, version, permlink) {
    let statusLines = await getStatusLine(lang, version)
    return generateReportFromStatusLines(lang, version, permlink, statusLines.split("\n"))
}

function generateReportFromStatusLines(lang, version, permlink, statusLines) {
    const normalized = normalizeStatusData(statusData(statusLines))
    const statusStream = constructStatusStream(lang, version, permlink, normalized);
    return [statusStream, normalized]
  }

function getRelativeDays(date1, date2) {
    return Math.floor(Math.abs((date1 - date2) / (24 * 3600 * 1000)));
}
function getAvailableAverage(valulesArray) {
    if( valulesArray ) {
        for( let i = 0; i < valulesArray.length; ++i ) {
            if( valulesArray[i].length != 0 ) {
                return getAverage(valulesArray[i])
            }
        }
    }
    return null
}
function getAverage(vals) {
    if( !vals || vals.length == 0 ) {
        return null
    }
    return vals.reduce((a, v) => a + v) / vals.length
}
function normalizeStatusData(data) {
    let dateValues = {}
    const now = Date.now();
    for( const [k,v] of Object.entries(data.status) ) {
        const d = getRelativeDays(now, new Date(k).getTime())
        dateValues[d] = getAverage(v)
    }
    let statusData = {};
    statusData.status = dateValues
    statusData.upTime = data.upTime
    statusData.upTimeStr = data.upTimeStr
    return statusData
}
function statusData(lines) {
    let dateValues = {}
    let count = 0
    let succeeded = 0
    for( let i=0; i < lines.length; ++i ) {
        const row = lines[i]
        if( !row ) {
            continue
        }
        const [dateTimeStr, statusStr] = row.split(",", 2)
        const dateTime = new Date(dateTimeStr + "Z")
        const dateStr = dateTime.toDateString()

        let statusArray = dateValues[dateStr]
        if( !statusArray ) {
            statusArray = []
            dateValues[dateStr] = statusArray
            if( dateValues.length > maxDays ) {
                break
            }
        }
        count++
        if( statusStr.trim() == "succeeded" ) {
            succeeded++
            statusArray.push(1)
        } else {
            statusArray.push(0)
        }
    }

    let statusData = {};
    statusData.status = dateValues
    const upTime = count ? ((succeeded / count) * 100) : -1
    statusData.upTime = upTime
    statusData.upTimeStr = upTime == -1 ? "--%" : `${upTime.toFixed(2)}%`
    return statusData
}

function constructStatusStream(lang, version, permlink, normalizedData) {
    const uptimeData = normalizedData.status
    const lastSet = uptimeData[0];
    const color = getColor(lastSet);
    let streamContainer = templatize("statusVersionStreamContainerTemplate", {
        color: color,
        version: version,
        permlink: permlink,
    });
    for (var ii = maxDays - 1; ii >= 0; ii--) {
      let line = constructStatusLine(lang, version, ii, uptimeData[ii]);
      streamContainer.appendChild(line);
    }
    return streamContainer;
}

function constructStatusLine(lang, version, relativeDay, upTimeArray) {
    let date = new Date();
    date.setDate(date.getDate() - relativeDay);

    return constructStatusSquare(lang, version, date, upTimeArray);
}

function constructStatusSquare(lang, version, date, uptimeVal) {
    const color = getColor(uptimeVal);
    let square = templatize("statusSquareTemplate", {
        color: color,
        tooltip: getTooltip(lang, version, date, color),
    });

    const show = () => {
        showTooltip(square, lang, version, date, color);
    };
    square.addEventListener("mouseover", show);
    square.addEventListener("mousedown", show);
    square.addEventListener("mouseout", hideTooltip);
    return square;
}

let cloneId = 0;
function templatize(templateId, parameters) {
  let clone = document.getElementById(templateId).cloneNode(true);
  clone.id = "template_clone_" + cloneId++;
  if (!parameters) {
    return clone;
  }

  applyTemplateSubstitutions(clone, parameters);
  return clone;
}

function applyTemplateSubstitutions(node, parameters) {
  const attributes = node.getAttributeNames();
  for (var ii = 0; ii < attributes.length; ii++) {
    const attr = attributes[ii];
    const attrVal = node.getAttribute(attr);
    node.setAttribute(attr, templatizeString(attrVal, parameters));
  }

  node.id = templatizeString(node.id)

  if (node.childElementCount == 0) {
    node.innerText = templatizeString(node.innerText, parameters);
  } else {
    const children = Array.from(node.children);
    children.forEach((n) => {
      applyTemplateSubstitutions(n, parameters);
    });
  }
}

function templatizeString(text, parameters) {
  if (parameters) {
    for (const [key, val] of Object.entries(parameters)) {
      text = text.replaceAll("$" + key, val);
    }
  }
  return text;
}

let tooltipTimeout = null;
function showTooltip(element, lang, version, date, color) {
  clearTimeout(tooltipTimeout);
  const toolTipDiv = document.getElementById("tooltip");

  document.getElementById("tooltipDateTime").innerText = date.toDateString();
  document.getElementById("tooltipDescription").innerText =
    getStatusDescriptiveText(color);

  const statusDiv = document.getElementById("tooltipStatus");
  statusDiv.innerText = getStatusText(color);
  statusDiv.className = color;

  toolTipDiv.style.top = element.offsetTop + element.offsetHeight + 10;
  toolTipDiv.style.left =
    element.offsetLeft + element.offsetWidth / 2 - toolTipDiv.offsetWidth / 2;
  toolTipDiv.style.opacity = "1";
}

function hideTooltip() {
    tooltipTimeout = setTimeout(() => {
        const toolTipDiv = document.getElementById("tooltip");
        toolTipDiv.style.opacity = "0";
    }, 1000);
}

function getColor(uptimeVal) {
    return uptimeVal == null
        ? "nodata"
        : uptimeVal == 1
        ? "success"
        : uptimeVal < 0.3
        ? "failure"
        : "partial";
}

function getStatusText(color) {
    return color == "nodata"
      ? "No Data Available"
      : color == "success"
      ? "Fully Compilable"
      : color == "failure"
      ? "Outage"
      : color == "partial"
      ? "Partial Compilable"
      : "Unknown";
}

function getStatusDescriptiveText(color) {
    return color == "nodata"
      ? "No Data Available: Health check was not performed."
      : color == "success"
      ? "No compile/runtime error recorded."
      : color == "failure"
      ? "compile/runtime error recorded."
      : color == "partial"
      ? "Partial compile/runtime error recorded."
      : "Unknown";
}

function getTooltip(lang, version, date, quartile, color) {
    let statusText = getStatusText(color);
    return `${lang}: ${version} | ${date.toDateString()} : ${quartile} : ${statusText}`;
}

function normalizedFilePath(path) {
    return path.replace(" ", "_").replace("#", "Sharp")
}

function regexFilter(value, filter) {
    if( !filter || filter.length == 0 ) {
        return value
    }
    for( let i=0; i < filter.length; ++i ) {
        if( value.match(filter[i]) ) {
            return value
        }
    }
    return null
}
function regexArrayFilter(array, filter) {
    if( !filter || filter.length == 0 ) {
        return array
    }
    let dest = []
    for( let i=0; i < array.length; ++i ) {
        const r = regexFilter(array[i], filter)
        if( r ) {
            dest.push(r)
        }
    }
    return dest
}

function uniq(array) {
    return array.filter((elem, index, self) => self.indexOf(elem) === index);
}
