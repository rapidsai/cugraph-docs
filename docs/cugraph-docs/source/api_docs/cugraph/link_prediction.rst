===============
Link Prediction
===============
.. currentmodule:: cugraph

Cosine
------

.. rubric:: single-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.cosine
   cugraph.cosine_coefficient
   cugraph.all_pairs_cosine

.. rubric:: multi-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.link_prediction.cosine.cosine
   cugraph.dask.all_pairs_cosine


Jaccard Coefficient
-------------------

.. rubric:: single-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.jaccard
   cugraph.jaccard_coefficient
   cugraph.all_pairs_jaccard

.. rubric:: multi-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.link_prediction.jaccard.jaccard
   cugraph.dask.all_pairs_jaccard

Overlap Coefficient
-------------------

.. rubric:: single-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.overlap
   cugraph.overlap_coefficient
   cugraph.all_pairs_overlap

.. rubric:: multi-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.link_prediction.overlap.overlap
   cugraph.dask.all_pairs_overlap

Sorensen Coefficient
--------------------

.. rubric:: single-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.sorensen
   cugraph.sorensen_coefficient
   cugraph.all_pairs_sorensen

.. rubric:: multi-GPU

.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.link_prediction.sorensen.sorensen
   cugraph.dask.all_pairs_sorensen
