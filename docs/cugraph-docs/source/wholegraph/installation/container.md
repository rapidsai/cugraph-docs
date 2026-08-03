# Run WholeGraph in a container

Use a RAPIDS container when you want a preconfigured Linux, CUDA, and RAPIDS
environment. Select an image whose RAPIDS and CUDA versions match the desired
WholeGraph packages.

The current image names and launch commands are maintained in the
[RAPIDS installation guide](https://docs.rapids.ai/install/#docker). Follow
that guide instead of pinning an old PyTorch or CUDA base image in application
documentation.

WholeGraph requires:

- access to NVIDIA GPUs through the NVIDIA Container Toolkit;
- shared memory sized for the workload; and
- the networking and IPC access required by NCCL for multi-GPU or multi-node
  execution.

After starting the container, verify the installed version:

```bash
python -c "import pylibwholegraph; print(pylibwholegraph.__version__)"
```

If the selected RAPIDS image does not include WholeGraph, install the matching
packages using the [WholeGraph installation instructions](getting_wholegraph.md).
