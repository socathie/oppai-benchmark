mkdir -p bench

for folder in {"spatial_transformer","spatial_transformer_2","spatial_transformer_4","spatial_transformer_6"}
do
    cd $folder
    /usr/bin/time -o ../bench/ezkl_bench_$i.out -v ezkl prove -M model.ezkl --witness witness.json --pk-path=pk.key --proof-path=model.proof 
    cd ..
done