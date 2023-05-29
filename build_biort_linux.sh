#!/usr/bin/bash

mkdir build && cd build
cmake configure ..
cmake --build . --
cd ..
mv ./build/src/biort .

echo "BioRT-HBV successfully build"