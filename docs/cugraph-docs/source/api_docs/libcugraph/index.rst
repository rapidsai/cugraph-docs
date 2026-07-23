libcuGraph API
==============

``libcugraph`` is the native GPU-accelerated graph analytics implementation.
Its public interfaces are split by language and intended level of abstraction:

* ``libcugraph_c`` provides a stable C ABI used by language bindings.
* The C++ API provides graph types, algorithms, construction, sampling, and
  utility functions.
* The primitives API provides lower-level C++ building blocks for composing
  graph operations.
* ``libcugraph_etl`` provides tabular vertex-renumbering functionality.

.. toctree::
   :maxdepth: 3
   :caption: libcuGraph interfaces

   ../cugraph_c/index
   ../cugraph_cpp/index
   ../cugraph_prims/index
   ../cugraph_etl/index
