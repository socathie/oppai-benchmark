for i in {1..7}
do
    cd model_$i
    ezkl gen-settings -M model.onnx
    cd ..
done