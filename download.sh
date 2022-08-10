#!/bin/sh

VERSION=$(head -1 debian/changelog | sed 's/1://g' | cut -d ' ' -f 2 | sed 's/[()]//g')
VERSION_BASE=$(echo ${VERSION} | cut -d '-' -f 1)

if [ -f espresso_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget https://github.com/QEF/q-e/releases/download/qe-$VERSION_BASE/qe-$VERSION_BASE-ReleasePack.tgz
tar zxvf qe-$VERSION_BASE-ReleasePack.tgz
mv -f qe-$VERSION_BASE espresso-$VERSION_BASE
tar zcvf espresso_$VERSION_BASE.orig.tar.gz espresso-$VERSION_BASE
rm -rf espresso-$VERSION_BASE qe-$VERSION_BASE-ReleasePack.tgz

