Benchmarks
=================

This page presents the performance of various algorithms supported by ``nx-cugraph`` across four graphs of varying sizes. 

The goal is to provide a clear comparison of how dispatching to a GPU-accelerated backend compares against their default, CPU-based counterparts. This allows users to get an idea of potential speedups gained by leveraging ``nx-cugraph``. 

As the datasets grow larger, the GPU-accelerated backend begins to show increasingly faster speedups over the CPU. This trend demonstrates how the GPU's parallel processing capabilities allow it to handle large-scale graph analytics much more efficiently than the CPU.

Datasets
************

The datasets used for this page are:

.. raw:: html

  <style>
  .data-table {
    width: 95%;
    margin: 0 auto;
    font-size: 15px;
  }
  table tr:hover td {
    text-decoration: underline;
  }
  .data-table th, .data-table td {
    padding: 8px;
    border: 1px solid #ccc;
  }
  .data-table th:nth-child(1), .data-table td:nth-child(1) {
    width: 15%;
    }
  .data-table th:nth-child(2) {
    width: 15%;
  }
  .data-table th:nth-child(3) {
    width: 15%;
  }
  .data-table th:nth-child(4) {
    width: 55%;
  }
  </style>

.. raw:: html

  <table class="data-table">
    <thead>
      <tr>
        <th>Dataset</th>
        <th>Number of Nodes</th>
        <th>Number of Edges</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a href="https://sparse.tamu.edu/Newman/netscience">netscience</a></td>
        <td>1,461</td>
        <td>5,484</td>
        <td>A small, directed graph representing a scientific collaboration network.</td>
      </tr>
      <tr>
        <td><a href="https://snap.stanford.edu/data/amazon0302.html">amazon0302</a></td>
        <td>262,111</td>
        <td>1,234,877</td>
        <td>A medium, undirected graph modeling product co-purchasing data.</td>
      </tr>
      <tr>
        <td><a href="https://snap.stanford.edu/data/cit-Patents.html">cit-Patents</a></td>
        <td>3,774,768</td>
        <td>16,518,948</td>
        <td>A large, directed graph representing U.S. patent citation relationships.</td>
      </tr>
      <tr>
        <td><a href="https://snap.stanford.edu/data/soc-LiveJournal1.html">soc-LiveJournal1</a></td>
        <td>4,847,571</td>
        <td>68,993,773</td>
        <td>A very large, directed graph based on the LiveJournal social network.</td>
      </tr>
    </tbody>
  </table>
  </br>

--------------

Algorithm Table
***************

The table below showcases the performance of various algorithms across four graph datasets of increasing size.

Each cell represents the speedup factor achieved when running the algorithm on a ``nx-cugraph`` compared to default NetworkX. A higher value indicates better performance. To enhance readability, the cells are color-coded:

- Green for excellent (``>5.0``)
- Yellow for moderate (``1.1 - 5.0``)
- Red for suboptimal (``0 - 1.0``)

Users can refer to this table to see what kind of performance increase they can expect from their workflows. Also, by hovering over the table, users can see the time it took for the algorithm to finish running during our benchmarks.

.. raw:: html

  <style>
  table {
    border-collapse: collapse;
    width: 95%;
    padding: 6px;
    border: 1px solid #ccc;
    font-size: 15px;
  }
  table th, table td {
    padding: 8px;
    text-align: left;
    border: 1px solid rgb(67, 67, 67);
  }
  @media (prefers-color-scheme: dark) {
    td.green, td.red, td.yellow {
        /* dark mode styling */
        color:rgb(30, 30, 30);
    }
  }
  .perf-table th {
    padding: 12px 8px;
  }
  .perf-table td.green {
    background-color: #d4edda;
  }
  .perf-table td.yellow {
    background-color: #fff3cd;
  }
  .perf-table td.red {
    background-color: #f8d7da;
  }
  /* control table width */
  table th:nth-child(1), table td:nth-child(1) {
    width: 40%;
  }
  table :is(th, td):nth-child(n+2):nth-child(-n+5) {
  width: 15%;
  }
  table td {
    position: relative;
  }
  table td .tooltip {
    visibility: hidden;
    position: absolute;
    background-color: rgb(175, 129, 249);
    color: #fff;
    border-radius: 4px;
    padding: 5px;
    font-size: 12px;
    bottom: 100%;
    left: 50%;
    transform: translateX(-50%);
    opacity: 0;
    transition: opacity 0.3s ease;
    white-space: nowrap;
    z-index: 9999;
  }
  table td:hover .tooltip {
    visibility: visible;
    opacity: 1;
  }
  </style>

