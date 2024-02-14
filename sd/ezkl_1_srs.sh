for folder in {"spatial_transformer","spatial_transformer_2","spatial_transformer_4","spatial_transformer_6"}
do
    cd $folder
    ezkl get-srs -S settings.json
    cd ..
done