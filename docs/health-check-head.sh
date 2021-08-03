#!/bin/bash

SELF_DIR=$(cd $(dirname $0); pwd)
WANDBOX_OPTIONS=
LANGUAGE=

while getopts l:c:h OPT
do
    case $OPT in
        l) LANGUAGE="$OPTARG";;
        h) usage_exit ;;
        *) usage_exit ;;
    esac
done

function shields {
mkdir "${SELF_DIR}/shields/head-version" 2>/dev/null || true
mkdir "${SELF_DIR}/shields/head-version/$1" 2>/dev/null || true
cat - << EOS > "${SELF_DIR}/shields/head-version/$1/$2-version.json"
{
  "schemaVersion": 1,
  "label": "$1: $2",
  "message": "$3",
  "color": "$4"
}
EOS
}

function status_page {
    dateTime=$(date +'%Y-%m-%d %H:%M')
    echo $dateTime, $2 >> "${SELF_DIR}/logs/$1_report.log"
}

function write_halth {
    shields "$1" "$2" "$5" "$4"
    status_page "$1__$2" "$3"
}

function run_wandbox {
    wandbox -l "$1" -c "$2" version
}
function status {
    if run_wandbox "$1" "$2" | tee log.txt; then
        VERSION=$(sed -E "s/[ ]*https?:\/\/[a-zA-Z0-9/:%#\$&\?\(\)~\.=\+\-]+[ ]*//g" log.txt)
        write_halth "$1" "$2" succeeded blue "${VERSION}"
    else
        write_halth "$1" "$2" failed red failed
        cat log.txt
    fi
    rm -f log.txt
}
function versions {
    if [ -z "${LANGUAGE}" ]; then
        wandbox -c "*head*" ${WANDBOX_OPTIONS} -V versions
    else
        wandbox -l "${LANGUAGE}" -c "*head*"  ${WANDBOX_OPTIONS} -V versions
    fi
}

while IFS= read -a line ; do {
    LANG=${line%:*}
    COMP=${line#*: }
    # echo $line
    echo $LANG, $COMP
    status "$LANG" "$COMP"
};
done < <(versions)
unset line;
