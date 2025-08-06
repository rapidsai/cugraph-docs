============================
Graph Neural Network Support
============================

**cuGraph-DGL has been removed from cuGraph GNN as of release 25.06.** We recommend migrating to 
cuGraph-PyG, which offers the same functionality along with additional features like support for heterogeneous sampling and a unified API. 
The cuGraph team is not planning any further work in the DGL ecosystem going forward.

----

The cuGraph GNN stack

.. image:: cugraph-pyg-stack.png
   :alt: The cuGraph PyG Stack
   :width: 400px
   :align: center

----

Here is a talk that explains `Training GNNs at Internet Scale using cuGraph and WholeGraph <https://www.youtube.com/watch?v=rS-bcWm3jQo&t=2762s>`_


.. toctree::
   :maxdepth: 2

   PyG_support.md
   wholegraph_support.md

Blogs to explain how RAPIDS cuGraph supports GNN'S
==================================================
  * `Optimizing Memory and Retrieval for Graph Neural Networks with WholeGraph, Part 1 <https://developer.nvidia.com/blog/optimizing-memory-and-retrieval-for-graph-neural-networks-with-wholegraph-part-1/>`_
  * `https://blogs.nvidia.com/blog/ai-blueprint-fraud-detection/ <https://blogs.nvidia.com/blog/ai-blueprint-fraud-detection/>`_



