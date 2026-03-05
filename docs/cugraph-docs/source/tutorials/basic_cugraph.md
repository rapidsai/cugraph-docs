# Getting started with cuGraph

## Required hardware/software

cuGraph is part of [RAPIDS](https://docs.rapids.ai/user-guide/) and the system requirements can be found [here]( https://docs.rapids.ai/platform-support/ )
 

## Installation
The latest RAPIDS System Requirements documentation for UBUNTU is located [here](https://docs.rapids.ai/install/).

* In windows you must install [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install) and then follow the directions [here](https://docs.rapids.ai/install/#wsl2)


To build from source, check each RAPIDS GitHub README for set up and build instructions. Further links are provided in the [selector tool](https://docs.rapids.ai/install#selector). If additional help is needed reach out on our [Slack Channel](https://rapids-goai.slack.com/archives/C5E06F4DC).

## CuGraph Using NetworkX Code
While the steps above are required to use the full suite of cuGraph graph analytics, cuGraph is now supported as a NetworkX backend using [nx-cugraph](https://docs.rapids.ai/api/cugraph/nightly/nx_cugraph/nx_cugraph/).
Nx-cugraph offers those with existing NetworkX code, a **zero code change** option with a growing list of supported algorithms.


## Cugraph API Examples


[The cuGraph notebook repository](https://github.com/rapidsai/cugraph/blob/main/notebooks/README.md) has many examples of loading graph data and running algorithms in Jupyter notebooks. The [cuGraph test code](https://github.com/rapidsai/cugraph/tree/main/python/cugraph/cugraph/tests) gives examples of python scripts settng up and calling cuGraph algorithms. A simple example of [testing the degree centrality algorithm](https://github.com/rapidsai/cugraph/blob/main/python/cugraph/cugraph/tests/centrality/test_degree_centrality.py) is a good place to start. Some of these examples show [multi-GPU tests/examples with larger data sets](https://github.com/rapidsai/cugraph/blob/main/python/cugraph/cugraph/tests/centrality/test_degree_centrality_mg.py) as well.
