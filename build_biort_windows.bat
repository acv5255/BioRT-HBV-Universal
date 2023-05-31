mkdir build
cd build
cmake configure ..
cmake --build .  -j 8 --
cd ..
move build\src\Debug\biort.exe .
echo "Finished building BioRT-HBV"