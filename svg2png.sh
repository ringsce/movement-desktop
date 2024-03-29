#!/bin/sh

SVGCONVERT=

ICONTEST=`echo ${3} | grep "icon$"`
if [ ! -z "${ICONTEST}" ]; then
    exit 0
fi

ICONFILE=`basename ${3}`
ICONNAME=`echo ${ICONFILE} | sed -e "s/.svg//"`
if test `basename $SVGCONVERT` = "rsvg"; then
    OPTIONS="-w ${1} -h ${1}"
else
    OPTIONS="${1} ${1}"
fi

echo "${SVGCONVERT} ${OPTIONS} ${3} ${2}/${ICONNAME}.png"
${SVGCONVERT} ${OPTIONS} ${3} ${2}/${ICONNAME}.png

