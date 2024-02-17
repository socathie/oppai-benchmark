import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
os.environ['CUDA_VISIBLE_DEVICES'] = ''

import tensorflow as tf

# iterate over the layers and export models from current to last layer 
model = tf.keras.models.load_model(f'model_7/model.h5')

for i in range(2,8):
    model_i = tf.keras.Model(inputs=model.layers[i].input, outputs=model.output, name=f"model_{i}")
    model_i.save(f"model_{i-1}/op_model.h5")