cd circuits/circuits
sed '$d' crop.circom > crop_benchmark.circom
echo "component main {public [in1, in2]} = Crop($1, $2, $3, $4, $5, $6);" >> crop_benchmark.circom
circom crop_benchmark.circom --r1cs --sym --c --prime vesta --output ../dist/zkSnarkBuild
cd ../dist/zkSnarkBuild/crop_benchmark_cpp && make