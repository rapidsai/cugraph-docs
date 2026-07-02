NVIDIA cuGraph Documentation
============================

.. image:: images/cugraph_logo_2.png
   :width: 600

Overview
--------

NVIDIA cuGraph is an open-source collection of GPU-accelerated graph analytics
libraries. It supports creating and manipulating graphs and running scalable
graph algorithms. Its Python APIs integrate with data stored in cuDF and pandas
DataFrames, CuPy and SciPy sparse matrices, and NetworkX graphs. Lower-level
Python, C, and C++ APIs support applications that need closer integration with
cuGraph's graph primitives.

NVIDIA cuGraph libraries and supporting projects are maintained across several
repositories:

* `cuGraph <https://github.com/rapidsai/cugraph>`_ provides the core
  GPU-accelerated graph analytics libraries, including the high-level
  :doc:`Python API <api_docs/cugraph/index>`, the lower-level
  :doc:`pylibcugraph Python API <api_docs/plc/pylibcugraph>`, the
  :doc:`C API <api_docs/cugraph_c/index>`, and the
  :doc:`C++ API <api_docs/cugraph_cpp/index>`.
* `cuGraph-GNN <https://github.com/rapidsai/cugraph-gnn>`_ contains
  GPU-accelerated packages for graph neural network workflows built on NVIDIA
  cuGraph.

  * `cuGraph-PyG <https://github.com/rapidsai/cugraph-gnn/tree/main/python/cugraph-pyg>`_
    integrates NVIDIA cuGraph with PyTorch Geometric and implements its
    ``GraphStore``, ``FeatureStore``, ``Loader``, and ``Sampler`` interfaces.
    See the :doc:`Python API <api_docs/cugraph-pyg/cugraph_pyg>`.
  * `pylibwholegraph <https://github.com/rapidsai/cugraph-gnn/tree/main/python/pylibwholegraph>`_
    provides Python interfaces for distributed graph and key-value storage
    through WholeGraph. cuGraph-PyG can use WholeGraph for greater scalability.
    See the :doc:`Python API <api_docs/wholegraph/pylibwholegraph/index>`.

* `nx-cugraph <https://github.com/rapidsai/nx-cugraph>`_ provides a NetworkX
  backend that can accelerate supported NetworkX algorithms on NVIDIA GPUs with
  zero code changes. See the :doc:`nx-cugraph documentation <nx_cugraph/index>`.
* `cuGraph Docs <https://github.com/rapidsai/cugraph-docs>`_ contains the
  documentation sources and build configuration for NVIDIA cuGraph and its
  related libraries.

.. note::

   **cuGraph-DGL was removed in release 25.08.** We recommend migrating to
   cuGraph-PyG, which provides the same functionality along with additional
   features such as heterogeneous sampling and a unified API. The cuGraph team
   is not planning further work in the DGL ecosystem.

---------------------------
cuGraph Using NetworkX Code
---------------------------

cuGraph is now available as a NetworkX backend using `nx-cugraph <https://rapids.ai/nx-cugraph/>`_.
Our major integration effort with NetworkX offers NetworkX users a **zero code change** option to accelerate
their existing NetworkX code using an NVIDIA GPU and cuGraph.

Check out `zero code change accelerated NetworkX <nx_cugraph/index.rst>`_. If you would like to continue using standard cuGraph, then continue down below.

----------------------------
Getting started with cuGraph
----------------------------

Required hardware/software for `cuGraph and RAPIDS <https://docs.rapids.ai/install/#system-req>`_


++++++++++++
Installation
++++++++++++

Please see the latest `RAPIDS System Requirements documentation <https://docs.rapids.ai/install#system-req>`_.

This includes several ways to set up cuGraph

* On Unix

  * `Conda <https://docs.rapids.ai/install/#conda>`_
  * `Docker <https://docs.rapids.ai/install/#docker>`_
  * `pip <https://docs.rapids.ai/install/#pip>`_


**Note: Windows use of RAPIDS depends on prior installation of** `WSL2 <https://learn.microsoft.com/en-us/windows/wsl/install>`_.

* On Windows

  * `Conda <https://docs.rapids.ai/install#wsl2-conda>`_
  * `Docker <https://docs.rapids.ai/install#wsl2-docker>`_
  * `pip <https://docs.rapids.ai/install#wsl2-pip>`_

 Cugraph API Example

 .. code-block:: python

  import cugraph
  import cudf

  # Create an instance of the popular Zachary Karate Club graph
  from cugraph.datasets import karate
  G = karate.get_graph()

  # Call cugraph.degree_centrality
  vertex_bc = cugraph.degree_centrality(G)

 There are several resources containing cuGraph examples, the cuGraph `notebook repository <https://github.com/rapidsai/cugraph/blob/HEAD/notebooks/README.md>`_ has many examples of loading graph data and running algorithms in Jupyter notebooks.
 The cuGraph `test code <https://github.com/rapidsai/cugraph/tree/main/python/cugraph/cugraph/tests>`_ contains script examples of setting up and calling cuGraph algorithms.

 A simple example of `testing the degree centrality algorithm <https://github.com/rapidsai/cugraph/blob/HEAD/python/cugraph/cugraph/tests/centrality/test_degree_centrality.py>`_ is a good place to start. There are also `multi-GPU examples <https://github.com/rapidsai/cugraph/blob/HEAD/python/cugraph/cugraph/tests/centrality/test_degree_centrality_mg.py>`_ with larger data sets as well.

~~~~~~~~~~~~~~~~~
Table of Contents
~~~~~~~~~~~~~~~~~

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

~~~~~~~~~~~~~~~~~~
Indices and tables
~~~~~~~~~~~~~~~~~~

* :ref:`genindex`
* :ref:`search`
