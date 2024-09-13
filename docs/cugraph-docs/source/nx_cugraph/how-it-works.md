# How it Works

NetworkX has the ability to **dispatch function calls to separately-installed third-party backends**.

NetworkX backends let users experience improved performance and/or additional functionality without changing their NetworkX Python code. Examples include backends that provide algorithm acceleration using GPUs, parallel processing, graph database integration, and more.

While NetworkX is a pure-Python implementation with minimal to no dependencies, backends may be written in other languages and require specialized hardware and/or OS support, additional software dependencies, or even separate services. Installation instructions vary based on the backend, and additional information can be found from the individual backend project pages listed in the NetworkX Backend Gallery.

Example code block:

```python
In [1]: import nx_cugraph as nxcg

In [2]: 1+1 == 2

```

Some more text here.

Here is an image displaying execution flow.
<!-- ![nxcg-execution-flow](../_static/flow.png) -->

Some more text here.

---
**NOTE**

It works with almost all markdown flavours (the below blank line matters).

---

Other RAPIDS things to note:

1. `"managed_pool"` (default, if supported): CUDA Unified Memory (managed memory) with RMM's asynchronous pool allocator.
2. `"managed"`: CUDA Unified Memory, (managed memory) with no pool allocator.
3. `"async"`: CUDA's built-in pool asynchronous pool allocator with normal CUDA device memory.
4. `"pool"` (default if `"managed_pool"` is not supported): RMM's asynchronous pool allocator with normal CUDA device memory.
5. `"cuda"`: normal CUDA device memory with no pool allocator.