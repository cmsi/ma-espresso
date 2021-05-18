#!/bin/sh
. $(dirname $0)/path.sh

if [ -f espresso_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget https://github.com/QEF/q-e/releases/download/qe-$VERSION_BASE.0/qe-$VERSION_BASE-ReleasePack.tgz
tar zxvf qe-$VERSION_BASE-ReleasePack.tgz
mv -f qe-$VERSION_BASE espresso-$VERSION_BASE
tar zcvf espresso-$VERSION_BASE.tar.gz espresso-$VERSION_BASE
rm -rf espresso-$VERSION_BASE qe-$VERSION_BASE-ReleasePack.tgz

