# Getting Started

This guide describes how to install ``nx-cugraph`` use it in your workflows.


## System Requirements

`nx-cugraph` requires the following:

 - **Volta architecture or later NVIDIA GPU, with [compute capability](https://developer.nvidia.com/cuda-gpus) 7.0+**
 - **[CUDA](https://docs.nvidia.com/cuda/index.html) 11.2, 11.4, 11.5, 11.8, 12.0, 12.2, or 12.5**
 - **Python >= 3.10**
 - **[NetworkX](https://networkx.org/documentation/stable/install.html#) >= 3.0 (version 3.2 or higher recommended)**

More details about system requirements can be found in the [RAPIDS System Requirements Documentation](https://docs.rapids.ai/install#system-req).

## Installing nx-cugraph

Read the [RAPIDS Quick Start Guide](https://docs.rapids.ai/install) to learn more about installing all RAPIDS libraries.
\
`nx-cugraph` can be installed using Conda or pip.

### Conda
##### Nightly version

```bash
conda install -c rapidsai-nightly -c conda-forge -c nvidia nx-cugraph
```

##### Stable version

```bash
conda install -c rapidsai -c conda-forge -c nvidia nx-cugraph
```

### pip

##### Nightly version

```bash
pip install nx-cugraph-cu11 --extra-index-url https://pypi.anaconda.org/rapidsai-wheels-nightly/simple
```

##### Stable version

```bash
pip install nx-cugraph-cu11 --extra-index-url https://pypi.nvidia.com
```

*Notes*:
 - The `pip install` examples above ar efor CUDA 11. To install for CUDA 12, replace `-cu11` with `-cu12`