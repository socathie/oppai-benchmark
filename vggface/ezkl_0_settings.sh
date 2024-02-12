for i in {1..25}
do
    cd model_$i
    ezkl gen-settings -M model.onnx
    ezkl calibrate-settings -M model.onnx -D ../ezkl_input.json --target resources
    cd ..
done