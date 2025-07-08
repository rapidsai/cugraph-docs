# Leiden Community

Leiden coummunity detection is very similar to [Louvain community detection](./leiden_community) in that both seek to maximize modularity. Modularity, in quantitative terms, measures how effectively the graph has been partitioned. Both compare a proposed partitioning to random partitioning. Modularity is calculated as follows.

The base modularity calcution is identical to Louvain:

$$
Q = \frac{1}{2m} \sum_{i,j} \left[ A_{ij} - \frac{k_i k_j}{2m} \right] \delta(c_i, c_j)
$$

$A_{ij}$ - Does an edge exist between nodes i and j. if the edge exists, $A_{ij} = 1$ if not, it is 0.

$\frac{k_i k_j}{2m}$ - the number of edges in the case of a random graph

$delta(c_i, c_j)$ - Are the two nodes in the same community? (0 for No. 1 for Yes)

However, in the cuGraph implementation of Leiden, two optimizations are made:
1. Leiden utilizes improved convergence criteria for efficiency
2. It does an additional step to prevent isolated nodes in a community-cluster

A full explanation of the cuGraph improvements came from thoe paper, [From Louvain to Leiden: guaranteeing well-connected communities](https://www.nature.com/articles/s41598-019-41695-z).



It improves on Louvain in that it:

* produces connected communities ( no isolated node )
* Run faster
* can be run on weighted and directed graphs


See [Louvain community on Wikipedia](https://en.wikipedia.org/wiki/Louvain_method) for more details on the algorithm.

The formula for Louvain community detection is:

$$

$$

$A_{ij}$ - Does an edge exist between nodes i and j. if the edge exists, $A_{ij} = 1$ if not, it is 0.

$\frac{k_i k_j}{2m}$ - the number of edges in the case of a random graph

$delta(c_i, c_j)$ - Are the two nodes in the same community? (0 for No. 1 for Yes)

To summarize, Louvain starts by putting each node in its own community, then iteratively, putting nodes into the same community and recalculating the modularity.

## When to use Louvain Community

* Louvain works well when communities are tightly connected internally but loosely connected between each other (community to community).
* Undirected graphs
* Unweighted graphs

Louvain works well in cases where there are natural communities. For example, social networks, product co-purchasing and biological networks.


## When not to use Louvain Community
In addition to the inverse of the helpful characteristics listed above, several other graph-level attributes can hinder Louvain.

* Graphs with many small communities which are often merged
* Overlapping communities, since nodes will only exist in a single cluster
* Sparse graphs since low modularity can make the algorithm results useless.

## How computationally expensive is it?
While cuGraph's parallelism migigates run time, [Big O notation](https://en.wikipedia.org/wiki/Big_O_notation) is still the standard to compare algorithm costs.

Louvain cost
Louvain is a very efficient algorithm.

Where:

* $n$ - Number of nodes
* $m$ - number of edges
* $d$ - average degree of the nodes

The cost is $O(m\:log\:n)$

Louvain is especially efficient with GPU-acceleration becausle it lends itself to parallelization.


___
Copyright (c) 2023-2025, NVIDIA CORPORATION.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
