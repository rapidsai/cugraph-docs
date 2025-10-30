# Installing nx-cugraph

This guide describes how to install ``nx-cugraph`` and use it in your workflows.


## System Requirements

`nx-cugraph` requires the following:

 - **Volta architecture or later NVIDIA GPU, with [compute capability](https://developer.nvidia.com/cuda-gpus) 7.0+**
 - **[CUDA](https://docs.nvidia.com/cuda/index.html) 12.2+**
 - **Python >= 3.10**
 - **[NetworkX](https://networkx.org/documentation/stable/install.html#) >= 3.2 (version 3.4 or higher recommended)**

More details about system requirements can be found in the [RAPIDS System Requirements Documentation](https://docs.rapids.ai/install#system-req).

## Installing Packages

Read the [RAPIDS Quick Start Guide](https://docs.rapids.ai/install) to learn more about installing all RAPIDS libraries.

`nx-cugraph` can be installed using conda or pip. It is included in the RAPIDS metapackage, or can be installed separately.

### Conda
**Nightly version**
```bash
conda install -c rapidsai-nightly -c conda-forge -c nvidia nx-cugraph
```

**Stable version**
```bash
conda install -c rapidsai -c conda-forge -c nvidia nx-cugraph
```

### pip

**Nightly version**

```bash
# CUDA 13
pip install nx-cugraph-cu13 --extra-index-url https://pypi.anaconda.org/rapidsai-wheels-nightly/simple

# CUDA 12
pip install nx-cugraph-cu12 --extra-index-url https://pypi.anaconda.org/rapidsai-wheels-nightly/simple
```

**Stable version**

```bash
# CUDA 13
pip install nx-cugraph-cu13 --extra-index-url https://pypi.nvidia.com

# CUDA 12
pip install nx-cugraph-cu12 --extra-index-url https://pypi.nvidia.com
```

<div style="border: 1px solid #ccc; background-color: #f9f9f9; padding: 10px; border-radius: 5px;">

</div>
