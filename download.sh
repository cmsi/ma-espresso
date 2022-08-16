#!/bin/sh

VERSION=$(head -1 debian/changelog | sed 's/1://g' | cut -d ' ' -f 2 | sed 's/[()]//g')
VERSION_BASE=$(echo ${VERSION} | cut -d '-' -f 1)

if [ -f espresso_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
rm -f qe-$VERSION_BASE.tar.gz*
curl -L -O https://github.com/QEF/q-e/archive/refs/tags/qe-$VERSION_BASE.tar.gz
tar zxvf qe-$VERSION_BASE.tar.gz
mv -f q-e-qe-$VERSION_BASE espresso-$VERSION_BASE
(cd espresso-$VERSION_BASE/Doc && latexmk -pdf user_guide.tex && latexmk -pdf brillouin_zones.tex && latexmk -pdf constraints_HOWTO.tex && latexmk -pdf plumed_quick_ref.tex && latexmk -c)
tar zcvf espresso_$VERSION_BASE.orig.tar.gz espresso-$VERSION_BASE
rm -rf espresso-$VERSION_BASE qe-$VERSION_BASE.tar.gz
