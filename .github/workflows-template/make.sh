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

HOUR=0
MIN=0

while IFS= read -a line ; do {
    LANG=${line}
    HOUR=`echo "($HOUR + 1) % 12" | bc`
    HOUR2=`echo "($HOUR + 12) % 24" | bc`
    MIN=`echo "($MIN + 18) % 60" | bc`
    echo ${LANG}
    sed -e "s/TEMPLATE_LANGUAGE/${LANG}/g" -e "s/TEMPLATE_HOUR/${HOUR},${HOUR2}/g" -e "s/TEMPLATE_MIN/${MIN}/g" "${SELF_DIR}/docs-template.yml" > "${SELF_DIR}/../workflows/${LANG}.yml"
};
done < <(wandbox ${WANDBOX_OPTIONS} -V lang)
unset line;
