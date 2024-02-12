# trusted setup in model_{1..7} directories
for i in {1..7}
do
    cd model_$i
    snarkjs powersoftau prepare phase2 ../powersOfTau28_hez_final_26.ptau pot26_final.ptau -v
    snarkjs groth16 setup circuit.r1cs pot26_final.ptau circuit_0000.zkey
    snarkjs zkey contribute circuit_0000.zkey circuit_final.zkey --name="1st Contributor Name" -v
    cd ..
done