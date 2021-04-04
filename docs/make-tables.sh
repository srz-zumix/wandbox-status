#!/bin/bash

SELF_DIR=$(cd $(dirname $0); pwd)

while getopts h OPT
do
    case $OPT in
        h) usage_exit ;;
        *) usage_exit ;;
    esac
done

function langs {
    wandbox -V lang
}

while IFS= read -a line ; do {
    LANG=${line}
    echo ${LANG}
    ${SELF_DIR}/make-md-table.sh -l "${LANG}" > "${SELF_DIR}/tables/${LANG}.md"
};
done < <(langs)
unset line;
