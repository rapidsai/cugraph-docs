# Build WholeGraph from source

WholeGraph is built from the
[cuGraph-GNN repository](https://github.com/rapidsai/cugraph-gnn). The default
build installs both `libwholegraph` and `pylibwholegraph`.

## Prerequisites

Use a Linux system and CUDA version supported by RAPIDS 26.10. The generated
development environment in the repository is the authoritative dependency
list.

```bash
git clone https://github.com/rapidsai/cugraph-gnn.git
cd cugraph-gnn

conda env create \
  --name cugraph_gnn_dev \
  --file conda/environments/all_cuda-133_arch-x86_64.yaml
conda activate cugraph_gnn_dev
```

Choose the generated environment file that matches the desired supported CUDA
and architecture combination when more than one is present.

## Build the native and Python libraries

```bash
./build.sh clean
./build.sh libwholegraph pylibwholegraph
```

The build script installs into `$PREFIX` when it is set, then
`$CONDA_PREFIX`, and otherwise the system prefix. Useful options include:

- `-n` to build without installing;
- `-v` for verbose output;
- `-g` for a debug build;
- `--pydevelop` for an editable Python install;
- `--allgpuarch` to build all supported GPU architectures.

Run `./build.sh --help` for the current complete option list.

## Run tests

Build the C++ test targets with:

```bash
./build.sh tests
```

Run the Python tests from the repository root:

```bash
python -m pytest python/pylibwholegraph
```

See the
[cuGraph-GNN contributing guide](https://github.com/rapidsai/cugraph-gnn/blob/main/CONTRIBUTING.md)
for developer workflow and style requirements.
