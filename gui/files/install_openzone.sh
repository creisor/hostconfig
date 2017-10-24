#!/bin/bash

if [ "x$1" = "x" ]; then
  echo "Error: must include username argument"
  exit 1
fi

OPENZONE_VER='1.2.5'
FILENAME="111343-OpenZone-${OPENZONE_VER}.tar.xz"
OPENZONE_URL="https://dl.opendesktop.org/api/files/download/id/1462316428/${FILENAME}"

pushd /tmp > /dev/null 2>&1
curl -s -OLk ${OPENZONE_URL}
tar xJf ${FILENAME} 
cd OpenZone
find . -type f -name "*.xz" -exec tar xJf {} \;
find . -type d -name "OpenZone*" -exec cp -a {} /home/$1/.icons/ \;
popd > /dev/null 2>&1
