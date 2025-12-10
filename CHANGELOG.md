# cugraph-docs 25.12.00 (10 Dec 2025)

### 🚨 Breaking Changes
* Require CUDA 12.2+ by @jakirkham in https://github.com/rapidsai/cugraph-docs/pull/169
### 🐛 Bug Fixes
* refactored update-version.sh to handle new branching strategy by @rockhowse in https://github.com/rapidsai/cugraph-docs/pull/170
* removed reference to uniform_neighbor_sample by @rockhowse in https://github.com/rapidsai/cugraph-docs/pull/171
### 📖 Documentation
* Update docs tree for cuGraph-PyG by @alexbarghi-nv in https://github.com/rapidsai/cugraph-docs/pull/165
* Remove cugraph-service docs by @jameslamb in https://github.com/rapidsai/cugraph-docs/pull/177
### 🛠️ Improvements
* Use main branch by @bdice in https://github.com/rapidsai/cugraph-docs/pull/167
* Use main shared-workflows branch by @bdice in https://github.com/rapidsai/cugraph-docs/pull/168

## New Contributors
* @alexbarghi-nv made their first contribution in https://github.com/rapidsai/cugraph-docs/pull/165
* @rockhowse made their first contribution in https://github.com/rapidsai/cugraph-docs/pull/170

**Full Changelog**: https://github.com/rapidsai/cugraph-docs/compare/v25.12.00a...release/25.12

# cugraph-docs 25.10.00 (8 Oct 2025)

## 🐛 Bug Fixes

