#!/bin/bash

SELF_DIR=$(cd $(dirname $0); pwd)
WANDBOX_OPTIONS=

while getopts l:c:h OPT
do
    case $OPT in
        l) WANDBOX_OPTIONS+="-l $OPTARG";;
        c) WANDBOX_OPTIONS+="-c $OPTARG";;
        h) usage_exit ;;
        *) usage_exit ;;
    esac
done

function shields {
mkdir ${SELF_DIR}/shields/$1 2>/dev/null || true
cat - << EOS > ${SELF_DIR}/shields/$1/$2.json
{
  "schemaVersion": 1,
  "label": "$1: $2",
  "message": "$3",
  "color": "$4"
}
EOS
}

function status {
    if wandbox -l $1 -c $2 run-template | grep Hello; then
        shields $1 $2 succeeded green
    else
        shields $1 $2 failed red
    fi
}

while IFS= read -a line ; do {
    LANG=${line%:*}
    COMP=${line#*: }
    # echo $line
    echo $LANG, $COMP
    status $LANG $COMP
};
done < <(wandbox ${WANDBOX_OPTIONS} -V versions)
unset line;
