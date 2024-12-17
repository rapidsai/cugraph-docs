#!/bin/bash
# Copyright (c) 2023-2024, NVIDIA CORPORATION.

set -euo pipefail

rapids-logger "Create test conda environment"
. /opt/conda/etc/profile.d/conda.sh

RAPIDS_VERSION="$(rapids-version)"
RAPIDS_VERSION_MAJOR_MINOR="$(rapids-version-major-minor)"

rapids-dependency-file-generator \
  --output conda \
  --file-key docs \
  --matrix "cuda=${RAPIDS_CUDA_VERSION%.*};arch=$(arch);py=${RAPIDS_PY_VERSION}" | tee env.yaml

rapids-mamba-retry env create --yes -f env.yaml -n docs
conda activate docs

export RAPIDS_DOCS_DIR="$(mktemp -d)"

rapids-print-env

if [[ "${RAPIDS_CUDA_VERSION}" == "11.8.0" ]]; then
  DGL_CHANNEL="dglteam/label/cu118"
else
  DGL_CHANNEL="dglteam/label/cu121"
fi

rapids-mamba-retry install \
  --channel conda-forge \
  --channel pyg \
  --channel nvidia \
  --channel "${DGL_CHANNEL}" \
  "libcugraph==${RAPIDS_VERSION}.*" \
  "pylibcugraph=${RAPIDS_VERSION}.*" \
  "cugraph=${RAPIDS_VERSION}.*" \
  "cugraph-pyg=${RAPIDS_VERSION}.*" \
  "cugraph-dgl=${RAPIDS_VERSION}.*" \
  "libcugraph_etl=${RAPIDS_VERSION}.*" \
  "pylibcugraphops=${RAPIDS_VERSION}.*" \
  "pylibwholegraph=${RAPIDS_VERSION}.*" \
  pytorch \
  "cuda-version=${RAPIDS_CUDA_VERSION%.*}"

PROJ_LIST=("libcugraph libcugraphops libwholegraph")

for PROJECT in ${PROJ_LIST}; do
  rapids-logger "Download ${PROJECT} xml_tar"
  TMP_DIR=$(mktemp -d)
  export XML_DIR_${PROJECT^^}="$TMP_DIR"
  curl "https://d1664dvumjb44w.cloudfront.net/${PROJECT}/xml_tar/${RAPIDS_VERSION_MAJOR_MINOR}/xml.tar.gz" | tar -xzf - -C "${TMP_DIR}"
done


rapids-logger "Build Python docs"
pushd docs/cugraph-docs
# Ensure cugraph is importable, since sphinx does not report details about this
# type of failure well.
python -c "import cugraph; print(f'Using cugraph: {cugraph}')"
sphinx-build -b dirhtml source _html
mkdir -p "${RAPIDS_DOCS_DIR}/cugraph-docs/html"
mv _html/* "${RAPIDS_DOCS_DIR}/cugraph-docs/html"
popd

RAPIDS_VERSION_NUMBER="${RAPIDS_VERSION_MAJOR_MINOR}" rapids-upload-docs
