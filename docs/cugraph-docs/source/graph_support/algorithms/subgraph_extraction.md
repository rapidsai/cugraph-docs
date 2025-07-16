# Subgraph Extraction

The Subgraph Extraction algorithm is the most straight-forward of the community algorithms. It extracts of a portion of a graph and returns a Graph object for follow-on analytics. For example, many of the community detection analytics simply return a list of vertices in a cluster. In order to run follow-on processing against a cluster, all the edges within that cluster are also needed. In fact it is more a tool than an analysis algorithm. Given a set of node ids, subgraph returns a graph object containing all the edges where both ends are in the node list.


## When to use Subgraph Extraction
* when there are known nodes of interest and their related edges need to be analyzed further
* When a data set is "too large" for analysis or display.
* when previous analysis has revealed a community and a graph object containing that community is needed.

## When not to use Subgraph Extraction
* For discovery or analysis, subgraph extraction can prune data that might otherwise reveal graph structure
* To extract a community, subgraph extraction pulls out _ALL_ edges, so it neither cleans nor promotes edges.
* To extract all nodes within _n-hops_ of a node. cuGraph alsow supplies this related function but subgraph extraction does not do this.


___
Copyright (c) 2023-2025, NVIDIA CORPORATION.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
