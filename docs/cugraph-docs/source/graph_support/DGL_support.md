# cugraph_dgl

## Description

[RAPIDS cugraph_dgl](https://github.com/rapidsai/cugraph-gnn/blob/branch-25.02/python/cugraph-dgl/README.md) provides a duck-typed version of the [DGLGraph](https://docs.dgl.ai/api/python/dgl.DGLGraph.html#dgl.DGLGraph) class, which uses cugraph for storing graph structure and node/edge feature data.  Using cugraph as the backend allows DGL users to access a collection of GPU accelerated algorithms for graph analytics, such as centrality computation and community detection.

## Conda

Install and update cugraph-dgl and the required dependencies using the command:

```
conda install mamba -n base -c conda-forge
mamba install cugraph-dgl -c rapidsai-nightly -c rapidsai -c pytorch -c conda-forge -c nvidia -c dglteam
```

## Build from Source

### Create the conda development environment
```
conda env create -n cugraph_dgl_dev --file conda/environments/all_cuda-125_arch-x86_64.yaml
```

### Install  in editable mode
```
pip install -e .
```

### Run tests

```
pytest tests/*
```


## Usage
```diff

from cugraph_dgl.convert import cugraph_storage_from_heterograph
cugraph_g = cugraph_storage_from_heterograph(dgl_g)

sampler = dgl.dataloading.NeighborSampler(
        [15, 10, 5], prefetch_node_feats=['feat'], prefetch_labels=['label'])

train_dataloader = dgl.dataloading.DataLoader(
cugraph_g,
train_idx,
sampler,
device=device,
batch_size=1024,
shuffle=True,
drop_last=False,
num_workers=0)
```

___
Copyright (c) 2023-2025, NVIDIA CORPORATION.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
___
