# compile circuit.circom in all model_{1..7} directories

# before compiling, replace "component main = Model();" with "component main {public [in]} = Model();"
for i in {1..7}
do
    cd model_$i
    sed -i 's/component main = Model();/component main {public [in]} = Model();/g' circuit.circom
    circom circuit.circom --r1cs --wasm
    cd ..
done