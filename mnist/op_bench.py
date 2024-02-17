import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
os.environ['CUDA_VISIBLE_DEVICES'] = ''

import tensorflow as tf
import numpy as np

for i in range(1,7):
    model = tf.keras.models.load_model(f'model_{i}/op_model.h5')

    # create random array based on model input shape
    input_shape = model.layers[0].input.shape[1:]

    # create random input
    input_data = np.random.rand(1, *input_shape)

    # run the model and time it
    import timeit
    time = timeit.timeit(lambda: model.predict(input_data, verbose=False), number=100)
    print(f"Time taken to run the op model {i}:", time/100)