WholeGraph
==========

WholeGraph provides distributed memory, tensor, embedding, and graph
operations for large-scale GNN workflows. It is maintained in the
`cuGraph-GNN repository <https://github.com/rapidsai/cugraph-gnn>`_ and is
split into two packages:

* ``pylibwholegraph`` is the Python and PyTorch-facing library.
* ``libwholegraph`` is the native C/CUDA implementation.

cuGraph-PyG can use WholeGraph to store features and graph structures across
multiple GPUs and nodes.

.. toctree::
   :maxdepth: 2
   :caption: WholeGraph documentation

   basics/index
   installation/index
   ../api_docs/wholegraph/index
