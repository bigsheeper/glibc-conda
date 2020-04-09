# show environment
printenv

# build reference -- http://web.yl.is.s.u-tokyo.ac.jp/~tosh/kml/how_to_build_and_use_glibc.html

tar -zxvf glibc-2.27.tar.gz

mkdir build && cd build

#do not need to export $PREFIX, conda has been did this
../glibc-2.27/configure --prefix=$PREFIX

make -j8 && make install
