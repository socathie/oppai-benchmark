export NODE_OPTIONS=--max_old_space_size=524288
sudo sysctl -w vm.max_map_count=655300

for i in {1..7}
do
    cd model_$i
    /usr/bin/time -o ../bench/circom_bench_$i.out -v snarkjs groth16 prove circuit_final.zkey witness.wtns proof.json public.json
    cd ..
done