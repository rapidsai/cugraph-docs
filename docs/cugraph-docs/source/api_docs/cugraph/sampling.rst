========
Sampling
========
.. currentmodule:: cugraph



Random Walks
------------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.biased_random_walks
   cugraph.heterogeneous_neighbor_sample
   cugraph.homogeneous_neighbor_sample
   cugraph.random_walks
   cugraph.uniform_neighbor_sample

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.sampling.biased_random_walks.biased_random_walks
   cugraph.dask.sampling.random_walks.random_walks
   cugraph.dask.sampling.uniform_neighbor_sample.uniform_neighbor_sample
   cugraph.dask.sampling.uniform_random_walks.uniform_random_walks

Node2Vec
---------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.node2vec_random_walks.node2vec_random_walks

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.sampling.node2vec_random_walks.node2vec_random_walks