#!/bin/bash

SELF_DIR=$(cd $(dirname $0); pwd)
WANDBOX_OPTIONS=

while getopts l:h OPT
do
    case $OPT in
        l) WANDBOX_OPTIONS+="-l $OPTARG";;
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

function urlencode() {
  local input="${1}"
  local output=""

  ##一文字ずつURL形式に変換
  local i=0
  for (( i=0 ; i<${#input} ; i++ )); do
     local o=""
     local c=${input:$i:1}
     case "$c" in 
        [-_.~a-zA-Z0-9] ) o="${c}" ;;   ##変換せず
        * ) printf -v o '%%%02x' "'$c"  ##URL形式に変換
     esac
     output+=$o
  done

  echo $output
}

# urlencode() {
#     python -c 'import sys, urllib; print urllib.quote(sys.stdin.read()),'
# }

echo "|lang|version|status|"
echo "|:------|:------|:-----|"

while IFS= read -a line ; do {
    LANG=${line%:*}
    COMP=${line#*: }
    PATH=$(urlencode ${LANG})
    COMP_PATH=$(urlencode ${COMP})
    echo "|$LANG|$COMP|![$COMP](https://img.shields.io/endpoint?url=https%3A%2F%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2F$PATH%2F$COMP_PATH.json)|"
};
done < <(wandbox ${WANDBOX_OPTIONS} -c *head -V versions)
unset line;
