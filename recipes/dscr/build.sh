#!/bin/sh


sed -i -e  "s/\$(CXXFLAGS)/\$(CXXFLAGS) \$(CFLAGS)/g" src/Makefile
sed -i -e "s/-lpthread/-lpthread -lrt/g" Makefile
export CFLAGS="-I${PREFIX}/include -L${PREFIX}/lib"


#set -x -e

export CC=${PREFIX}/bin/gcc
export CXX=${PREFIX}/bin/g++

#export INCLUDE_PATH="${PREFIX}/include"
#export LIBRARY_PATH="${PREFIX}/lib"
#export LD_LIBRARY_PATH="${PREFIX}/lib"
#export BOOST_INCLUDE_DIR=${PREFIX}/include
#export BOOST_LIBRARY_DIR=${PREFIX}/lib
#export LIBS='-lboost_system -lboost_program_options -lboost_filesystem -lboost_timer'

#export CXXFLAGS="-DUSE_BOOST -I${BOOST_INCLUDE_DIR} -L${BOOST_LIBRARY_DIR}"
#export LDFLAGS="-L${BOOST_LIBRARY_DIR} -lboost_filesystem -lboost_system"



make
make install
