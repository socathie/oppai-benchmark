Make sure you are using [zkGo](https://github.com/ethstorage/go/tree/zkGo).

## Build

```bash
zkgo build -o baseline.wasm baseline.go
```

## Examples

Dry-run with [zkWasm](https://github.com/DelphinusLab/zkWasm):
```bash
RUST_LOG=info delphinus-cli --function zkmain --output ./output --wasm baseline.wasm dry-run
```