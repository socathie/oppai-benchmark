for i in {1..7}
do
    cd model_$i
    ezkl setup -M model.ezkl --vk-path=vk.key --pk-path=pk.key
    cd ..
done