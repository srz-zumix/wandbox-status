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

function write_halth {
    ALL_FILEPATH_="${SELF_DIR}/tmp/${1// /_}_versions_report.csv"
    ALL_FILEPATH="${ALL_FILEPATH_//#/Sharp}"
    KEY="$1__$2"
    LOG_FILEPATH_="${SELF_DIR}/logs/${KEY// /_}_report.csv"
    LOG_FILEPATH="${LOG_FILEPATH_//#/Sharp}"
    echo "--- $2" >> "${ALL_FILEPATH}"
    cat "${LOG_FILEPATH}" >> "${ALL_FILEPATH}"
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
    write_halth "$LANG" "$COMP"
};
done < <(versions)
unset line;

cp -f ${SELF_DIR}/tmp/* "${SELF_DIR}/logs/"
rm -rf "${SELF_DIR}/tmp"
