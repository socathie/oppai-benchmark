# compile circuit.circom in all model_{1..7} directories

for i in {1..7}
do
    cd model_$i
    circom circuit.circom --r1cs --wasm
    cd ..
done