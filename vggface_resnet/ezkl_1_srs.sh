for i in {1,2,3,4,175}
do
    cd model_$i
    ezkl get-srs -S settings.json
    cd ..
done