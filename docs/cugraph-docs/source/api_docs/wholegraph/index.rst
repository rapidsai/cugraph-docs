WholeGraph API
==============

WholeGraph is maintained in the
`cuGraph-GNN repository <https://github.com/rapidsai/cugraph-gnn>`_ and has two
API layers:

* ``pylibwholegraph`` provides Python and PyTorch interfaces for
  initialization, communicators, distributed tensors, embeddings, graph
  storage, sampling, and launch helpers.
* ``libwholegraph`` provides the native C/CUDA API used by
  ``pylibwholegraph`` and other native applications.

.. toctree::
   :maxdepth: 2
   :caption: WholeGraph APIs

   pylibwholegraph/index
   libwholegraph/index
