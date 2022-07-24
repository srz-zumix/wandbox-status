#!/bin/bash

set -euo pipefail

SELF_DIR=$(cd $(dirname $0); pwd)
WANDBOX_OPTIONS=
FORCE_UPDATE=false

while getopts fh OPT
do
    case $OPT in
        f) FORCE_UPDATE=true ;;
        h) usage_exit ;;
        *) usage_exit ;;
    esac
done

HOUR=0
MIN=0

while IFS= read -r -a line ; do {
    LANG="${line}"
    echo "${LANG}"
    TARGET_FILE="${SELF_DIR}/../workflows/${LANG}.yml"
    if "${FORCE_UPDATE}"; then
        if [ -f "${TARGET_FILE}" ]; then
            rm "${TARGET_FILE}"
        fi
    fi
    HOUR=$(echo "($HOUR + 1) % 12" | bc)
    HOUR2=$(echo "($HOUR + 12) % 24" | bc)
    HOURS="${HOUR},${HOUR2}"
    if [ -f "${TARGET_FILE}" ]; then
        MIN_HOUR=$(grep -o "cron:.*" < "${TARGET_FILE}" | head -1 | grep -oE "[0-9,-]+\s[0-9,-]+")
        # echo "${MIN_HOUR}"
        MINS="${MIN_HOUR% *}"
        HOURS="${MIN_HOUR#* }"
        # HOUR="${HOURS%,*}"
    else
        MIN=$(echo "($MIN + 18) % 60" | bc)
        MINS="${MIN}"
    fi
    sed -e "s/TEMPLATE_LANGUAGE/${LANG}/g" -e "s/TEMPLATE_HOUR/${HOURS}/g" -e "s/TEMPLATE_MIN/${MINS}/g" "${SELF_DIR}/docs-template.yml" > "${TARGET_FILE}"
};
# shellcheck disable=SC2086
done < <(wandbox ${WANDBOX_OPTIONS} -V lang)
unset line;
