for i in {1..7}
do
    cd model_$i
    ezkl gen-witness -D ../ezkl_input.json -M model.ezkl
    cd ..
done