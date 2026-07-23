===============
Link Prediction
===============
.. currentmodule:: cugraph

Cosine
------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.cosine
   cugraph.cosine_coefficient
   cugraph.all_pairs_cosine

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.link_prediction.cosine.cosine
   cugraph.dask.all_pairs_cosine


Jaccard Coefficient
-------------------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.jaccard
   cugraph.jaccard_coefficient
   cugraph.all_pairs_jaccard

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.link_prediction.jaccard.jaccard
   cugraph.dask.all_pairs_jaccard

Overlap Coefficient
-------------------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.overlap
   cugraph.overlap_coefficient
   cugraph.all_pairs_overlap

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.link_prediction.overlap.overlap
   cugraph.dask.all_pairs_overlap

Sorensen Coefficient
--------------------
single-GPU
^^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.sorensen
   cugraph.sorensen_coefficient
   cugraph.all_pairs_sorensen

multi-GPU
^^^^^^^^^
.. autosummary::
   :toctree: ../api/cugraph/

   cugraph.dask.link_prediction.sorensen.sorensen
   cugraph.dask.all_pairs_sorensen
