
*** NOTICE ***
==============

**cuGraph-DGL has been removed from cuGraph GNN as of release 25.06.** We recommend migrating to 
cuGraph-PyG, which offers the same functionality along with additional features like support for heterogeneous sampling and a unified API. 
The cuGraph team is not planning any further work in the DGL ecosystem going forward.

The cuGraph repository has been refactored to make it more efficient to build, maintain and use.

Libraries supporting GNNs are now located in the `cugraph-gnn repository <https://github.com/rapidsai/cugraph-gnn>`_

* `pylibwholegraph <https://github.com/rapidsai/cugraph-gnn/tree/main/python/>`_ - the `Wholegraph <https://docs.rapids.ai/api/cugraph/nightly/wholegraph/>`_ library for client memory management supporting cuGraph-PyG for even greater scalability
* `cugraph_pyg <https://github.com/rapidsai/cugraph-gnn/blob/main/readme_pages/cugraph_pyg.md>`_ enables the ability to use cugraph Property Graphs with PyTorch Geometric (PyG).

`RAPIDS nx-cugraph <https://rapids.ai/nx-cugraph/>`_ is now located in the `nx-cugraph repository <https://github.com/rapidsai/nx-cugraph>`_ containing a backend to NetworkX for running supported algorithms with GPU acceleration.

The `cugraph-docs repository <https://github.com/rapidsai/cugraph-docs>`_ contains code to generate cuGraph documentation.

---

RAPIDS Graph documentation
==========================

.. image:: images/cugraph_logo_2.png
   :width: 600

~~~~~~~~~~~~
Introduction
~~~~~~~~~~~~
cuGraph is a library of graph algorithms that seamlessly integrates into the
RAPIDS data science ecosystem and allows data scientists to easily call
graph algorithms using data stored in cuDF/Pandas DataFrames or CuPy/SciPy
sparse matrices.


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

----

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