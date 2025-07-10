# K Truss

The k-truss of a graph is a subgraph where each edge is part of at least (k−2) triangles [triangle](https://en.wikipedia.org/wiki/Triangle_graph). K-trusses are used for finding tightly knit groups of vertices in a graph. A k-truss is a relaxation of [k-clique](https://en.wikipedia.org/wiki/Clique_(graph_theory)) in the graph. Finding cliques is computationally demanding and finding the maximal k-clique is known to be NP-Hard

This algorithm computes the k-truss of a graph. A K-Truss is a relaxed cliques where every vertex is supported by at least a k-2 [triangle](https://en.wikipedia.org/wiki/Triangle_graph).


## Definition
The k-truss in a graph is the largest subgraph of size k nodes, where there are k-2 triangles with edges in the subgraph.


## When to use K-Truss
* for finding dense subgraphs in a large graph
* as part of link prediction since undetected edges are common in dense communities.
* 

## When not to use K-Truss


## How computationally expensive is it?


___
Copyright (c) 2023-2025, NVIDIA CORPORATION.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
