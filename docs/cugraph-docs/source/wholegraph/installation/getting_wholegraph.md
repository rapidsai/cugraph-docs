# Install WholeGraph

WholeGraph 26.10 is distributed as two packages:

- `libwholegraph` contains the native C/CUDA library.
- `pylibwholegraph` contains the Python and PyTorch-facing API and depends on
  `libwholegraph`.

Review the [RAPIDS system requirements](https://docs.rapids.ai/install/#system-req)
before installing. WholeGraph is supported on Linux; Windows users should use
WSL2.

## Conda

Install the Python API and native dependency from the 26.10 nightly channel:

```bash
conda install \
  -c rapidsai-nightly -c conda-forge \
  pylibwholegraph=26.10 cuda-version=13.3
```

Native C/CUDA users can install only `libwholegraph`:

```bash
conda install \
  -c rapidsai-nightly -c conda-forge \
  libwholegraph=26.10 cuda-version=13.3
```

Choose a CUDA version supported by the
[RAPIDS release](https://docs.rapids.ai/install/#system-req) and the installed
NVIDIA driver.

## pip

RAPIDS wheels use a CUDA-major suffix. For CUDA 13, install the 26.10 nightly
Python package with:

```bash
python -m pip install \
  --extra-index-url=https://pypi.nvidia.com \
  --extra-index-url=https://pypi.anaconda.org/rapidsai-wheels-nightly/simple \
  "pylibwholegraph-cu13==26.10.*"
```

Use `pylibwholegraph-cu12` on a supported CUDA 12 configuration. Installing
`pylibwholegraph` also installs the matching `libwholegraph` wheel.

## Verify the installation

```bash
pylibwholegraph_smoke_check
```

Importing the package without starting a distributed environment is also a
useful basic check:

```bash
python -c "import pylibwholegraph; print(pylibwholegraph.__version__)"
```

For a development build, see [Build WholeGraph from source](source_build.md).
