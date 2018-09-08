#!/bin/bash

# TODO: ensure this path is correct for Arch

# ref: https://github.com/sixsixfive/0nyX#manual
prefix=/usr/local

## Base themes: GTK, GTK2, GTK3, Xfce, MATE, Openbox
mkdir /tmp/0nyX && cd /tmp/0nyX
wget https://github.com/sixsixfive/0nyX/archive/master.zip
unzip master.zip
mkdir -p $prefix/share/themes
mv /tmp/0nyX/0nyX-master $prefix/share/themes/0nyX

## Icon theme
mkdir -p $prefix/share/icons
ln -s $prefix/share/themes/0nyX/@extra/icons/0nyX $prefix/share/icons/0nyX

## Albert(app does not support symlinks)
mkdir -p $prefix/share/albert/themes
cp $prefix/share/themes/0nyX/\@extra/appthemes/albert/0nyX/0nyX.qss $prefix/share/albert/themes/0nyX.qss
