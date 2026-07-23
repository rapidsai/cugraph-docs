# WholeGraph overview

WholeGraph supplies distributed storage and communication building blocks for
large-scale graph neural network workloads. It lets each GPU process work with
a logical tensor or embedding even when the backing data is partitioned across
GPUs or nodes.

WholeGraph has two public API layers:

- **pylibwholegraph** provides the Python and PyTorch interfaces. It includes
  environment initialization, communicator management, distributed tensors,
  embeddings, graph storage, sampling operations, and distributed-launch
  helpers.
- **libwholegraph** provides the native C/CUDA interfaces used by
  `pylibwholegraph` and native applications. It owns the memory, communication,
  tensor, embedding, and graph-operation implementations.

Both components are maintained in the
[cuGraph-GNN repository](https://github.com/rapidsai/cugraph-gnn).

## Relationship to cuGraph-PyG

cuGraph-PyG implements PyTorch Geometric storage, loader, and sampler
interfaces. It can use WholeGraph for distributed feature and graph storage,
while cuGraph and pylibcugraph provide GPU graph construction and sampling
operations.

## Core concepts

- A **WholeMemory communicator** defines the ranks that collectively own and
  access a WholeMemory allocation.
- A **WholeMemory handle** represents storage partitioned across those ranks.
- A **WholeMemory tensor** adds shape, stride, type, and slicing metadata.
- A **WholeMemory embedding** adds optional caching and sparse optimizers for
  large embedding tables.
- Graph operations provide sampling and CSR utilities over WholeMemory-backed
  graph structures.

See [WholeMemory concepts](wholememory_intro.md) for the memory modes and
operations, and the [WholeGraph API reference](../../api_docs/wholegraph/index.rst)
for the complete 26.10 interfaces.
