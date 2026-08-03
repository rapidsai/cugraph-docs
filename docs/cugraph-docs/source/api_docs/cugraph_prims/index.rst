libcuGraph primitives API
=========================

The C++ primitives API provides the lower-level building blocks used to
implement graph algorithms. The reference includes every public header in
``cpp/include/cugraph/prims`` in the 26.10 nightly source.

.. toctree::
   :maxdepth: 1
   :caption: Edge traversal, transformation, and reduction

   reference/count_if_e
   reference/extract_transform_e
   reference/extract_transform_if_e
   reference/transform_e
   reference/transform_gather_e
   reference/transform_reduce_e
   reference/transform_reduce_e_by_src_dst_key

.. toctree::
   :maxdepth: 1
   :caption: Vertex traversal and frontiers

   reference/count_if_v
   reference/reduce_v
   reference/transform_reduce_v
   reference/edge_bucket
   reference/vertex_frontier
   reference/update_v_frontier
   reference/extract_transform_if_v_frontier_incoming_outgoing_e
   reference/extract_transform_v_frontier_incoming_outgoing_e
   reference/transform_reduce_if_v_frontier_outgoing_e_by_dst
   reference/transform_reduce_v_frontier_outgoing_e_by_dst

.. toctree::
   :maxdepth: 1
   :caption: Per-vertex and neighborhood operations

   reference/per_v_pair_src_dst_nbr_intersection
   reference/per_v_pair_transform_src_dst_nbr_intersection
   reference/per_v_random_select_transform_outgoing_e
   reference/per_v_transform_reduce_dst_key_aggregated_outgoing_e
   reference/per_v_transform_reduce_if_incoming_outgoing_e
   reference/per_v_transform_reduce_incoming_outgoing_e
   reference/transform_reduce_src_dst_nbr_intersection_of_e_endpoints_by_v

.. toctree::
   :maxdepth: 1
   :caption: Property operations, stores, and reduction operators

   reference/fill_edge_property
   reference/fill_edge_src_dst_property
   reference/make_initialized_edge_property
   reference/make_initialized_edge_src_dst_property
   reference/update_edge_src_dst_property
   reference/property_op_utils
   reference/key_store
   reference/kv_store
   reference/reduce_op
