for i in {1,2,3,4,175}
do
    cd model_$i
    ezkl compile-circuit -M model.onnx -S settings.json --compiled-circuit model.ezkl
    cd ..
done