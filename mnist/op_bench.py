import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
os.environ['CUDA_VISIBLE_DEVICES'] = ''

import tensorflow as tf
import numpy as np

model = tf.keras.models.load_model(f'op_model.h5')

# create random array based on model input shape
input_shape = model.layers[0].input.shape[1:]

# create random input
input_data = np.random.rand(1, *input_shape)

# run the model
model.predict(input_data)