# run circuit.py circuit.json ../input.json -o .  in each of model_{1..7} directories

for i in {1..7}
do
    # add ../../keras2circom to PYTHONPATH
    export PYTHONPATH=../../keras2circom:$PYTHONPATH
    cd model_$i
    python circuit.py circuit.json ../circom_input.json -o .
    python ../merge_json.py circuit.json ../circom_input.json output.json merged.json
    cd ..
done