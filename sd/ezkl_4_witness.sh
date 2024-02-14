for folder in {"spatial_transformer","spatial_transformer_2","spatial_transformer_4","spatial_transformer_6"}
do
    cd $folder
    ezkl gen-witness -D ../ezkl_input.json -M model.ezkl
    cd ..
done