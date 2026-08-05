# WholeMemory concepts

WholeMemory presents storage owned by multiple GPU processes as one logical
allocation. Each process controls one GPU and participates through a
WholeMemory communicator.

## Communicators and backends

A communicator defines the ranks that own an allocation and provides the
communication channel used by collective and remote operations. Communicators
can be split into subgroups, including local-device, local-node, and local
MNNVL groups when the platform supports them.

The 26.10 native API supports NCCL and NVSHMEM distributed backends. Call
`wholememory_communicator_support_type_location` or the corresponding
`pylibwholegraph` methods before assuming a particular memory-type and
location combination is available on a system.

## Memory locations

- **Device** stores the allocation in GPU memory.
- **Host** stores the allocation in pinned host memory.

## Memory types

- **Continuous** maps rank-owned regions into one continuous address space.
  Supported peers can address the allocation with a pointer and offset.
- **Chunked** exposes one mapped chunk per rank. A caller selects the
  appropriate chunk instead of using one global pointer.
- **Distributed** maps only the local rank's region. Remote access uses
  explicit communication such as gather and scatter.
- **Hierarchy** partitions communication into local and cross groups. It is
  intended for multi-node topologies where ranks have faster access within a
  local domain than across domains.

## Partitioning and granularity

WholeMemory partitions an allocation across communicator ranks. A data
granularity can be supplied so one logical record is not split across
partitions. Applications can query rank partition sizes, offsets, local sizes,
and local starting positions through the native API.

## WholeMemory tensors

A WholeMemory tensor associates a storage handle with data type, shape, stride,
and storage-offset metadata. The 26.10 tensor description supports up to eight
dimensions. The first dimension is partitioned across ranks; subtensors retain
access to their root tensor.

Tensors can be created from WholeMemory handles or existing pointers, mapped to
their local region, loaded from files, and stored to per-rank files.

## Operations

- **Gather** reads rows selected by an index tensor.
- **Scatter** writes rows selected by an index tensor.
- **Graph operations** include CSR sampling, CSR self-loop insertion, and
  append-unique processing.
- **Local operations** can directly access the region mapped to the current
  rank.

## WholeMemory embeddings

A WholeMemory embedding is a two-dimensional tensor specialized for embedding
lookups and training. It can use cache policies and sparse optimizers. The
native API exposes SGD, Lazy Adam, RMSProp, and AdaGrad optimizer types.

Some combinations have additional constraints. In 26.10, hierarchy embeddings
do not support NVSHMEM or cache policies, and distributed NVSHMEM embeddings do
not support caching. Use the API's capability checks and raised errors rather
than assuming every combination is valid.
