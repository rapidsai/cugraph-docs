cuGraph-PyG API
===============

cuGraph-PyG implements PyTorch Geometric storage, loader, and sampler
interfaces on top of cuGraph and WholeGraph.

Graph storage
-------------

.. autosummary::
   :toctree: ../api/cugraph-pyg

   cugraph_pyg.data.GraphStore

Feature storage
---------------

.. autosummary::
   :toctree: ../api/cugraph-pyg

   cugraph_pyg.data.FeatureStore

Tensors and embeddings
----------------------

.. autosummary::
   :toctree: ../api/cugraph-pyg

   cugraph_pyg.tensor.DistTensor
   cugraph_pyg.tensor.DistEmbedding
   cugraph_pyg.tensor.DistMatrix
   cugraph_pyg.tensor.is_empty
   cugraph_pyg.tensor.empty

Data loaders
------------

.. autosummary::
   :toctree: ../api/cugraph-pyg

   cugraph_pyg.loader.NodeLoader
   cugraph_pyg.loader.NeighborLoader
   cugraph_pyg.loader.LinkLoader
   cugraph_pyg.loader.LinkNeighborLoader

Samplers
--------

.. autosummary::
   :toctree: ../api/cugraph-pyg

   cugraph_pyg.sampler.BaseSampler
   cugraph_pyg.sampler.SampleIterator
   cugraph_pyg.sampler.BaseDistributedSampler
   cugraph_pyg.sampler.DistributedNeighborSampler
   cugraph_pyg.sampler.sampler.SampleReader
   cugraph_pyg.sampler.sampler.HomogeneousSampleReader
   cugraph_pyg.sampler.sampler.HeterogeneousSampleReader
   cugraph_pyg.sampler.io.BufferedSampleReader
