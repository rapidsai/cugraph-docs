# K Truss

The k-truss of a graph is the subgraph where each edge is part of at least (k−2) [triangles](https://en.wikipedia.org/wiki/Triangle_graph). K-trusses are used for finding tightly knit groups of vertices in a graph. A k-truss is a relaxation of [k-clique discovery](https://en.wikipedia.org/wiki/Clique_(graph_theory)) in the graph.

This algorithm computes the k-truss of a graph. A K-Truss is a relaxed cliques where every vertex is supported by at least a k-2 number of [triangles](https://en.wikipedia.org/wiki/Triangle_graph).


## Definition
The k-truss in a graph is the largest subgraph of size k nodes, where there are k-2 triangles with edges in the subgraph.


## When to use K-Truss
* for finding dense subgraphs in a large graph
* as part of link prediction since undetected edges are common in dense communities.

## When not to use K-Truss
* Sparse graphs which don't contain many triangles
* When searching for overlapping communities
* When you are looking for paths in the graph rather than communities

## How computationally expensive is it?
K-Truss is most commonly compared to k-clique in terms of cost. This is mostly because k-clique becomes quickly unusable at scale.

The Big-O cost for k-truss is $\mathcal{O}(m^{1.5})$ where m is the number of edges.

By comparison, finding the largest clique in the graph has a Big-O cost of $\mathcal{O}(2^n)$

___
Copyright (c) 2023-2025, NVIDIA CORPORATION.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
