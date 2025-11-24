#!/bin/bash
# Copyright (c) 2023-2025, NVIDIA CORPORATION.

set -euo pipefail

rapids-logger "Create test conda environment"
. /opt/conda/etc/profile.d/conda.sh

rapids-logger "Configuring conda strict channel priority"
conda config --set channel_priority strict

RAPIDS_VERSION_MAJOR_MINOR="$(rapids-version-major-minor)"

rapids-dependency-file-generator \
  --output conda \
  --file-key docs \
  --matrix "cuda=${RAPIDS_CUDA_VERSION%.*};arch=$(arch);py=${RAPIDS_PY_VERSION}" | tee env.yaml

rapids-mamba-retry env create --yes -f env.yaml -n docs
conda activate docs

RAPIDS_DOCS_DIR="$(mktemp -d)"
export RAPIDS_DOCS_DIR

rapids-print-env

PROJ_LIST=("libcugraph" "libwholegraph")

for PROJECT in "${PROJ_LIST[@]}"; do
  rapids-logger "Download ${PROJECT} xml_tar"
  TMP_DIR=$(mktemp -d)
  export "XML_DIR_${PROJECT^^}"="$TMP_DIR"

  curl "https://d1664dvumjb44w.cloudfront.net/${PROJECT}/xml_tar/${RAPIDS_VERSION_MAJOR_MINOR}/xml.tar.gz" | tar -xzf - -C "${TMP_DIR}"
done


rapids-logger "Build Python docs"
pushd docs/cugraph-docs
# Ensure cugraph is importable, since sphinx does not report details about this
# type of failure well.
python -c "import cugraph; print(f'Using cugraph: {cugraph}')"
sphinx-build -b dirhtml source _html
mkdir -p "${RAPIDS_DOCS_DIR}/cugraph/html"
mv _html/* "${RAPIDS_DOCS_DIR}/cugraph/html"
popd

RAPIDS_VERSION_NUMBER="${RAPIDS_VERSION_MAJOR_MINOR}" rapids-upload-docs
