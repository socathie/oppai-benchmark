for folder in {"spatial_transformer","spatial_transformer_2","spatial_transformer_4","spatial_transformer_6"}
do
    cd $folder
    ezkl gen-settings -M model.onnx --input-visibility public  --param-visibility private
    cd ..
done

ezkl gen-settings -M unet.onnx --input-visibility public  --param-visibility private