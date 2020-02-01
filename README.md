<img src="https://ma.issp.u-tokyo.ac.jp/wp-content/themes/materiapps/images/materiapps.svg" width=150>

# MateriApps Debian Package: Quantum ESPRESSO

### Quantum ESPRESSO: Electronic-Structure and Ab-Initio Molecular Dynamics Suite

Quantum ESPRESSO (formerly known as PWscf) is an integrated suite of computer codes for electronic-structure calculations and materials modeling at the
nanoscale. It is based on density-functional theory, plane waves, and  pseudopotentials (both norm-conserving, ultrasoft, and PAW).

### Version

* 6.5.0-1 (1 Feb 2020)
 
### Provided packages

* quantum-espresso
* quantum-espresso-data - limited set of pseudo-potentials and example files

### Target distributions and architectures

* Debian stretch (amd64, i386)
* Debian jessie (amd64, i386)
* Debian wheezy (amd64, i386)
* Ubuntu Xenial (amd64)
* Ubuntu Bionic (amd64)

### For users

* How to install Quantum ESPRESSO

  1. Add MateriApps LIVE! apt repository to Debian [[English](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian-en)][[日本語](https://github.com/cmsi/MateriAppsLive/wiki/UsingMateriAppsInDebian)]

  2. Install Quantum ESPRESSO runtime and data files

     ```
     suto apt-get install quantum-espresso quantum-espresso-data
     ```

### For developers

* How to prepare original source tarball

  ```
  VERSION=6.5
  wget https://github.com/QEF/q-e/releases/download/qe-$VERSION/qe-$VERSION-ReleasePack.tgz
  tar zxvf qe-$VERSION-ReleasePack.tgz
  mv -f qe-$VERSION espresso_$VERSION
  tar zcvf espresso_$VERSION.orig.tar.gz espresso_$VERSION
  rm -rf qe-$VERSION-*.tar.gz espresso_$VERSION
  ```

### Links
  
* [MateriApps LIVE! Home Page](http://cmsi.github.io/MateriAppsLive/)
* [MateriApps LIVE! Forum](https://github.com/cmsi/MateriAppsLive-forum/wiki) (Users Forum)
* [MateriApps LIVE! Wiki](https://github.com/cmsi/MateriAppsLive/wiki) (Documents and FAQ)
* [MateriApps LIVE!](https://ma.issp.u-tokyo.ac.jp/en/app/275) on MateriApps