- Restore CUDA environment script in documentation ([#162](https://github.com/rapidsai/cugraph-docs/pull/162)) [@MathisHammel](https://github.com/MathisHammel)

## 📖 Documentation

- Deprecating cuGraph service and fixing a header error ([#159](https://github.com/rapidsai/cugraph-docs/pull/159)) [@acostadon](https://github.com/acostadon)
- updating algo pages for changes especially mg algos ([#157](https://github.com/rapidsai/cugraph-docs/pull/157)) [@acostadon](https://github.com/acostadon)
- Adds Leiden MG to API ([#156](https://github.com/rapidsai/cugraph-docs/pull/156)) [@acostadon](https://github.com/acostadon)
- Fixes compiler version on contributing page ([#152](https://github.com/rapidsai/cugraph-docs/pull/152)) [@acostadon](https://github.com/acostadon)

## 🛠️ Improvements

- Fix update version script ([#158](https://github.com/rapidsai/cugraph-docs/pull/158)) [@AyodeAwe](https://github.com/AyodeAwe)
- Configure repo for automatic release notes generation ([#155](https://github.com/rapidsai/cugraph-docs/pull/155)) [@AyodeAwe](https://github.com/AyodeAwe)
- build and test with CUDA 13.0.0 ([#154](https://github.com/rapidsai/cugraph-docs/pull/154)) [@jameslamb](https://github.com/jameslamb)
- Merge branch-25.08 into branch-25.10 ([#147](https://github.com/rapidsai/cugraph-docs/pull/147)) [@jameslamb](https://github.com/jameslamb)

# cugraph-docs 25.08.00 (6 Aug 2025)

## 🚨 Breaking Changes

- remove cugraph-dgl references ([#146](https://github.com/rapidsai/cugraph-docs/pull/146)) [@jameslamb](https://github.com/jameslamb)

## 🐛 Bug Fixes

- Update telemetry-summarize ([#136](https://github.com/rapidsai/cugraph-docs/pull/136)) [@msarahan](https://github.com/msarahan)

## 📖 Documentation

- added new blogs for 2025 and fixed cuda docs per review comment ([#143](https://github.com/rapidsai/cugraph-docs/pull/143)) [@acostadon](https://github.com/acostadon)
- Removing CUDA 11 references and fixing outdated wholegraph info ([#141](https://github.com/rapidsai/cugraph-docs/pull/141)) [@acostadon](https://github.com/acostadon)
- Adds Commmunity and Louvain landing pages ([#139](https://github.com/rapidsai/cugraph-docs/pull/139)) [@acostadon](https://github.com/acostadon)
- add docs on CI workflow inputs ([#137](https://github.com/rapidsai/cugraph-docs/pull/137)) [@jameslamb](https://github.com/jameslamb)
- Fixing links issues with Sphinx ([#134](https://github.com/rapidsai/cugraph-docs/pull/134)) [@acostadon](https://github.com/acostadon)
- minimal path change and added hyphen to verify version ([#133](https://github.com/rapidsai/cugraph-docs/pull/133)) [@acostadon](https://github.com/acostadon)
- changed the formulas to match myst-parser ([#132](https://github.com/rapidsai/cugraph-docs/pull/132)) [@acostadon](https://github.com/acostadon)

## 🛠️ Improvements

- remove cugraph-dgl references ([#146](https://github.com/rapidsai/cugraph-docs/pull/146)) [@jameslamb](https://github.com/jameslamb)
- Remove channels ([#138](https://github.com/rapidsai/cugraph-docs/pull/138)) [@vyasr](https://github.com/vyasr)
- Use CUDA 12.9 in Conda, Devcontainers, Spark, GHA, etc. ([#135](https://github.com/rapidsai/cugraph-docs/pull/135)) [@jakirkham](https://github.com/jakirkham)
- refactor(shellcheck): fix all shellcheck warnings/errors ([#131](https://github.com/rapidsai/cugraph-docs/pull/131)) [@gforsyth](https://github.com/gforsyth)
- Forward-merge branch-25.06 into branch-25.08 ([#119](https://github.com/rapidsai/cugraph-docs/pull/119)) [@gforsyth](https://github.com/gforsyth)

# cugraph-docs 25.06.00 (5 Jun 2025)

## 🐛 Bug Fixes

- removed classes in rst that had been removed from cugraph-gnn ([#107](https://github.com/rapidsai/cugraph-docs/pull/107)) [@acostadon](https://github.com/acostadon)
- Branch 25.06 merge 25.04 ([#106](https://github.com/rapidsai/cugraph-docs/pull/106)) [@acostadon](https://github.com/acostadon)

## 📖 Documentation

- Add `to_numpy_array` to list of Supported Algorithms ([#125](https://github.com/rapidsai/cugraph-docs/pull/125)) [@nv-rliu](https://github.com/nv-rliu)
- fixed image location and link ([#118](https://github.com/rapidsai/cugraph-docs/pull/118)) [@acostadon](https://github.com/acostadon)
- remove dgl from docs ([#116](https://github.com/rapidsai/cugraph-docs/pull/116)) [@acostadon](https://github.com/acostadon)
- Add `to_scipy_sparse_array` (and others) to nx-cugraph docs ([#112](https://github.com/rapidsai/cugraph-docs/pull/112)) [@eriknw](https://github.com/eriknw)
- Add FA2 to Table ([#109](https://github.com/rapidsai/cugraph-docs/pull/109)) [@nv-rliu](https://github.com/nv-rliu)

## 🛠️ Improvements

- switch from &#39;run_script&#39; to &#39;script&#39; in GitHub Actions workflows ([#121](https://github.com/rapidsai/cugraph-docs/pull/121)) [@jameslamb](https://github.com/jameslamb)
- Finish CUDA 12.9 migration and use branch-25.06 workflows ([#117](https://github.com/rapidsai/cugraph-docs/pull/117)) [@bdice](https://github.com/bdice)
- Build and test with CUDA 12.9.0 ([#114](https://github.com/rapidsai/cugraph-docs/pull/114)) [@bdice](https://github.com/bdice)
- Add support for Python 3.13 ([#113](https://github.com/rapidsai/cugraph-docs/pull/113)) [@gforsyth](https://github.com/gforsyth)

# cugraph-docs 25.04.00 (9 Apr 2025)

## 🐛 Bug Fixes

- changed the version of dgl dependency ([#103](https://github.com/rapidsai/cugraph-docs/pull/103)) [@acostadon](https://github.com/acostadon)

## 🛠️ Improvements

- require sphinx&lt;8.2.0, update CODEOWNERS ([#100](https://github.com/rapidsai/cugraph-docs/pull/100)) [@jameslamb](https://github.com/jameslamb)
- merge branch-25.02 into branch-25.04 ([#99](https://github.com/rapidsai/cugraph-docs/pull/99)) [@jameslamb](https://github.com/jameslamb)

# cugraph-docs 25.02.00 (13 Feb 2025)

## 📖 Documentation

- fixed formulas and paths and corrected a typo ([#96](https://github.com/rapidsai/cugraph-docs/pull/96)) [@acostadon](https://github.com/acostadon)
- adding contributing doc so it can be removed from cugraph repo ([#90](https://github.com/rapidsai/cugraph-docs/pull/90)) [@acostadon](https://github.com/acostadon)
- Add `jaccard_coefficient` algorithm to nx-cugraph ([#87](https://github.com/rapidsai/cugraph-docs/pull/87)) [@eriknw](https://github.com/eriknw)
- Add `leiden_communities` to nx-cugraph supported algorithms ([#86](https://github.com/rapidsai/cugraph-docs/pull/86)) [@eriknw](https://github.com/eriknw)
- Add `lowest_common_ancestor` algorithm to nx-cugraph ([#85](https://github.com/rapidsai/cugraph-docs/pull/85)) [@eriknw](https://github.com/eriknw)
- fixed errors in math formula format ([#84](https://github.com/rapidsai/cugraph-docs/pull/84)) [@acostadon](https://github.com/acostadon)
- updating docs for latest cugraph changes ([#81](https://github.com/rapidsai/cugraph-docs/pull/81)) [@acostadon](https://github.com/acostadon)
- Adds legacy graph docs to API ([#79](https://github.com/rapidsai/cugraph-docs/pull/79)) [@acostadon](https://github.com/acostadon)
- more granularity in the cpp api and fixed some links ([#77](https://github.com/rapidsai/cugraph-docs/pull/77)) [@acostadon](https://github.com/acostadon)
- Add nxcg Benchmark Algo Table Page ([#75](https://github.com/rapidsai/cugraph-docs/pull/75)) [@nv-rliu](https://github.com/nv-rliu)
- Update Bug In Algo Table ([#74](https://github.com/rapidsai/cugraph-docs/pull/74)) [@nv-rliu](https://github.com/nv-rliu)
- removed algorithms from the path of the cpp links and added reorganization blurb ([#73](https://github.com/rapidsai/cugraph-docs/pull/73)) [@acostadon](https://github.com/acostadon)
- changed from to on to test if changes are being pushed to the cloud ([#68](https://github.com/rapidsai/cugraph-docs/pull/68)) [@acostadon](https://github.com/acostadon)
- remove &quot;-docs&quot; from html publish path ([#67](https://github.com/rapidsai/cugraph-docs/pull/67)) [@acostadon](https://github.com/acostadon)
- Fixes to previous update from cugraph to cugraph-docs and added back c++ docs ([#66](https://github.com/rapidsai/cugraph-docs/pull/66)) [@acostadon](https://github.com/acostadon)
- Adds the latest docs code from cugraph repo ([#65](https://github.com/rapidsai/cugraph-docs/pull/65)) [@acostadon](https://github.com/acostadon)

## 🛠️ Improvements

- Build with CUDA 12.8.0 ([#97](https://github.com/rapidsai/cugraph-docs/pull/97)) [@jameslamb](https://github.com/jameslamb)
- Add shellcheck to pre-commit and fix warnings ([#80](https://github.com/rapidsai/cugraph-docs/pull/80)) [@gforsyth](https://github.com/gforsyth)
- remove references to cugraph-ops ([#72](https://github.com/rapidsai/cugraph-docs/pull/72)) [@jameslamb](https://github.com/jameslamb)
- simplify building and testing configs ([#71](https://github.com/rapidsai/cugraph-docs/pull/71)) [@jameslamb](https://github.com/jameslamb)
- add docs-building CI ([#46](https://github.com/rapidsai/cugraph-docs/pull/46)) [@jameslamb](https://github.com/jameslamb)

# cugraph 24.08.00 (11 Jun 2024)

## 🚨 Breaking Changes

- Initial version to build projects that are already archiving to the cloud.
