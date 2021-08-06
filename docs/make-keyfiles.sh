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

function update_keyfile {
    echo $1
    FILEPATH_="${SELF_DIR}/keys/${1// /_}_versions.txt"
    FILEPATH="${FILEPATH_//#/Sharp}"
    rm -f "${FILEPATH}/"
    wandbox -l "$1" ${WANDBOX_OPTIONS} versions > "${FILEPATH}"
}
function update_keyfiles {
    wandbox lang > "${SELF_DIR}/lang.txt"
    if [ -z "${LANGUAGE}" ]; then
        while read line; do
            update_keyfile "${line}"
        done <"${SELF_DIR}/lang.txt"
        unset line;
    else
        update_keyfile "${LANGUAGE}"
    fi
}

if [ ! -d "${SELF_DIR}/keys" ]; then
    mkdir "${SELF_DIR}/keys"
fi
update_keyfiles
