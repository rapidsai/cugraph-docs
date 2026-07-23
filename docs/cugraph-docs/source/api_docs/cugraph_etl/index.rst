libcugraph_etl API
==================

``libcugraph_etl`` provides C++ utilities for preparing tabular graph data. It
is distributed as a separate library and package from ``libcugraph``.

Header
------

Include ``cugraph_etl/functions.hpp`` and link against
``libcugraph_etl.so``.

Renumber cuDF tables
--------------------

.. code-block:: cpp

   std::tuple<std::unique_ptr<cudf::column>,
              std::unique_ptr<cudf::column>,
              std::unique_ptr<cudf::table>>
   cugraph::etl::renumber_cudf_tables(
     raft::handle_t const& handle,
     cudf::table_view const& src_table,
     cudf::table_view const& dst_table,
     cudf::type_id dtype);

This function renumbers the source and destination vertex identifiers in two
cuDF tables into the integer range ``[0, number_of_unique_vertices)``.

``handle``
   RAFT resource handle used for execution.
``src_table``
   Rows identifying source vertices.
``dst_table``
   Rows identifying destination vertices. Its schema must match
   ``src_table``.
``dtype``
   Output vertex identifier type. Use ``INT32`` or ``INT64``.

The return value contains the renumbered source column, the renumbered
destination column, and a table that maps each integer vertex identifier to the
original vertex columns. The function throws ``cugraph::logic_error`` if
renumbering fails.

See the `26.10 source declaration
<https://github.com/rapidsai/cugraph/blob/main/cpp/libcugraph_etl/include/cugraph_etl/functions.hpp>`_
for the authoritative header.
