# oppai-models

## Setup


```bash
pip install -r requirements.txt # pip should resolve versions of packages

# setup keras2circom
git submodule update --init --recursive
cd keras2circom
bash setup-circom.sh
npm install
cd ..

# (optional) dependencies for visualization
conda install graphviz # or any other way to install graphviz on your system
```

