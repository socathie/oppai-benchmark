for folder in {"spatial_transformer","spatial_transformer_2","spatial_transformer_4","spatial_transformer_6"}
do
    cd $folder
    ezkl compile-circuit -M model.onnx -S settings.json --compiled-circuit model.ezkl
    cd ..
done