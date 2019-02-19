<img src="https://ma.issp.u-tokyo.ac.jp/wp-content/themes/materiapps/images/materiapps.svg" width=150>

# MateriApps Debian Package: Quantum ESPRESSO

### Quantum ESPRESSO: Electronic-Structure and Ab-Initio Molecular Dynamics Suite

Quantum ESPRESSO (formerly known as PWscf) is an integrated suite of computer codes for electronic-structure calculations and materials modeling at the
nanoscale. It is based on density-functional theory, plane waves, and  pseudopotentials (both norm-conserving, ultrasoft, and PAW).

### Version

* 6.3 (20 Jun 2018)
 
### Provided packages

* quantum-espresso
* quantum-espresso-data - limited set of pseudo-potentials and example files
* quantum-espresso-test-suite - test suite

### Target distributions and architectures

* Debian stretch (amd64, i386)
* Debian jessie (amd64, i386)
* Debian wheezy (amd64, i386)

### For users

* How to install ALPS Core

  1. Add MateriApps LIVE! apt repository to Debian [[English](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian-en)][[日本語](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian)]

  2. Install Quantum ESPRESSO runtime and data files

     ```
     suto apt-get install quantum-espresso quantum-espresso-data
     ```

### For developers

* How to prepare original source tarball

  ```
  VERSION=x.x.x
  DOWNLOAD_DIR="xxx/xxxx"
  EXAMPLES_DOWNLOAD_DIR="xxx/xxxx"
  TEST_SUITE_DOWNLOAD_DIR="xxx/xxxx"
  wget http://qe-forge.org/gf/download/frsrelease/$DOWNLOAD_DIR/qe-$VERSION.tar.gz
  wget http://qe-forge.org/gf/download/frsrelease/$EXAMPLES_DOWNLOAD_DIR/qe-$VERSION-examples.tar.gz
  wget http://qe-forge.org/gf/download/frsrelease/$TEST_SUITE_DOWNLOAD_DIR/qe-$VERSION-test-suite.tar.gz
  tar zxvf qe-$VERSION.tar.gz
  mv -f qe-$VERSION espresso_$VERSION
  mkdir -p espresso_$VERSION/examples
  tar zxvf qe-$VERSION-examples.tar.gz -C espresso_$VERSION/examples
  tar zxvf qe-$VERSION-test-suite.tar.gz -C espresso_$VERSION
  UPF="Al.pbe-rrkj.UPF Al.pz-vbc.UPF As.pz-bhs.UPF Au.pz-rrkjus_aewfc.UPF Au.rel-pz-kjpaw.UPF CorelUSPBE.RRKJ3.UPF C.pbe-mt_gipaw.UPF C.pbe-n-kjpaw_psl.0.1.UPF C.pbe-rrkjus.UPF C.pbe-van_bm.UPF C.pz-kjpaw.UPF C.pz-rrkjus.UPF C.pz-vbc.UPF C.tpss-mt.UPF Cu.pbe-kjpaw.UPF Cu.pz-d-rrkjus.UPF Fe.pz-nd-rrkjus.UPF Fe.rel-pbe-kjpaw.UPF Ge.pbe-kjpaw.UPF H.blyp-vbc.UPF H.coulomb-ae.UPF H.pbe-kjpaw.UPF H.pbe-rrkjus.UPF H.pz-kjpaw.UPF H.tpss-mt.UPF Ni.pbe-nd-rrkjus.UPF Ni.pz-nd-rrkjus.UPF Ni.rel-pbe-nd-rrkjus.UPF N.pbe-kjpaw.UPF O.blyp-mt.UPF O.pbe-kjpaw.UPF O.pbe-rrkjus.UPF O.pz-kjpaw.UPF O.pz-rrkjus.UPF O.pz-van_ak.UPF Pb.pz-d-van.UPF Pt.rel-pbe-n-rrkjus.UPF Pt.rel-pz-n-rrkjus.UPF Rh.pbe-rrkjus_lb.UPF Rhs.pbe-rrkjus_lb.UPF Si.pz-vbc.UPF Si.rel-pbe-rrkj.UPF Ti.pz-sp-van_ak.UPF"
  for u in $UPF; do
    wget www.quantum-espresso.org/pseudo/1.3/UPF/$u -O espresso_$VERSION/pseudo/$u
  done
  tar zcvf espresso_$VERSION.orig.tar.gz espresso_$VERSION
  rm -rf qe-$VERSION-*.tar.gz espresso_$VERSION
  ```

### Links
  
* [MateriApps LIVE! Home Page](http://cmsi.github.io/MateriAppsLive/)
* [MateriApps LIVE! Forum](https://github.com/cmsi/MateriAppsLive-forum/wiki) (Users Forum)
* [MateriApps LIVE! Wiki](https://github.com/cmsi/MateriAppsLive/wiki) (Documents and FAQ)
* [MateriApps LIVE!](https://ma.issp.u-tokyo.ac.jp/en/app/275) on MateriApps
