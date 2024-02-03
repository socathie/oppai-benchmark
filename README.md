# oppai-models

## Setup


```bash
# setup keras2circom
git submodule update --init --recursive
cd keras2circom
pip install -r requirements.txt
bash setup-circom.sh
npm install
cd ..

# other dependencies
pip install tf2onnx ezkl git+https://github.com/yaledhlab/vggface.git

# (optional) dependencies for visualization
pip install pydot
conda install graphviz # or any other way to install graphviz on your system
```