.. raw:: html

  <table class="perf-table">
    <thead>
      <tr>
        <th>Algorithm</th>
        <th>netscience</th>
        <th>amazon0302</th>
        <th>citpatents</th>
        <th>livejournal</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>ancestors</td>
        <td class="red">0.089<span class="tooltip">nx: 491.479us<br>nxcg: 5.497ms<br>delta: -5.005ms</span></td>
        <td class="green">60.463<span class="tooltip">nx: 1.712s<br>nxcg: 28.310ms<br>delta: 1.683s</span></td>
        <td class="red">0.134<span class="tooltip">nx: 4.359ms<br>nxcg: 32.491ms<br>delta: -28.132ms</span></td>
        <td class="green">78.609<span class="tooltip">nx: 56.688s<br>nxcg: 721.145ms<br>delta: 55.967s</span></td>
      </tr>
      <tr>
        <td>average_clustering</td>
        <td class="yellow">1.619<span class="tooltip">nx: 14.918ms<br>nxcg: 9.213ms<br>delta: 5.706ms</span></td>
        <td class="green">293.432<span class="tooltip">nx: 6.745s<br>nxcg: 22.988ms<br>delta: 6.722s</span></td>
        <td class="green">868.635<span class="tooltip">nx: 181.956s<br>nxcg: 209.474ms<br>delta: 181.747s</span></td>
        <td class="green">2828.128<span class="tooltip">nx: 2151.410s<br>nxcg: 760.719ms<br>delta: 2150.649s</span></td>
      </tr>
      <tr>
        <td>betweenness_centrality, k=10</td>
        <td class="red">0.274<span class="tooltip">nx: 5.449ms<br>nxcg: 19.923ms<br>delta: -14.474ms</span></td>
        <td class="green">56.98<span class="tooltip">nx: 14.256s<br>nxcg: 250.186ms<br>delta: 14.005s</span></td>
        <td class="green">99.364<span class="tooltip">nx: 95.752s<br>nxcg: 963.653ms<br>delta: 94.789s</span></td>
        <td class="green">264.882<span class="tooltip">nx: 610.395s<br>nxcg: 2.304s<br>delta: 608.091s</span></td>
      </tr>
      <tr>
        <td>betweenness_centrality, k=100</td>
        <td class="red">0.239<span class="tooltip">nx: 42.450ms<br>nxcg: 177.676ms<br>delta: -135.225ms</span></td>
        <td class="green">50.352<span class="tooltip">nx: 110.614s<br>nxcg: 2.197s<br>delta: 108.417s</span></td>
        <td class="green">520.555<span class="tooltip">nx: 966.550s<br>nxcg: 1.857s<br>delta: 964.694s</span></td>
        <td class="green">487.469<span class="tooltip">nx: 6688.933s<br>nxcg: 13.722s<br>delta: 6675.211s</span></td>
      </tr>
      <tr>
        <td>bfs_edges</td>
        <td class="red">0.035<span class="tooltip">nx: 295.556us<br>nxcg: 8.488ms<br>delta: -8.192ms</span></td>
        <td class="red">0.383<span class="tooltip">nx: 1.260s<br>nxcg: 3.292s<br>delta: -2.032s</span></td>
        <td class="red">0.003<span class="tooltip">nx: 115.556us<br>nxcg: 35.910ms<br>delta: -35.794ms</span></td>
        <td class="yellow">2.141<span class="tooltip">nx: 75.646s<br>nxcg: 35.329s<br>delta: 40.318s</span></td>
      </tr>
      <tr>
        <td>bfs_layers</td>
        <td class="red">0.046<span class="tooltip">nx: 307.147us<br>nxcg: 6.690ms<br>delta: -6.383ms</span></td>
        <td class="green">9.489<span class="tooltip">nx: 327.838ms<br>nxcg: 34.548ms<br>delta: 293.290ms</span></td>
        <td class="red">0.004<span class="tooltip">nx: 122.647us<br>nxcg: 32.934ms<br>delta: -32.811ms</span></td>
        <td class="green">33.468<span class="tooltip">nx: 16.313s<br>nxcg: 487.419ms<br>delta: 15.825s</span></td>
      </tr>
      <tr>
        <td>bfs_predecessors</td>
        <td class="red">0.04<span class="tooltip">nx: 336.403us<br>nxcg: 8.442ms<br>delta: -8.106ms</span></td>
        <td class="red">0.389<span class="tooltip">nx: 1.282s<br>nxcg: 3.293s<br>delta: -2.011s</span></td>
        <td class="red">0.004<span class="tooltip">nx: 139.603us<br>nxcg: 35.985ms<br>delta: -35.845ms</span></td>
        <td class="yellow">1.728<span class="tooltip">nx: 61.628s<br>nxcg: 35.664s<br>delta: 25.964s</span></td>
      </tr>
      <tr>
        <td>bfs_successors</td>
        <td class="red">0.039<span class="tooltip">nx: 329.301us<br>nxcg: 8.441ms<br>delta: -8.112ms</span></td>
        <td class="red">0.491<span class="tooltip">nx: 1.802s<br>nxcg: 3.669s<br>delta: -1.866s</span></td>
        <td class="red">0.004<span class="tooltip">nx: 130.468us<br>nxcg: 35.864ms<br>delta: -35.733ms</span></td>
        <td class="yellow">1.822<span class="tooltip">nx: 62.495s<br>nxcg: 34.297s<br>delta: 28.198s</span></td>
      </tr>
      <tr>
        <td>bfs_tree</td>
        <td class="red">0.121<span class="tooltip">nx: 855.597us<br>nxcg: 7.060ms<br>delta: -6.204ms</span></td>
        <td class="green">58.569<span class="tooltip">nx: 2.929s<br>nxcg: 50.011ms<br>delta: 2.879s</span></td>
        <td class="red">0.011<span class="tooltip">nx: 403.871us<br>nxcg: 35.151ms<br>delta: -34.748ms</span></td>
        <td class="green">55.688<span class="tooltip">nx: 74.665s<br>nxcg: 1.341s<br>delta: 73.324s</span></td>
      </tr>
      <tr>
        <td>clustering</td>
        <td class="yellow">1.596<span class="tooltip">nx: 14.618ms<br>nxcg: 9.162ms<br>delta: 5.456ms</span></td>
        <td class="green">136.185<span class="tooltip">nx: 6.775s<br>nxcg: 49.747ms<br>delta: 6.725s</span></td>
        <td class="green">168.938<span class="tooltip">nx: 181.769s<br>nxcg: 1.076s<br>delta: 180.693s</span></td>
        <td class="green">1132.732<span class="tooltip">nx: 2149.226s<br>nxcg: 1.897s<br>delta: 2147.328s</span></td>
      </tr>
      <tr>
        <td>core_number</td>
        <td class="red">0.223<span class="tooltip">nx: 2.372ms<br>nxcg: 10.652ms<br>delta: -8.280ms</span></td>
        <td class="green">22.456<span class="tooltip">nx: 1.520s<br>nxcg: 67.706ms<br>delta: 1.453s</span></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>degree_centrality</td>
        <td class="red">0.331<span class="tooltip">nx: 361.917us<br>nxcg: 1.092ms<br>delta: -730.266us</span></td>
        <td class="yellow">2.834<span class="tooltip">nx: 75.040ms<br>nxcg: 26.474ms<br>delta: 48.566ms</span></td>
        <td class="yellow">2.037<span class="tooltip">nx: 1.565s<br>nxcg: 768.326ms<br>delta: 796.394ms</span></td>
        <td class="yellow">2.045<span class="tooltip">nx: 2.048s<br>nxcg: 1.002s<br>delta: 1.047s</span></td>
      </tr>
      <tr>
        <td>descendants</td>
        <td class="red">0.059<span class="tooltip">nx: 325.657us<br>nxcg: 5.552ms<br>delta: -5.226ms</span></td>
        <td class="green">38.477<span class="tooltip">nx: 1.259s<br>nxcg: 32.708ms<br>delta: 1.226s</span></td>
        <td class="red">0.004<span class="tooltip">nx: 127.983us<br>nxcg: 31.525ms<br>delta: -31.397ms</span></td>
        <td class="green">82.354<span class="tooltip">nx: 61.836s<br>nxcg: 750.849ms<br>delta: 61.085s</span></td>
      </tr>
      <tr>
        <td>descendants_at_distance</td>
        <td class="red">0.007<span class="tooltip">nx: 26.257us<br>nxcg: 3.593ms<br>delta: -3.567ms</span></td>
        <td class="red">0.003<span class="tooltip">nx: 20.914us<br>nxcg: 6.145ms<br>delta: -6.124ms</span></td>
        <td class="red">0.001<span class="tooltip">nx: 32.306us<br>nxcg: 30.265ms<br>delta: -30.233ms</span></td>
        <td class="red">0.065<span class="tooltip">nx: 5.894ms<br>nxcg: 90.867ms<br>delta: -84.973ms</span></td>
      </tr>
      <tr>
        <td>edge_betweenness_centrality, k=10</td>
        <td class="red">0.167<span class="tooltip">nx: 7.114ms<br>nxcg: 42.690ms<br>delta: -35.576ms</span></td>
        <td class="green">14.605<span class="tooltip">nx: 18.773s<br>nxcg: 1.285s<br>delta: 17.488s</span></td>
        <td class="green">10.153<span class="tooltip">nx: 121.627s<br>nxcg: 11.979s<br>delta: 109.647s</span></td>
        <td class="green">16.778<span class="tooltip">nx: 909.093s<br>nxcg: 54.182s<br>delta: 854.911s</span></td>
      </tr>
      <tr>
        <td>edge_betweenness_centrality, k=100</td>
        <td class="red">0.15<span class="tooltip">nx: 43.901ms<br>nxcg: 292.226ms<br>delta: -248.325ms</span></td>
        <td class="green">24.172<span class="tooltip">nx: 172.498s<br>nxcg: 7.136s<br>delta: 165.361s</span></td>
        <td class="green">68.332<span class="tooltip">nx: 972.557s<br>nxcg: 14.233s<br>delta: 958.325s</span></td>
        <td class="green">112.81<span class="tooltip">nx: 8546.360s<br>nxcg: 75.759s<br>delta: 8470.601s</span></td>
      </tr>
      <tr>
        <td>ego_graph</td>
        <td class="red">0.726<span class="tooltip">nx: 5.584ms<br>nxcg: 7.693ms<br>delta: -2.109ms</span></td>
        <td class="green">104.093<span class="tooltip">nx: 5.857s<br>nxcg: 56.265ms<br>delta: 5.801s</span></td>
        <td class="red">0.008<span class="tooltip">nx: 1.431ms<br>nxcg: 187.666ms<br>delta: -186.235ms</span></td>
        <td class="green">150.036<span class="tooltip">nx: 302.519s<br>nxcg: 2.016s<br>delta: 300.503s</span></td>
      </tr>
      <tr>
        <td>eigenvector_centrality</td>
        <td class="green">7.409<span class="tooltip">nx: 28.642ms<br>nxcg: 3.866ms<br>delta: 24.776ms</span></td>
        <td>--</td>
        <td class="green">263.997<span class="tooltip">nx: 242.879s<br>nxcg: 920.007ms<br>delta: 241.959s</span></td>
        <td class="green">376.161<span class="tooltip">nx: 458.153s<br>nxcg: 1.218s<br>delta: 456.935s</span></td>
      </tr>
      <tr>
        <td>generic_bfs_edges</td>
        <td class="red">0.032<span class="tooltip">nx: 276.460us<br>nxcg: 8.570ms<br>delta: -8.294ms</span></td>
        <td class="red">0.38<span class="tooltip">nx: 1.238s<br>nxcg: 3.256s<br>delta: -2.018s</span></td>
        <td class="red">0.003<span class="tooltip">nx: 109.543us<br>nxcg: 35.921ms<br>delta: -35.811ms</span></td>
        <td class="yellow">2.129<span class="tooltip">nx: 75.324s<br>nxcg: 35.374s<br>delta: 39.949s</span></td>
      </tr>
      <tr>
        <td>hits</td>
        <td class="yellow">1.703<span class="tooltip">nx: 7.290ms<br>nxcg: 4.280ms<br>delta: 3.010ms</span></td>
        <td>--</td>
        <td class="green">33.932<span class="tooltip">nx: 64.038s<br>nxcg: 1.887s<br>delta: 62.150s</span></td>
        <td class="green">87.124<span class="tooltip">nx: 233.893s<br>nxcg: 2.685s<br>delta: 231.209s</span></td>
      </tr>
      <tr>
        <td>in_degree_centrality</td>
        <td class="red">0.459<span class="tooltip">nx: 293.520us<br>nxcg: 639.090us<br>delta: -345.570us</span></td>
        <td class="yellow">2.095<span class="tooltip">nx: 57.231ms<br>nxcg: 27.314ms<br>delta: 29.917ms</span></td>
        <td class="yellow">1.645<span class="tooltip">nx: 1.275s<br>nxcg: 775.082ms<br>delta: 499.672ms</span></td>
        <td class="yellow">1.808<span class="tooltip">nx: 1.798s<br>nxcg: 994.536ms<br>delta: 803.470ms</span></td>
      </tr>
      <tr>
        <td>is_weakly_connected</td>
        <td class="red">0.001<span class="tooltip">nx: 28.767us<br>nxcg: 31.511ms<br>delta: -31.482ms</span></td>
        <td class="green">9.442<span class="tooltip">nx: 469.725ms<br>nxcg: 49.747ms<br>delta: 419.978ms</span></td>
        <td class="green">52.655<span class="tooltip">nx: 10.313s<br>nxcg: 195.850ms<br>delta: 10.117s</span></td>
        <td class="green">64.03<span class="tooltip">nx: 22.803s<br>nxcg: 356.123ms<br>delta: 22.446s</span></td>
      </tr>
      <tr>
        <td>k_truss</td>
        <td class="green">8.31<span class="tooltip">nx: 12.342ms<br>nxcg: 1.485ms<br>delta: 10.857ms</span></td>
        <td class="green">539.652<span class="tooltip">nx: 6.103s<br>nxcg: 11.309ms<br>delta: 6.092s</span></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>katz_centrality</td>
        <td class="green">122.153<span class="tooltip">nx: 4.219s<br>nxcg: 34.535ms<br>delta: 4.184s</span></td>
        <td class="green">648.055<span class="tooltip">nx: 24.870s<br>nxcg: 38.376ms<br>delta: 24.831s</span></td>
        <td class="green">300.147<span class="tooltip">nx: 274.585s<br>nxcg: 914.835ms<br>delta: 273.670s</span></td>
        <td class="green">24767.824<span class="tooltip">nx: 76304.239s<br>nxcg: 3.081s<br>delta: 76301.159s</span></td>
      </tr>
      <tr>
        <td>louvain_communities</td>
        <td class="yellow">2.479<span class="tooltip">nx: 72.361ms<br>nxcg: 29.185ms<br>delta: 43.176ms</span></td>
        <td class="green">103.205<span class="tooltip">nx: 43.659s<br>nxcg: 423.034ms<br>delta: 43.236s</span></td>
        <td class="green">272.652<span class="tooltip">nx: 2409.300s<br>nxcg: 8.837s<br>delta: 2400.464s</span></td>
        <td class="green">208.843<span class="tooltip">nx: 4291.899s<br>nxcg: 20.551s<br>delta: 4271.348s</span></td>
      </tr>
      <tr>
        <td>number_weakly_connected_components</td>
        <td class="red">0.041<span class="tooltip">nx: 1.296ms<br>nxcg: 31.745ms<br>delta: -30.449ms</span></td>
        <td class="green">9.956<span class="tooltip">nx: 493.798ms<br>nxcg: 49.599ms<br>delta: 444.199ms</span></td>
        <td class="green">54.189<span class="tooltip">nx: 10.795s<br>nxcg: 199.216ms<br>delta: 10.596s</span></td>
        <td class="green">64.136<span class="tooltip">nx: 23.510s<br>nxcg: 366.558ms<br>delta: 23.143s</span></td>
      </tr>
      <tr>
        <td>out_degree_centrality</td>
        <td class="red">0.453<span class="tooltip">nx: 287.390us<br>nxcg: 634.436us<br>delta: -347.046us</span></td>
        <td class="yellow">2.156<span class="tooltip">nx: 58.691ms<br>nxcg: 27.227ms<br>delta: 31.464ms</span></td>
        <td class="yellow">1.549<span class="tooltip">nx: 1.202s<br>nxcg: 775.760ms<br>delta: 426.122ms</span></td>
        <td class="yellow">1.727<span class="tooltip">nx: 1.714s<br>nxcg: 992.363ms<br>delta: 721.574ms</span></td>
      </tr>
      <tr>
        <td>overall_reciprocity</td>
        <td class="green">7.901<span class="tooltip">nx: 15.359ms<br>nxcg: 1.944ms<br>delta: 13.415ms</span></td>
        <td class="green">563.312<span class="tooltip">nx: 4.525s<br>nxcg: 8.032ms<br>delta: 4.517s</span></td>
        <td class="green">1524.889<span class="tooltip">nx: 78.576s<br>nxcg: 51.529ms<br>delta: 78.524s</span></td>
        <td class="green">2257.021<span class="tooltip">nx: 239.907s<br>nxcg: 106.294ms<br>delta: 239.801s</span></td>
      </tr>
      <tr>
        <td>pagerank</td>
        <td class="yellow">1.696<span class="tooltip">nx: 6.589ms<br>nxcg: 3.885ms<br>delta: 2.704ms</span></td>
        <td class="green">76.288<span class="tooltip">nx: 2.828s<br>nxcg: 37.065ms<br>delta: 2.791s</span></td>
        <td class="green">82.128<span class="tooltip">nx: 72.134s<br>nxcg: 878.314ms<br>delta: 71.256s</span></td>
        <td class="green">188.302<span class="tooltip">nx: 223.766s<br>nxcg: 1.188s<br>delta: 222.578s</span></td>
      </tr>
      <tr>
        <td>pagerank_personalized</td>
        <td class="yellow">1.406<span class="tooltip">nx: 6.942ms<br>nxcg: 4.939ms<br>delta: 2.003ms</span></td>
        <td class="green">55.666<span class="tooltip">nx: 3.265s<br>nxcg: 58.648ms<br>delta: 3.206s</span></td>
        <td class="green">46.6<span class="tooltip">nx: 65.932s<br>nxcg: 1.415s<br>delta: 64.517s</span></td>
        <td class="green">120.002<span class="tooltip">nx: 237.002s<br>nxcg: 1.975s<br>delta: 235.027s</span></td>
      </tr>
      <tr>
        <td>reciprocity</td>
        <td class="red">0.01<span class="tooltip">nx: 22.615us<br>nxcg: 2.313ms<br>delta: -2.291ms</span></td>
        <td class="red">0.013<span class="tooltip">nx: 43.303us<br>nxcg: 3.431ms<br>delta: -3.388ms</span></td>
        <td class="red">0.009<span class="tooltip">nx: 54.886us<br>nxcg: 5.864ms<br>delta: -5.809ms</span></td>
        <td class="red">0.172<span class="tooltip">nx: 2.705ms<br>nxcg: 15.737ms<br>delta: -13.032ms</span></td>
      </tr>
      <tr>
        <td>shortest_path</td>
        <td class="red">0.064<span class="tooltip">nx: 393.284us<br>nxcg: 6.105ms<br>delta: -5.711ms</span></td>
        <td class="yellow">1.1<span class="tooltip">nx: 960.214ms<br>nxcg: 872.857ms<br>delta: 87.358ms</span></td>
        <td class="red">0.005<span class="tooltip">nx: 168.884us<br>nxcg: 33.088ms<br>delta: -32.919ms</span></td>
        <td class="yellow">1.344<span class="tooltip">nx: 49.690s<br>nxcg: 36.964s<br>delta: 12.726s</span></td>
      </tr>
      <tr>
        <td>single_source_shortest_path_length</td>
        <td class="red">0.042<span class="tooltip">nx: 235.942us<br>nxcg: 5.613ms<br>delta: -5.377ms</span></td>
        <td class="green">6.285<span class="tooltip">nx: 280.148ms<br>nxcg: 44.572ms<br>delta: 235.576ms</span></td>
        <td class="red">0.003<span class="tooltip">nx: 89.561us<br>nxcg: 31.926ms<br>delta: -31.836ms</span></td>
        <td class="green">14.241<span class="tooltip">nx: 15.347s<br>nxcg: 1.078s<br>delta: 14.269s</span></td>
      </tr>
      <tr>
        <td>single_target_shortest_path_length</td>
        <td class="red">0.042<span class="tooltip">nx: 240.253us<br>nxcg: 5.682ms<br>delta: -5.442ms</span></td>
        <td class="green">5.482<span class="tooltip">nx: 290.073ms<br>nxcg: 52.910ms<br>delta: 237.162ms</span></td>
        <td class="red">0.098<span class="tooltip">nx: 3.321ms<br>nxcg: 33.767ms<br>delta: -30.446ms</span></td>
        <td class="green">7.672<span class="tooltip">nx: 11.358s<br>nxcg: 1.480s<br>delta: 9.878s</span></td>
      </tr>
      <tr>
        <td>transitivity</td>
        <td class="yellow">1.682<span class="tooltip">nx: 15.338ms<br>nxcg: 9.116ms<br>delta: 6.222ms</span></td>
        <td class="green">331.111<span class="tooltip">nx: 7.525s<br>nxcg: 22.726ms<br>delta: 7.502s</span></td>
        <td class="green">937.121<span class="tooltip">nx: 196.579s<br>nxcg: 209.769ms<br>delta: 196.369s</span></td>
        <td class="green">2831.727<span class="tooltip">nx: 2157.310s<br>nxcg: 761.836ms<br>delta: 2156.548s</span></td>
      </tr>
      <tr>
        <td>triangles</td>
        <td class="red">0.625<span class="tooltip">nx: 5.069ms<br>nxcg: 8.105ms<br>delta: -3.036ms</span></td>
        <td class="green">56.354<span class="tooltip">nx: 2.591s<br>nxcg: 45.977ms<br>delta: 2.545s</span></td>
        <td class="green">55.831<span class="tooltip">nx: 55.304s<br>nxcg: 990.560ms<br>delta: 54.313s</span></td>
        <td class="green">124.634<span class="tooltip">nx: 220.697s<br>nxcg: 1.771s<br>delta: 218.926s</span></td>
      </tr>
      <tr>
        <td>weakly_connected_components</td>
        <td class="red">0.035<span class="tooltip">nx: 1.275ms<br>nxcg: 36.601ms<br>delta: -35.326ms</span></td>
        <td class="green">7.677<span class="tooltip">nx: 493.186ms<br>nxcg: 64.240ms<br>delta: 428.946ms</span></td>
        <td class="green">11.559<span class="tooltip">nx: 10.928s<br>nxcg: 945.427ms<br>delta: 9.983s</span></td>
        <td class="green">20.597<span class="tooltip">nx: 24.027s<br>nxcg: 1.167s<br>delta: 22.861s</span></td>
      </tr>
    </tbody>
  </table>

--------------

.. raw:: html

   <style>
   .meta-footer {
       font-size: 12px;
       line-height: 1.1;
       color: #666;
   }
   </style>

.. container:: meta-footer

   Benchmarks were run on a system with the following specifications:

   - **NetworkX Version**: 3.4.2
   - **nx-cugraph Version**: 25.02.00a36
   - **CPU**: Intel(R) Xeon(R) w9-3495X (56 cores)
   - **GPU**: 1 x NVIDIA GeForce RTX 3090 (24.0 GB)
   - **CUDA Version**: 12.8
   - **RAM**: 251.18 GB
   - **OS**: #115-Ubuntu SMP Mon Apr 15 09:52:04 UTC 2024
