# Louvain Community

Louvain community detection seeks to maximize modularity which measures, in quantitative terms, how effectively the graph has been partitioned. It actually compares the paritioning to a random partitioning. Modularity is caculated as follows.

See [Louvain community on Wikipedia](https://en.wikipedia.org/wiki/Louvain_method) for more details on the algorithm.

$$
Q = \frac{1}{2m} \sum_{i,j} \left[ A_{ij} - \frac{k_i k_j}{2m} \right] \delta(c_i, c_j)
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
While cuGraph's parallelism mitigates run time, [Big O notation](https://en.wikipedia.org/wiki/Big_O_notation) is still the standard to compare algorithm costs.


Where:

* $m$ - number of edges

The cost is $O(m)$

Louvain is especially efficient with GPU-acceleration because it lends itself to parallelization.


___
Copyright (c) 2023-2025, NVIDIA CORPORATION.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
