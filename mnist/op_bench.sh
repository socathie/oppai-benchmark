mkdir -p bench

for i in {1..6}
do
    cd model_$i
    /usr/bin/time -o ../bench/opml_bench_$i.out -v python ../op_bench.py
    cd ..
done