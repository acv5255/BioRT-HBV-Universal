#!/usr/bin/bash

mkdir build && cd build
cmake configure ..
cmake --build . -j 8 --
cd ..
mv ./build/src/biort .

echo "BioRT-HBV successfully built"
