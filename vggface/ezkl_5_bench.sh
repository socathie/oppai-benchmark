for i in {1..25}
do
    cd model_$i
    /usr/bin/time -o ../bench/ezkl_bench_$i.out -v ezkl prove -M model.ezkl --witness witness.json --pk-path=pk.key --proof-path=model.proof 
    cd ..
done