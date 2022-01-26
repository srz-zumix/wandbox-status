#!/bin/bash

SELF_DIR=$(cd $(dirname $0); pwd)
WANDBOX_OPTIONS=
LANGUAGE=

while getopts l:c:h OPT
do
    case $OPT in
        l) LANGUAGE="$OPTARG";;
        c) WANDBOX_OPTIONS+="-c $OPTARG";;
        h) usage_exit ;;
        *) usage_exit ;;
    esac
done

function shields {
mkdir "${SELF_DIR}/shields/$1" 2>/dev/null || true
cat - << EOS > "${SELF_DIR}/shields/$1/$2.json"
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
    FILEPATH_="${SELF_DIR}/logs/${1// /_}_report.csv"
    FILEPATH="${FILEPATH_//#/Sharp}"
    echo $dateTime, $2 >> "${FILEPATH}"
}

function write_halth {
    shields "$1" "$2" "$3" "$4"
    status_page "$1__$2" "$3"
}

function run_wandbox {
    if [ -f "${SELF_DIR}/../templates/$1/template.txt" ]; then
        wandbox -l "$1" -c "$2" run "${SELF_DIR}/../templates/$1/template.txt"
    else
        # wandbox -l "$1" -c "$2" run-template
        wandbox-status -V -l "$1" -c "$2"
    fi
}
function status_test {
    if run_wandbox "$1" "$2" | tee log.txt | grep "$3"; then
        write_halth "$1" "$2" succeeded green
    else
        write_halth "$1" "$2" failed red
        cat log.txt
    fi
    rm -f log.txt
}
function status {
    case "$1" in
        "OpenSSL") status_test "$1" "$2" "PRIVATE KEY" ;;
        "CPP")     status_test "$1" "$2" "42" ;;
        "R")       status_test "$1" "$2" "All done" ;;
        *)         status_test "$1" "$2" "Hello"
    esac
}
function versions {
    if [ -z "${LANGUAGE}" ]; then
        wandbox ${WANDBOX_OPTIONS} -V versions
    else
        wandbox -l "${LANGUAGE}" ${WANDBOX_OPTIONS} -V versions
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

"${SELF_DIR}/make-keyfiles.sh" $*
