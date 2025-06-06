
# cuGraph Centrality Notebooks

<img src="../../_static/zachary_graph_centrality.png" width="35%"/>

The RAPIDS cuGraph Centrality folder contains a collection of Jupyter Notebooks that demonstrate algorithms to identify and quantify the importance of vertices to the structure of the graph.  In the diagram above, the highlighted vertices are highly important and are likely answers to questions like:

* Which vertices have the highest degree (most direct links) ?
* Which vertices are on the most efficient paths through the graph?
* Which vertices connect the most important vertices to each other?

But which vertices are most important? The answer depends on which measure/algorithm is run.  Manipulation of the data before or after the graph analytic is not covered here.   Extended, more problem focused, notebooks are being created and available https://github.com/rapidsai/notebooks-extended

## Summary

|Algorithm          |Notebooks Containing                                                     |Description                                                  |
| --------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
|[Degree Centrality](../degree_centrality.html)| [Centrality](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Centrality.ipynb), [Degree](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Degree.ipynb)                   |Measure based on counting direct connections for each vertex|
|[Betweenness Centrality](../betweenness_centrality.html)| [Centrality](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Centrality.ipynb), [Betweenness](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Betweenness.ipynb)                    |Number of shortest paths through the vertex|
|[Eigenvector Centrality](../eigenvector_centrality.html)|[Centrality](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Centrality.ipynb), [Eigenvector](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Eigenvector.ipynb)|Measure of connectivity to other important vertices (which also have high connectivity) often referred to as the influence measure of a vertex|
|[Katz Centrality](../katz_centrality.html)|[Centrality](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Centrality.ipynb), [Katz](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Katz.ipynb)                                         |Similar to Eigenvector but has tweaks to measure more weakly connected graph  |
|Pagerank| [Pagerank](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/link_analysis/Pagerank.ipynb)                                         |Classified as both a link analysis and centrality measure by quantifying incoming links from central vertices.  |


## Copyright

Copyright (c) 2019 - 2025, NVIDIA CORPORATION.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
___
