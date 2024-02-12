# compute witness in model_{1..7} directories

for i in {1..7}
do
    cd model_$i/circuit_js
    node generate_witness.js circuit.wasm ../merged.json ../witness.wtns
    cd ../..
done