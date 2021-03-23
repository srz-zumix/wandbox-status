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

function run_wandbox {
    wandbox -l "$1" -c "$2" version
}
function status {
    if run_wandbox "$1" "$2" | tee log.txt; then
        VERSION=$(sed "s%http(s|)://\S*%%g" log.txt)
        shields "$1" "$2" "${VERSION}" blue
    else
        shields "$1" "$2" failed red
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
