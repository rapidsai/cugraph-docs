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
