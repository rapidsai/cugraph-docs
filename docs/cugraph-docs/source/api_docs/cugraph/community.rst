=========
Community
=========
.. currentmodule:: cugraph


EgoNet
------
single-GPU
^^^^^^^^^^

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.ego_graph

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.community.egonet


Ensemble clustering for graphs (ECG)
------------------------------------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.ecg

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.community.ecg.ecg

K-Truss
-------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.k_truss
   cugraph.ktruss_subgraph

multi_GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.community.ktruss_subgraph.ktruss_subgraph


Leiden
------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.leiden

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.community.leiden.leiden

Leiden (MG)
------------
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.community.leiden.leiden


Louvain
-------

single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.louvain


multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.community.louvain.louvain

Spectral Clustering
-------------------
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.analyzeClustering_edge_cut
   cugraph.analyzeClustering_modularity
   cugraph.analyzeClustering_ratio_cut
   cugraph.spectralBalancedCutClustering
   cugraph.spectralModularityMaximizationClustering


Induced Subgraph
----------------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.induced_subgraph

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.community.induced_subgraph.induced_subgraph

Triangle Counting
-----------------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.triangle_count

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.community.triangle_count.triangle_count