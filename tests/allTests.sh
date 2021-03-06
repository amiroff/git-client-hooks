#!/bin/bash
dir="`dirname "$0"`"
cd "`readlink -f "$dir"`"

HAS_ERROR=0
for i in */*Test.sh; do
    "./$i"
    if [ $? -ne 0 ]; then
        HAS_ERROR=1
    fi
done

if [ $HAS_ERROR -eq 0 ]; then
    echo "all OK"
else
    echo "some ERROR"
fi

exit $HAS_ERROR
