for i in {1..7}
do
    cd model_$i
    ezkl gen-settings -M model.onnx --input-visibility public  --param-visibility private
    ezkl calibrate-settings -M model.onnx -D ../ezkl_input.json --target resources
    cd ..
done