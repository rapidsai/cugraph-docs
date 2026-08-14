==========
Centrality
==========

.. currentmodule:: cugraph



Betweenness Centrality
----------------------

.. rubric:: single-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.centrality.betweenness_centrality
   cugraph.centrality.edge_betweenness_centrality

.. rubric:: multi-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.centrality.betweenness_centrality.betweenness_centrality
   cugraph.dask.centrality.betweenness_centrality.edge_betweenness_centrality


Katz Centrality
---------------

.. rubric:: single-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.centrality.katz_centrality

.. rubric:: multi-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.centrality.katz_centrality.katz_centrality


Degree Centrality
-----------------

.. rubric:: single-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.centrality.degree_centrality


Eigenvector Centrality
----------------------

.. rubric:: single-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.centrality.eigenvector_centrality

.. rubric:: multi-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.centrality.eigenvector_centrality.eigenvector_centrality
