#!/bin/bash

# Copyright (c) 2019-2024, NVIDIA CORPORATION.

# cugraph build script

# This script is used to build the component(s) in this repo from
# source, and can be called with various options to customize the
# build as needed (see the help output for details)

# Abort script on first error
set -e

NUMARGS=$#
ARGS=$*

# NOTE: ensure all dir changes are relative to the location of this
# script, and that this script resides in the repo dir!
REPODIR=$(cd $(dirname $0); pwd)

RAPIDS_VERSION="$(sed -E -e 's/^([0-9]{2})\.([0-9]{2})\.([0-9]{2}).*$/\1.\2/' VERSION)"

# Valid args to this script (all possible targets and options) - only one per line
VALIDARGS="
   clean
   docs
   -v
   -g
   -n
   --clean
   -h
   --help
"

HELP="$0 [<target> ...] [<flag> ...]
 where <target> is:
   clean                      - remove all existing build artifacts and configuration (start over)
   docs                       - build the docs (default)
 and <flag> is:
   -v                         - verbose build mode
   --clean                    - clean
   -h                         - print this text

 default action (no args) is to build docs

"


# Set defaults for vars modified by flags to this script
VERBOSE_FLAG=""

function hasArg {
    (( ${NUMARGS} != 0 )) && (echo " ${ARGS} " | grep -q " $1 ")
}

function buildDefault {
    (( ${NUMARGS} == 0 )) || !(echo " ${ARGS} " | grep -q " [^-][a-zA-Z0-9\_\-]\+ ")
}


if hasArg -h || hasArg --help; then
    echo "${HELP}"
    exit 0
fi

# Check for valid usage
if (( ${NUMARGS} != 0 )); then
    for a in ${ARGS}; do
        if ! (echo "${VALIDARGS}" | grep -q "^[[:blank:]]*${a}$"); then
            echo "Invalid option: ${a}"
            exit 1
        fi
    done
fi

# Process flags
if hasArg -v; then
    VERBOSE_FLAG="-v"
fi



if hasArg clean; then
    # Ignore errors for clean since missing files, etc. are not failures
    set +e

    # Clean up the docs
    cd ${REPODIR}/docs/cugraph-docs
    make clean
    # Go back to failing on first error for all other operations
    set -e
fi

# Build the docs
# C/C++?CUDA libraries
if hasArg docs || buildDefault; then
    PROJ_LIST=("libcugraph libcugraphops libwholegraph")
    for PROJECT in ${PROJ_LIST}; do
        echo "PROJECT IS ${PROJECT}"
        XML_DIR="${REPODIR}/docs/cugraph-docs/${PROJECT}"
        rm -rf "${XML_DIR}"
        mkdir -p "${XML_DIR}"
        export XML_DIR_${PROJECT^^}="$XML_DIR"
        echo "Pulling https://d1664dvumjb44w.cloudfront.net/${PROJECT}/xml_tar/${RAPIDS_VERSION}/xml.tar.gz"
        curl -O "https://d1664dvumjb44w.cloudfront.net/${PROJECT}/xml_tar/${RAPIDS_VERSION}/xml.tar.gz"

        tar -xzf xml.tar.gz -C "${XML_DIR}"
        rm "./xml.tar.gz"
    done

    #echo "making libcugraph doc dir"
    #rm -rf ${REPODIR}/docs/cugraph/libcugraph
    #mkdir -p ${REPODIR}/docs/cugraph/libcugraph

    #export XML_DIR_LIBCUGRAPH="${REPODIR}/cpp/doxygen/xml"

    cd ${REPODIR}/docs/cugraph-docs
    make html
fi