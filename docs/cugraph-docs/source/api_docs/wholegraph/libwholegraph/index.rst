libwholegraph API
=================

``libwholegraph`` is WholeGraph's native C/CUDA library. This reference is
generated from every public header in ``cpp/include/wholememory`` so it stays
synchronized with the 26.10 nightly library.

Initialization, communicators, and memory
-----------------------------------------

.. doxygenfile:: wholememory.h
   :project: libwholegraph

Tensor descriptions and handles
-------------------------------

.. doxygenfile:: tensor_description.h
   :project: libwholegraph

.. doxygenfile:: wholememory_tensor.h
   :project: libwholegraph

.. doxygenfile:: global_reference.h
   :project: libwholegraph

Tensor and graph operations
---------------------------

.. doxygenfile:: wholememory_op.h
   :project: libwholegraph

.. doxygenfile:: graph_op.h
   :project: libwholegraph

.. doxygenfile:: wholegraph_op.h
   :project: libwholegraph

Embeddings
----------

.. doxygenfile:: embedding.h
   :project: libwholegraph

Environment callbacks
---------------------

.. doxygenfile:: env_func_ptrs.h
   :project: libwholegraph
