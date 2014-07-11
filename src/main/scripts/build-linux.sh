set -e
cd gmp-6.0.0
GMPDIR=`pwd`
./configure --with-pic --build=$BUILD
make clean
make
cd ../mpfr-3.1.2
MPFRDIR=`pwd`
./configure --with-gmp-include=$GMPDIR --with-gmp-lib=$GMPDIR/.libs/ --with-pic --build=$BUILD
make clean
make
cd ..
