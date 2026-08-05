Sampling
========

.. currentmodule:: cugraph

Random walks
------------

single-GPU
^^^^^^^^^^

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.uniform_random_walks
   cugraph.biased_random_walks
   cugraph.node2vec_random_walks

multi-GPU
^^^^^^^^^

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.random_walks
   cugraph.dask.uniform_random_walks
   cugraph.dask.biased_random_walks
   cugraph.dask.node2vec_random_walks

Neighbor sampling
-----------------

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.homogeneous_neighbor_sample
   cugraph.heterogeneous_neighbor_sample
