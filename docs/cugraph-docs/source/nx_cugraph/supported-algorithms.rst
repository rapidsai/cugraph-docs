Supported Algorithms
=====================

The nx-cugraph backend to NetworkX connects
`pylibcugraph <https://github.com/rapidsai/cugraph/blob/HEAD/readme_pages/pylibcugraph.md>`_ (cuGraph's low-level Python
interface to its CUDA-based graph analytics library) and
`CuPy <https://cupy.dev/>`_ (a GPU-accelerated array library) to NetworkX's
familiar and easy-to-use API.

Below is the list of algorithms that are currently supported in nx-cugraph.


Algorithms
----------

+--------------------------+
| **Bipartite**            |
+==========================+
| betweenness_centrality   |
+--------------------------+
| biadjacency_matrix       |
+--------------------------+
| complete_bipartite_graph |
+--------------------------+
| from_biadjacency_matrix  |
+--------------------------+

+-----------------------------+
| **Centrality**              |
+=============================+
| betweenness_centrality      |
+-----------------------------+
| degree_centrality           |
+-----------------------------+
| edge_betweenness_centrality |
+-----------------------------+
| eigenvector_centrality      |
+-----------------------------+
| in_degree_centrality        |
+-----------------------------+
| katz_centrality             |
+-----------------------------+
| out_degree_centrality       |
+-----------------------------+

+---------------------+
| **Cluster**         |
+=====================+
| average_clustering  |
+---------------------+
| clustering          |
+---------------------+
| transitivity        |
+---------------------+
| triangles           |
+---------------------+

+--------------------------+
| **Community**            |
+==========================+
| leiden_communities       |
+--------------------------+
| louvain_communities      |
+--------------------------+

+------------------------------------+
| **Components**                     |
+====================================+
| connected_components               |
+------------------------------------+
| is_connected                       |
+------------------------------------+
| is_weakly_connected                |
+------------------------------------+
| node_connected_component           |
+------------------------------------+
| number_connected_components        |
+------------------------------------+
| number_weakly_connected_components |
+------------------------------------+
| weakly_connected_components        |
+------------------------------------+

+-------------+
| **Core**    |
+=============+
| core_number |
+-------------+
| k_truss     |
+-------------+

+-------------+
| **DAG**     |
+=============+
| ancestors   |
+-------------+
| descendants |
+-------------+

+--------------------+
| **Isolate**        |
+====================+
| is_isolate         |
+--------------------+
| isolates           |
+--------------------+
| number_of_isolates |
+--------------------+

+--------------------+
| **Layout**         |
+====================+
| forceatlas2_layout |
+--------------------+

+-------------------+
| **Link Analysis** |
+===================+
| hits              |
+-------------------+
| pagerank          |
+-------------------+

+---------------------+
| **Link Prediction** |
+=====================+
| jaccard_coefficient |
+---------------------+

+-----------------------------+
| **Lowest Common Ancestors** |
+=============================+
| lowest_common_ancestor      |
+-----------------------------+

+----------------+
| **Operators**  |
+================+
| complement     |
+----------------+
| reverse        |
+----------------+

+----------------------+
| **Reciprocity**      |
+======================+
| overall_reciprocity  |
+----------------------+
| reciprocity          |
+----------------------+

+---------------------------------------+
| **Shortest Paths**                    |
+=======================================+
| has_path                              |
+---------------------------------------+
| shortest_path                         |
+---------------------------------------+
| shortest_path_length                  |
+---------------------------------------+
| all_pairs_shortest_path               |
+---------------------------------------+
| all_pairs_shortest_path_length        |
+---------------------------------------+
| bidirectional_shortest_path           |
+---------------------------------------+
| single_source_shortest_path           |
+---------------------------------------+
| single_source_shortest_path_length    |
+---------------------------------------+
| single_target_shortest_path           |
+---------------------------------------+
| single_target_shortest_path_length    |
+---------------------------------------+
| all_pairs_bellman_ford_path           |
+---------------------------------------+
| all_pairs_bellman_ford_path_length    |
+---------------------------------------+
| all_pairs_dijkstra                    |
+---------------------------------------+
| all_pairs_dijkstra_path               |
+---------------------------------------+
| all_pairs_dijkstra_path_length        |
+---------------------------------------+
| bellman_ford_path                     |
+---------------------------------------+
| bellman_ford_path_length              |
+---------------------------------------+
| dijkstra_path                         |
+---------------------------------------+
| dijkstra_path_length                  |
+---------------------------------------+
| single_source_bellman_ford            |
+---------------------------------------+
| single_source_bellman_ford_path       |
+---------------------------------------+
| single_source_bellman_ford_path_length|
+---------------------------------------+
| single_source_dijkstra                |
+---------------------------------------+
| single_source_dijkstra_path           |
+---------------------------------------+
| single_source_dijkstra_path_length    |
+---------------------------------------+

