# Leiden Community

Leiden coummunity detection is very similar to [Louvain community detection](./louvain_community) in that both seek to maximize modularity. Modularity, in quantitative terms, measures how effectively the graph has been partitioned. Both Louvain and Leiden compare a proposed partitioning to random partitioning,opting for the partition that maximixes modularity which is calculated as follows.

To summarize, like Louvain, Leiden starts by putting each node in its own community, then iteratively, putting nodes into the same community and recalculating the modularity.

The base modularity calcution is identical to Louvain:

$$
Q = \frac{1}{2m} \sum_{i,j} \left[ A_{ij} - \frac{k_i k_j}{2m} \right] \delta(c_i, c_j)
$$

$A_{ij}$ - Does an edge exist between nodes i and j. if the edge exists, $A_{ij} = 1$ if not, it is 0.

$\frac{k_i k_j}{2m}$ - the number of edges in the case of a random graph

$delta(c_i, c_j)$ - Are the two nodes in the same community? (0 for No. 1 for Yes)

However, in the cuGraph implementation of Leiden, two optimizations are made:
1. Leiden utilizes improved convergence criteria for efficiency
2. It does an additional step to prevent isolated nodes in a community/cluster

A full explanation of the cuGraph improvements came from thoe paper, [From Louvain to Leiden: guaranteeing well-connected communities](https://www.nature.com/articles/s41598-019-41695-z).



Leiden improves on Louvain in that it:

* produces connected communities ( no isolated nodes )
* Run faster 
* can be run on weighted and directed graphs


See [Leiden community on Wikipedia](https://en.wikipedia.org/wiki/Louvain_method) for more details on the algorithm.


## When to use Leiden Community over Louvain
* When isolated nodes and disconnected commnuties are not desired
* In larger graphs since Leiden is typically faster
* When more deterministic results are need since Louvain can be more random.


## When Leiden Community is not preferred to Louvain
* For quick runs on small datasets
* When discconected communities are expected and of interest

## How computationally expensive is it?
While cuGraph's parallelism mitigates run time, [Big O notation](https://en.wikipedia.org/wiki/Big_O_notation) is still the standard to compare algorithm costs.

## Leiden cost
Leiden is a very efficient algorithm.
The cost of Leiden is $O(m)
Where:

* $m$ - number of edges

The cost is $O(m)$

Louvain is especially efficient with GPU-acceleration becausle it lends itself to parallelization.
While this is the same speed as Louvain, in practice the [iterative efficencies in Leiden](https://www.nature.com/articles/s41598-019-41695-z) make it faster and more consistent.
___
Copyright (c) 2023-2025, NVIDIA CORPORATION.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
