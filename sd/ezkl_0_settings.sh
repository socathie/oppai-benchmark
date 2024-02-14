for folder in {"spatial_transformer","spatial_transformer_2","spatial_transformer_4","spatial_transformer_6"}
do
    cd $folder
    ezkl gen-settings -M model.onnx --input-visibility public  --param-visibility private
    ezkl calibrate-settings -M model.onnx -D input.json --target resources
    cd ..
done