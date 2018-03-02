# ma-espresso

Debian Package for Quantum ESPRESSO

## How to prepare source files for quantum-espresso package

        VERSION=6.2.1
        DOWNLOAD_DIR="247/1132"
        EXAMPLES_DOWNLOAD_DIR="247/1128"
        TEST_SUITE_DOWNLOAD_DIR="247/1129"
        cd $HOME/vagrant/data/src
        wget http://qe-forge.org/gf/download/frsrelease/$DOWNLOAD_DIR/qe-$VERSION.tar.gz
        wget http://qe-forge.org/gf/download/frsrelease/$EXAMPLES_DOWNLOAD_DIR/qe-$VERSION-examples.tar.gz
        wget http://qe-forge.org/gf/download/frsrelease/$TEST_SUITE_DOWNLOAD_DIR/qe-$VERSION-test-suite.tar.gz
        rm -rf qe-$VERSION espresso_$VERSION
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
