# Spectral Clustering

Spectral clustering uses the eigenvectors of a Laplacian of the input graph to find a given number of clusters which satisfy a given quality metric. Balanced Cut and Modularity Maximization are two such quality metrics. CuGraph supports the [Balanced Cut](https://en.wikipedia.org/wiki/Balanced_clustering) and [Modularity](https://en.wikipedia.org/wiki/Modularity_(networks) metrics for clustering. Balanced cut seeks to balance the size of the resulting clusters. Modularity maximization seeks to find clusters that maximize connectedness compared to random edge distributions.

The cuGraph Balanced Cut implementation minimizes the Ratio Cut calcutation to keep cluster sizes similar.

$$
\text{RatioCut}(S_1, \dots, S_k) = \sum_{i=1}^{k} \frac{\text{cut}(S_i, \bar{S}_i)}{|S_i|}
$$

($S_1$,..., $S_k$) - Clusters of the node set

cut $(S_i, \bar{S}_i)$ - the number of edges that connect cluster $S_i$ to the rest of the graph

$\bar{S}_i$ - count of nodes in cluster $S_i$



See [Spectral Clustering on Wikipedia](https://en.wikipedia.org/wiki/Spectral_clustering) for more details on the algorithm.


## When to use Spectral Clustering
* complex clusters are expected
* Communities of similar sizes are needed/expected



## When not to use Spectral Clustering
* The dataset is large. Spectral clustering is expensive
* Sparse graphs can cause the algorithm to fail
* Unequal cluster sizes in the graph can be incorrectly partioned as the algorithm seeks similar size ones


## How computationally expensive is it?
Spectral clustering can approach a Big-O cost of $\mathcal{O}(n^3)$

### Balanced Cut vs Modularity maximization
CuGraph supports two functions as the underlying value to partition the graph. The decision of one over the other comes down to knowing the data and the purpose of the clustering. If the data is known to contain isolated communities of similar sizes, Balanced Cut is the better choice. However, if the data is not well understood, Modularity maximization can discover disparate communities without forcing uniformity where it really doesn't exist.



___
Copyright (c) 2023-2025, NVIDIA CORPORATION.

Licensed under the Apache License, Version 2.0 (the "License");  you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
