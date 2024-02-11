for i in {1..7}
do
    cd model_$i
    ezkl get-srs -S settings.json
    cd ..
done