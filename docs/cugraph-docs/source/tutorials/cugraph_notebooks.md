# cuGraph Notebooks

![GraphAnalyticsFigure](../../_static/GraphAnalyticsFigure.jpg)


This repository contains a collection of Jupyter Notebooks that outline how to run various cuGraph analytics.   The notebooks do not address a complete data science problem.  The notebooks are simply examples of how to run the graph analytics.  Manipulation of the data before or after the graph analytic is not covered here.   Extended, more problem focused, notebooks are being created and available https://github.com/rapidsai/notebooks-extended

## Summary

| Folder                | Notebook                         | Description                            |
| --------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Centrality      |                                                              |                                                              |
|                 | [Centrality](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Centrality.ipynb)         | Compute and compare multiple (currently 5) centrality scores |
|                 | [Katz](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Katz.ipynb)                     | Compute the Katz centrality for every vertex                 |
|                 | [Betweenness](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Betweenness.ipynb)       | Compute both Edge and Vertex Betweenness centrality          |
|                 | [Degree](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Degree.ipynb)                 | Compute Degree Centraility for each vertex                   |
|                 | [Eigenvector](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/centrality/Eigenvector.ipynb)       | Compute Eigenvector for every vertex                         |
| Community       |                      |                                       |
|                 | [Louvain and Leiden](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/community/Louvain.ipynb)                           | Identify clusters in a graph using both the Louvain and Leiden algorithms     |
|                 | [ECG](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/community/ECG.ipynb)                                   | Identify clusters in a graph using the Ensemble Clustering for Graph |
|                 | [K-Truss](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/community/ktruss.ipynb)                                | Extracts the K-Truss cluster                                 |
|                 | [Spectral-Clustering](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/community/Spectral-Clustering.ipynb)   | Identify clusters in a  graph using Spectral Clustering with both<br> - Balanced Cut<br> - Modularity Modularity |
|                 | [Subgraph Extraction](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/community/Subgraph-Extraction.ipynb)   | Compute a subgraph of the existing graph including only the specified vertices |
|                 | [Triangle Counting](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/community/Triangle-Counting.ipynb)       | Count the number of Triangle in a graph                      |
| Components      |                                                              |                                                              |
|                 | [Connected Components](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/components/ConnectedComponents.ipynb) | Find weakly and strongly connected components in a graph     |
| Core            |                                                              |                                                              |
|                 | [K-Core](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/cores/kcore.ipynb)                                  | Extracts the K-core cluster                                  |
|                 | [Core Number](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/cores/core-number.ipynb)                       | Computer the Core number for each vertex in a graph          |
Layout            |                                                              |                                                              |
|                 | [Force-Atlas2](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/layout/Force-Atlas2.ipynb)   |A large graph visualization achieved with cuGraph. |
| Link Analysis   |                          |                                 |
|                 | [Pagerank](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/link_analysis/Pagerank.ipynb)                     | Compute the PageRank of every vertex in a graph              |
|                 | [HITS](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/link_analysis/HITS.ipynb)                             | Compute the HITS' Hub and Authority scores for every vertex in a graph              |
| Link Prediction |                  |                                 |
|               | [Jaccard Similarity](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/link_prediction/Jaccard-Similarity.ipynb) | Compute vertex similarity score using both:<br />- Jaccard Similarity<br />- Weighted Jaccard |
|                 | [Overlap Similarity](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/link_prediction/Overlap-Similarity.ipynb) | Compute vertex similarity score using the Overlap Coefficient |
| Sampling        |
|                 | [Random Walk](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/sampling/RandomWalk.ipynb)                     | Compute Random Walk for a various number of seeds and path lengths |
| Traversal       |                                                              |                                                              |
|                 | [BFS](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/traversal/BFS.ipynb)                                   | Compute the Breadth First Search path from a starting vertex to every other vertex in a graph |
|                 | [SSSP](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/traversal/SSSP.ipynb)                                 | Single Source Shortest Path  - compute the shortest path from a starting vertex to every other vertex |
| Structure       |                                                              |                                                              |
|                 | [Renumbering](algorithms/structure/Renumber.ipynb) <br> [Renumbering 2](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/structure/Renumber-2.ipynb) | Renumber the vertex IDs in a graph (two sample notebooks)    |
|                 | [Symmetrize](https://github.com/rapidsai/cugraph/blob/main/notebooks/algorithms/structure/Symmetrize.ipynb)                     | Symmetrize the edges in a graph                              |


## RAPIDS notebooks
Visit the main RAPIDS [notebooks](https://github.com/rapidsai/cugraph/blob/main/notebooks/) repo for a listing of all notebooks across all RAPIDS libraries.

## Requirements

Running the example in these notebooks requires:

* The latest version of RAPIDS with cuGraph.
  * Download via Docker, Conda (See [__Getting Started__](https://rapids.ai/start.html))

* cuGraph is dependent on the latest version of cuDF.  Please install all components of RAPIDS
* Python 3.10+
* A system with an NVIDIA GPU: Volta architecture or newer
* CUDA 11.4+

## Copyright

Copyright (c) 2019-2025, NVIDIA CORPORATION.  All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the License for the specific language governing permissions and limitations under the License.

---
