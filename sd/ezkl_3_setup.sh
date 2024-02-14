for folder in {"spatial_transformer","spatial_transformer_2","spatial_transformer_4","spatial_transformer_6"}
do
    cd $folder
    ezkl setup -M model.ezkl --vk-path=vk.key --pk-path=pk.key
    cd ..
done