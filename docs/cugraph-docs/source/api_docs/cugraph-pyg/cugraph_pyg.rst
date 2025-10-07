~~~~~~~~~~~~~~~~~~~~~~~~~
cugraph-pyg API Reference
~~~~~~~~~~~~~~~~~~~~~~~~~

cugraph-pyg

.. currentmodule:: cugraph_pyg

Graph Storage
-------------
.. autosummary::
   :toctree: ../api/cugraph-pyg/

   cugraph_pyg.data.graph_store.GraphStore

Feature Storage
---------------
.. autosummary::
   :toctree: ../api/cugraph-pyg/
   
   cugraph_pyg.data.feature_store.FeatureStore

Tensors and Embeddings
----------------------
.. autosummary::
   :toctree ../api/cugraph-pyg/

   cugraph_pyg.tensor.dist_tensor.DistTensor
   cugraph_pyg.tensor.dist_tensor.DistEmbedding
   cugraph_pyg.tensor.dist_matrix.DistMatrix


Data Loaders
------------
.. autosummary::
   :toctree: ../api/cugraph-pyg/

   cugraph_pyg.loader.node_loader.NodeLoader
   cugraph_pyg.loader.neighbor_loader.NeighborLoader

   cugraph_pyg.loader.link_loader.LinkLoader
   cugraph_pyg.loader.link_neighbor_loader.LinkNeighborLoader

Samplers
--------
.. autosummary::
   :toctree: ../api/cugraph-pyg/

   cugraph_pyg.sampler.sampler.BaseSampler
   cugraph_pyg.sampler.sampler.SampleReader
   cugraph_pyg.sampler.sampler.HomogeneousSampleReader
   cugraph_pyg.sampler.sampler.HeterogeneousSampleReader
   cugraph_pyg.sampler.sampler.SampleIterator

   cugraph_pyg.sampler.distributed_sampler.BaseDistributedSampler
   cugraph_pyg.sampler.distributed_sampler.DistributedNeighborSampler
