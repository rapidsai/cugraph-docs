nx-cugraph
-----------

nx-cugraph is a `NetworkX backend <https://networkx.org/documentation/stable/reference/utils.html#backends>`_ that provides **GPU acceleration** to many popular NetworkX algorithms.

By simply `installing and enabling nx-cugraph <https://github.com/rapidsai/cugraph/blob/HEAD/python/nx-cugraph/README.md#install>`_, users can see significant speedup on workflows where performance is hindered by the default NetworkX implementation.  With ``nx-cugraph``, users can have GPU-based, large-scale performance **without** changing their familiar and easy-to-use NetworkX code.

.. code-block:: python

    import pandas as pd
    import networkx as nx

    url = "https://data.rapids.ai/cugraph/datasets/cit-Patents.csv"
    df = pd.read_csv(url, sep=" ", names=["src", "dst"], dtype="int32")
    G = nx.from_pandas_edgelist(df, source="src", target="dst")

    %time result = nx.betweenness_centrality(G, k=10)

.. need to point to nx-cugraph notebook?

.. figure:: _static/colab.png
    :width: 200px
    :align: center
    :target: https://colab.research.google.com/
    :alt: colab logo should be here!

    Try it on Google Colab!

+------------------------+------------------------+
| Zero Code Change Acceleration  |    Second Heading                    |
|                        |                        |
+========================+========================+
| body row 1, column 1   |           a             |
+------------------------+------------------------+
| body row 2             |          b              |
+------------------------+------------------------+

``nx-cugraph`` is now Generally Available (GA) as part of the ``RAPIDS`` package.  See `RAPIDS
Quick Start <https://rapids.ai/#quick-start>`_ to get up-and-running with ``nx-cugraph``.

.. discuss where these should lead to!

.. toctree::
    :maxdepth: 2
    :caption: Contents:

    how-it-works
    supported-algorithms
    installation
    benchmarks
    faqs

.. Previously there's just the "nx_cugraph" section. Removed for now in favor of new pages.