# Installing the final nx-cugraph release

nx-cugraph was deprecated in RAPIDS 26.12, its final release. It is not
included in RAPIDS 27.02 or later. Use a separate environment with matching
26.12 RAPIDS packages when installing this historical release.

After the 26.12 release is published, install the final Conda package with:

```bash
conda install -c rapidsai -c conda-forge 'nx-cugraph=26.12.*'
```

Or install the final wheel for the appropriate CUDA major version:

```bash
# CUDA 13
pip install 'nx-cugraph-cu13==26.12.*' --extra-index-url https://pypi.nvidia.com

# CUDA 12
pip install 'nx-cugraph-cu12==26.12.*' --extra-index-url https://pypi.nvidia.com
```

There are no nx-cugraph packages for RAPIDS 27.02 or later. For current
GPU graph analytics, use [cuGraph](../installation/getting_cugraph.md).
