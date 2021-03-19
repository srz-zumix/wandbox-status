#!/bin/bash

SELF_DIR=$(cd $(dirname $0); pwd)
WANDBOX_OPTIONS=

while getopts h OPT
do
    case $OPT in
        h) usage_exit ;;
        *) usage_exit ;;
    esac
done

while IFS= read -a line ; do {
    LANG=${line}
    HOUR=$(($RANDOM % 24))
    echo ${LANG}
    sed -e "s/TEMPLATE_LANGUAGE/${LANG}/g" -e "s/TEMPLATE_HOUR/${HOUR}/g" ./docs-template.yml > "../workflows/${LANG}.yml"
};
done < <(wandbox ${WANDBOX_OPTIONS} -V lang)
unset line;
