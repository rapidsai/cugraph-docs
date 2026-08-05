NVIDIA cuGraph Documentation
============================

.. image:: images/cugraph_logo_2.png
   :width: 600

Overview
--------

NVIDIA cuGraph is an open-source collection of GPU-accelerated graph analytics
libraries. The collection spans high-level Python analytics, graph neural
network (GNN) integrations, and lower-level libraries for applications that
need direct control over graph storage and computation.

Traditional Graph Analytics in Python
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* `cuGraph <https://github.com/rapidsai/cugraph/tree/main/python/cugraph>`_
  provides a NetworkX-like Python API for creating and manipulating graphs and
  running single- and multi-GPU algorithms. See the
  :doc:`cuGraph Python API <api_docs/cugraph/index>`.
* `pylibcugraph <https://github.com/rapidsai/cugraph/tree/main/python/pylibcugraph>`_
  provides lower-level Python bindings to ``libcugraph``. See the
  :doc:`pylibcugraph API <api_docs/plc/pylibcugraph>`.
* `nx-cugraph <https://github.com/rapidsai/nx-cugraph>`_, maintained in the
  nx-cugraph repository, is a NetworkX backend that accelerates supported
  NetworkX algorithms on NVIDIA GPUs without changing application code. See
  the :doc:`nx-cugraph guide <nx_cugraph/index>`.

GNN Libraries
~~~~~~~~~~~~~

The GNN libraries are maintained in the
`cuGraph-GNN repository <https://github.com/rapidsai/cugraph-gnn>`_.

* `cuGraph-PyG <https://github.com/rapidsai/cugraph-gnn/tree/main/python/cugraph-pyg>`_
  integrates cuGraph with PyTorch Geometric and implements its ``GraphStore``,
  ``FeatureStore``, loader, and sampler interfaces. See the
  :doc:`cuGraph-PyG API <api_docs/cugraph-pyg/cugraph_pyg>`.
* :doc:`WholeGraph <wholegraph/index>` provides distributed storage,
  communication, tensor, embedding, and graph operations for large-scale GNN
  workflows. It consists of:

  * `pylibwholegraph <https://github.com/rapidsai/cugraph-gnn/tree/main/python/pylibwholegraph>`_,
    the Python and PyTorch-facing API.
  * `libwholegraph <https://github.com/rapidsai/cugraph-gnn/tree/main/cpp>`_,
    the native C/CUDA library.

Core Libraries
~~~~~~~~~~~~~~

* :doc:`libcuGraph <api_docs/libcugraph/index>` is the native GPU graph
  analytics implementation in the
  `cuGraph repository <https://github.com/rapidsai/cugraph>`_. Its public
  interfaces are organized as:

  * the :doc:`C API (libcugraph_c) <api_docs/cugraph_c/index>`;
  * the :doc:`C++ API <api_docs/cugraph_cpp/index>`;
  * the :doc:`C++ primitives API <api_docs/cugraph_prims/index>` for composing
    graph operations; and
  * the :doc:`ETL API (libcugraph_etl) <api_docs/cugraph_etl/index>` for
    renumbering tabular vertex identifiers.

The `cuGraph Docs repository <https://github.com/rapidsai/cugraph-docs>`_
contains the combined documentation sources and build configuration for these
components.

cuGraph Using NetworkX Code
---------------------------

cuGraph is available as a NetworkX backend through
`nx-cugraph <https://rapids.ai/nx-cugraph/>`_. NetworkX users can accelerate
supported algorithms on an NVIDIA GPU without changing their existing code.

See :doc:`zero-code-change NetworkX acceleration <nx_cugraph/index>`, or
continue below to use the cuGraph API directly.

Getting started with cuGraph
----------------------------

See the `RAPIDS system requirements
<https://docs.rapids.ai/install/#system-req>`_ for required hardware and
software.


Installation
~~~~~~~~~~~~

Please see the latest `RAPIDS System Requirements documentation <https://docs.rapids.ai/install#system-req>`_.

The RAPIDS installation guide covers several ways to set up cuGraph:

* On Unix

  * `Conda <https://docs.rapids.ai/install/#conda>`_
  * `Docker <https://docs.rapids.ai/install/#docker>`_
  * `pip <https://docs.rapids.ai/install/#pip>`_


**Note: Windows use of RAPIDS depends on prior installation of** `WSL2 <https://learn.microsoft.com/en-us/windows/wsl/install>`_.

* On Windows

  * `Conda <https://docs.rapids.ai/install#wsl2-conda>`_
  * `Docker <https://docs.rapids.ai/install#wsl2-docker>`_
  * `pip <https://docs.rapids.ai/install#wsl2-pip>`_

cuGraph API example
~~~~~~~~~~~~~~~~~~~

.. code-block:: python

   import cugraph

   # Create an instance of the Zachary Karate Club graph.
   from cugraph.datasets import karate
   G = karate.get_graph()

   centrality = cugraph.degree_centrality(G)

The cuGraph `notebooks
<https://github.com/rapidsai/cugraph/blob/HEAD/notebooks/README.md>`_ include
examples of loading graph data and running algorithms. The
`Python tests
<https://github.com/rapidsai/cugraph/tree/main/python/cugraph/cugraph/tests>`_
also provide focused examples.

The `degree centrality test
<https://github.com/rapidsai/cugraph/blob/HEAD/python/cugraph/cugraph/tests/centrality/test_degree_centrality.py>`_
is a compact starting point. A corresponding
`multi-GPU example
<https://github.com/rapidsai/cugraph/blob/HEAD/python/cugraph/cugraph/tests/centrality/test_degree_centrality_mg.py>`_
shows the distributed workflow.

Table of Contents
-----------------

.. toctree::
   :maxdepth: 1

   basics/index
   nx_cugraph/index
   installation/index
   tutorials/index
   graph_support/index
   wholegraph/index
   references/index
   dev_resources/index
   api_docs/index

Indices and tables
------------------

* :ref:`genindex`
* :ref:`search`
