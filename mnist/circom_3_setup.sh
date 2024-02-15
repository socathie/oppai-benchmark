# trusted setup in model_{1..7} directories
export NODE_OPTIONS=--max_old_space_size=524288
sudo sysctl -w vm.max_map_count=655300

# model_1 use 24
# others use 25
for i in {1..7}
do
    cd model_$i
    snarkjs groth16 setup circuit.r1cs ../powersOfTau28_hez_final_25.ptau circuit_0000.zkey
    snarkjs zkey contribute circuit_0000.zkey circuit_final.zkey --name="1st Contributor Name" -v
    cd ..
done