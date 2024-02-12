for i in {1..7}
do
    cd model_$i/circuit_js
    /usr/bin/time -o ../bench/circom_bench_$i.out -v snarkjs groth16 prove circuit_final.zkey witness.wtns proof.json public.json
    cd ../..
done