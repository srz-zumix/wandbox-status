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

function write_permlinks {
    ALL_FILEPATH="${SELF_DIR}/tmp/permlinks.csv"
    KEY="$1__$2"
    LOG_FILEPATH_="${SELF_DIR}/permlinks/${KEY// /_}_permlink.txt"
    LOG_FILEPATH="${LOG_FILEPATH_//#/Sharp}"
    PERMLINK=$(cat "${LOG_FILEPATH}")
    echo "$1, $2, ${PERMLINK}" >> "${ALL_FILEPATH}"
}

function versions {
    if [ -z "${LANGUAGE}" ]; then
        wandbox ${WANDBOX_OPTIONS} -V versions
    else
        wandbox -l "${LANGUAGE}" ${WANDBOX_OPTIONS} -V versions
    fi
}

rm -rf "${SELF_DIR}/tmp"
mkdir "${SELF_DIR}/tmp"

while IFS= read -a line ; do {
    LANG=${line%:*}
    COMP=${line#*: }
    # echo $line
    echo $LANG, $COMP
    write_permlinks "$LANG" "$COMP"
};
done < <(versions)
unset line;

cp -f ${SELF_DIR}/tmp/* "${SELF_DIR}/permlinks/"
rm -rf "${SELF_DIR}/tmp"