+---------------------------+
| **Traversal**             |
+===========================+
| bfs_edges                 |
+---------------------------+
| bfs_layers                |
+---------------------------+
| bfs_predecessors          |
+---------------------------+
| bfs_successors            |
+---------------------------+
| bfs_tree                  |
+---------------------------+
| descendants_at_distance   |
+---------------------------+
| generic_bfs_edges         |
+---------------------------+

+---------------------+
| **Tree**            |
+=====================+
| is_arborescence     |
+---------------------+
| is_branching        |
+---------------------+
| is_forest           |
+---------------------+
| is_tree             |
+---------------------+


Utilities
-------

+-------------------------+
| **Functions**           |
+=========================+
| is_negatively_weighted  |
+-------------------------+
| number_of_selfloops     |
+-------------------------+

+----------------------+
| **Convert**          |
+======================+
| from_dict_of_lists   |
+----------------------+
| to_dict_of_lists     |
+----------------------+
| to_numpy_array       |
+----------------------+

+--------------------------+
| **Convert Matrix**       |
+==========================+
| adjacency_matrix         |
+--------------------------+
| from_pandas_edgelist     |
+--------------------------+
| from_scipy_sparse_array  |
+--------------------------+
| to_scipy_sparse_array    |
+--------------------------+
| tournament_matrix        |
+--------------------------+

+-----------------------------------+
| **Relabel**                       |
+===================================+
| convert_node_labels_to_integers   |
+-----------------------------------+
| relabel_nodes                     |
+-----------------------------------+

Generators
------------

+-------------------------------+
| **Classic**                   |
+===============================+
| barbell_graph                 |
+-------------------------------+
| circular_ladder_graph         |
+-------------------------------+
| complete_graph                |
+-------------------------------+
| complete_multipartite_graph   |
+-------------------------------+
| cycle_graph                   |
+-------------------------------+
| empty_graph                   |
+-------------------------------+
| ladder_graph                  |
+-------------------------------+
| lollipop_graph                |
+-------------------------------+
| null_graph                    |
+-------------------------------+
| path_graph                    |
+-------------------------------+
| star_graph                    |
+-------------------------------+
| tadpole_graph                 |
+-------------------------------+
| trivial_graph                 |
+-------------------------------+
| turan_graph                   |
+-------------------------------+
| wheel_graph                   |
+-------------------------------+

+-----------------+
| **Classic**     |
+=================+
| caveman_graph   |
+-----------------+

+------------+
| **Ego**    |
+============+
| ego_graph  |
+------------+

+------------------------------+
| **Small**                    |
+==============================+
| bull_graph                   |
+------------------------------+
| chvatal_graph                |
+------------------------------+
| cubical_graph                |
+------------------------------+
| desargues_graph              |
+------------------------------+
| diamond_graph                |
+------------------------------+
| dodecahedral_graph           |
+------------------------------+
| frucht_graph                 |
+------------------------------+
| heawood_graph                |
+------------------------------+
| house_graph                  |
+------------------------------+
| house_x_graph                |
+------------------------------+
| icosahedral_graph            |
+------------------------------+
| krackhardt_kite_graph        |
+------------------------------+
| moebius_kantor_graph         |
+------------------------------+
| octahedral_graph             |
+------------------------------+
| pappus_graph                 |
+------------------------------+
| petersen_graph               |
+------------------------------+
| sedgewick_maze_graph         |
+------------------------------+
| tetrahedral_graph            |
+------------------------------+
| truncated_cube_graph         |
+------------------------------+
| truncated_tetrahedron_graph  |
+------------------------------+
| tutte_graph                  |
+------------------------------+

+-------------------------------+
| **Social**                    |
+===============================+
| davis_southern_women_graph    |
+-------------------------------+
| florentine_families_graph     |
+-------------------------------+
| karate_club_graph             |
+-------------------------------+
| les_miserables_graph          |
+-------------------------------+


To request nx-cugraph backend support for a NetworkX API that is not listed above, visit the `nx-cugraph GitHub repo <https://github.com/rapidsai/nx-cugraph>`_.
