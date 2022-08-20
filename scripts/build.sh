#!/bin/bash

if [ -f ./build/CMakeCache.txt ]; then
  echo "2nd or later Build"
  export set CC='ccache /usr/bin/gcc-6' # Except the above
else
  echo "First Time Build"
  export set CC='/usr/bin/gcc-6' # For the first time after create build/
fi
echo "Set CC -->> ${CC} "

cd build && \
    CXX=/usr/bin/g++-6 cmake -DCMAKE_BUILD_TYPE=Release .. && \
    make -j8
cd ../

# When hope to delete ccache
# ccache -C