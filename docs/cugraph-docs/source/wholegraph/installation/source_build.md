# Building from Source

The following instructions are for users wishing to build wholegraph from source code. These instructions are tested on supported distributions of Linux,CUDA,
and Python - See [RAPIDS Getting Started](https://rapids.ai/start.html) for a list of supported environments.
Other operating systems _might be_ compatible, but are not currently tested.

The wholegraph package includes both a C/C++ CUDA portion and a python portion. Both libraries need to be installed in order for cuGraph to operate correctly.
The C/C++ CUDA library is `libwholegraph` and the python library is `pylibwholegraph`.

## Prerequisites

__Compiler__:
* `gcc`         version 11.0+
* `nvcc`        version 11.0+
* `cmake`       version 3.26.4+

__CUDA__:
* 12.0+
* Volta architecture or better

You can obtain CUDA from [https://developer.nvidia.com/cuda-downloads](https://developer.nvidia.com/cuda-downloads).

__Other Packages__:
* ninja
* nccl
* cython
* setuputils3
* scikit-learn
* scikit-build-core
* nanobind>=0.2.0

## Building gnn
To install gnn from source, ensure the dependencies are met.

### Clone Repo and Configure Conda Environment
__GIT clone a version of the repository__

  ```bash
  # Set the location to wholegraph in an environment variable WHOLEGRAPH_HOME
  export WHOLEGRAPH_HOME=$(pwd)/wholegraph

  # Download the wholegraph repo - if you have a forked version, use that path here instead
  git clone https://github.com/rapidsai/cugraph-gnn.git $CUGRAPH_GNN_HOME

  cd $CUGRAPH_GNN_HOME
  ```

__Create the conda development environment__

```bash
# create the conda environment (assuming in base `wholegraph` directory)

# for CUDA 12.x
conda env create --name cugraph_gnn_dev --file conda/environments/all_cuda-129_arch-x86_64.yaml

# activate the environment
conda activate cugraph_gnn_dev

# to deactivate an environment
conda deactivate
```

  - The environment can be updated as development includes/changes the dependencies. To do so, run:


```bash

# Where XXX is the CUDA version
conda env update --name wholegraph_dev --file conda/environments/all_cuda-XXX_arch-x86_64.yaml

conda activate cugraph_gnn_dev
```


### Build and Install Using the `build.sh` Script
Using the `build.sh` script make compiling and installing wholegraph a
breeze. To build and install, simply do:

```bash
$ cd $CUGRAPH_GNN_HOME
$ ./build.sh clean
$ ./build.sh libwholegraph
$ ./build.sh pylibwholegraph
```

There are several other options available on the build script for advanced users.
`build.sh` options:
```bash
build.sh [<target> ...] [<flag> ...]
 where <target> is:
   clean                      - remove all existing build artifacts and configuration (start over)
   uninstall                  - uninstall libwholegraph and GNN Python packages from a prior build/install (see also -n)
   cugraph-pyg                - build the cugraph-pyg Python package
   pylibwholegraph            - build the pylibwholegraph Python package
   libwholegraph              - build the libwholegraph library
   tests                      - build the C++ tests
   benchmarks                 - build benchmarks
   all                        - build everything
 and <flag> is:
   -v                         - verbose build mode
   -g                         - build for debug
   -n                         - do not install after a successful build (does not affect Python packages)
   --pydevelop                - install the Python packages in editable mode
   --allgpuarch               - build for all supported GPU architectures
   --enable-nvshmem            - build with nvshmem support (beta).
   --compile-cmd               - only output compile commands (invoke CMake without build)
   --clean                    - clean an individual target (note: to do a complete rebuild, use the clean target described above)
   -h                         - print this text
 default action (no args) is to build and install 'libwholegraph' then 'pylibwholegraph' targets

examples:
$ ./build.sh clean                        # remove prior build artifacts (start over)
$ ./build.sh

# make parallelism options can also be defined: Example build jobs using 4 threads (make -j4)
$ PARALLEL_LEVEL=4 ./build.sh libwholegraph

Note that the libraries will be installed to the location set in `$PREFIX` if set (i.e. `export PREFIX=/install/path`), otherwise to `$CONDA_PREFIX`.
```


## Building each section independently
### Build and Install the C++/CUDA `libwholegraph` Library
CMake depends on the `nvcc` executable being on your path or defined in `$CUDACXX`.

This project uses cmake for building the C/C++ library. To configure cmake, run:

  ```bash
  # Set the location to wholegraph in an environment variable CUGRAPH_GNN_HOME
  export CUGRAPH_GNN_HOME=$(pwd)/cugraph_gnn

  cd $CUGRAPH_GNN_HOME
  cd cpp                                        # enter cpp directory
  mkdir build                                   # create build directory
  cd build                                      # enter the build directory
  cmake .. -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX

  # now build the code
  make -j                                       # "-j" starts multiple threads
  make install                                  # install the libraries
  ```
The default installation locations are `$CMAKE_INSTALL_PREFIX/lib` and `$CMAKE_INSTALL_PREFIX/include/wholegraph` respectively.

### Building and installing the Python package

Build and Install the Python packages to your Python path:

```bash
cd $CUGRAPH_GNN_HOME
cd python
cd pylibwholegraph
python setup.py build_ext --inplace
python setup.py install    # install pylibwholegraph
```

## Run tests

Run either the C++ or the Python tests with datasets

  - **Python tests with datasets**

    ```bash
    cd $CUGRAPH_GNN_HOME
    cd python
    pytest
    ```

  - **C++ stand alone tests**

    From the build directory :

    ```bash
    # Run the tests
    cd $CUGRAPH_GNN_HOME
    cd cpp/build
    gtests/PARALLEL_UTILS_TESTS		# this is an executable file
    ```


Note: This conda installation only applies to Linux and Python versions 3.10, 3.11, 3.12, and 3.13.


## Attribution
Portions adopted from https://github.com/pytorch/pytorch/blob/master/CONTRIBUTING.md
