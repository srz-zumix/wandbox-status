#!/bin/bash

SELF_DIR=$(cd $(dirname $0); pwd)
WANDBOX_OPTIONS=
LANGUAGE=
FORCE=0

while getopts l:c:fh OPT
do
    case $OPT in
        l) LANGUAGE="$OPTARG";;
        c) WANDBOX_OPTIONS+="-c $OPTARG";;
        f) FORCE=1;;
        h) usage_exit ;;
        *) usage_exit ;;
    esac
done

function versions {
    wandbox -l "$1" ${WANDBOX_OPTIONS} versions
}

function run_wandbox {
    if [ -f "${SELF_DIR}/../templates/$1/template.txt" ]; then
        wandbox -s -l "$1" -c "$2" run "${SELF_DIR}/../templates/$1/template.txt"
    else
        wandbox -s -l "$1" -c "$2" run-template
    fi
}

function update_compiler_permlinks {
    echo $2
    FILEPATH_="${SELF_DIR}/permlinks/${1// /_}__${2// /_}_permlink.txt"
    FILEPATH="${FILEPATH_//#/Sharp}"
    if [ ! -f "${FILEPATH}" ] || [ "${FORCE}" != "0" ]; then
        PERMLINK_LINE=$(run_wandbox "$1" "$2" | grep "permlink:" | tail -1)
        PERMLINK=${PERMLINK_LINE#*: }
        echo "https://wandbox.org/permlink/${PERMLINK}" > ${FILEPATH}
        echo ${FILEPATH}
    fi
}

function update_lang_permlinks {
    echo $1
    while IFS= read -a line ; do {
        update_compiler_permlinks "$1" "${line}"
    };
    done < <(versions "$1")
}

function update_permlinks {
    wandbox lang > "${SELF_DIR}/lang.txt"
    if [ -z "${LANGUAGE}" ]; then
        while read line; do
            update_lang_permlinks "${line}"
        done <"${SELF_DIR}/lang.txt"
        unset line;
    else
        update_lang_permlinks "${LANGUAGE}"
    fi
}

if [ ! -d "${SELF_DIR}/permlinks" ]; then
    mkdir "${SELF_DIR}/permlinks"
fi
update_permlinks
