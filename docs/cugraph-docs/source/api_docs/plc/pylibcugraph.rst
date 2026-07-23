pylibcugraph API
================

``pylibcugraph`` provides lower-level Python bindings to ``libcugraph_c``.
This page lists the public classes and callables exported by the 26.10 nightly
package.

Graphs and resources
--------------------

.. autosummary::
   :toctree: ../api/plc

   pylibcugraph.SGGraph
   pylibcugraph.MGGraph
   pylibcugraph.ResourceHandle
   pylibcugraph.GraphProperties
   pylibcugraph.EdgeIdLookupTable
   pylibcugraph.CuGraphRandomState

Centrality and link analysis
----------------------------

.. autosummary::
   :toctree: ../api/plc

   pylibcugraph.pagerank
   pylibcugraph.personalized_pagerank
   pylibcugraph.hits
   pylibcugraph.eigenvector_centrality
   pylibcugraph.katz_centrality
   pylibcugraph.betweenness_centrality
   pylibcugraph.edge_betweenness_centrality

Traversal, components, and cores
--------------------------------

.. autosummary::
   :toctree: ../api/plc

   pylibcugraph.bfs
   pylibcugraph.sssp
   pylibcugraph.weakly_connected_components
   pylibcugraph.strongly_connected_components
   pylibcugraph.core_number
   pylibcugraph.k_core
   pylibcugraph.minimum_spanning_tree

Community and subgraphs
-----------------------

.. autosummary::
   :toctree: ../api/plc

   pylibcugraph.louvain
   pylibcugraph.leiden
   pylibcugraph.ecg
   pylibcugraph.triangle_count
   pylibcugraph.ego_graph
   pylibcugraph.induced_subgraph
   pylibcugraph.k_truss_subgraph
   pylibcugraph.balanced_cut_clustering
   pylibcugraph.spectral_modularity_maximization
   pylibcugraph.analyze_clustering_modularity
   pylibcugraph.analyze_clustering_edge_cut
   pylibcugraph.analyze_clustering_ratio_cut

Sampling
--------

.. autosummary::
   :toctree: ../api/plc

   pylibcugraph.uniform_random_walks
   pylibcugraph.biased_random_walks
   pylibcugraph.node2vec_random_walks
   pylibcugraph.homogeneous_uniform_neighbor_sample
   pylibcugraph.homogeneous_uniform_temporal_neighbor_sample
   pylibcugraph.homogeneous_biased_neighbor_sample
   pylibcugraph.homogeneous_biased_temporal_neighbor_sample
   pylibcugraph.heterogeneous_uniform_neighbor_sample
   pylibcugraph.heterogeneous_uniform_temporal_neighbor_sample
   pylibcugraph.heterogeneous_biased_neighbor_sample
   pylibcugraph.heterogeneous_biased_temporal_neighbor_sample
   pylibcugraph.negative_sampling
   pylibcugraph.select_random_vertices

Similarity
----------

.. autosummary::
   :toctree: ../api/plc

   pylibcugraph.jaccard_coefficients
   pylibcugraph.overlap_coefficients
   pylibcugraph.sorensen_coefficients
   pylibcugraph.cosine_coefficients
   pylibcugraph.all_pairs_jaccard_coefficients
   pylibcugraph.all_pairs_overlap_coefficients
   pylibcugraph.all_pairs_sorensen_coefficients
   pylibcugraph.all_pairs_cosine_coefficients

Graph construction and utilities
--------------------------------

.. autosummary::
   :toctree: ../api/plc

   pylibcugraph.generate_rmat_edgelist
   pylibcugraph.generate_rmat_edgelists
   pylibcugraph.replicate_edgelist
   pylibcugraph.renumber_arbitrary_edgelist
   pylibcugraph.decompress_to_edgelist
   pylibcugraph.degrees
   pylibcugraph.in_degrees
   pylibcugraph.out_degrees
   pylibcugraph.get_two_hop_neighbors
   pylibcugraph.has_vertex
   pylibcugraph.extract_vertex_list
   pylibcugraph.force_atlas2
