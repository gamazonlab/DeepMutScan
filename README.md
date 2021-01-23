## DeepMutScan [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/gamazonlab/DeepMutScan/blob/master/LICENSE)

Bo Wang & Eric R. Gamazon  

## Reference

Modeling mutational effects on biochemical phenotypes using convolutional neural networks: application to SARS-CoV-2

## Abstract

Biochemical phenotypes are major indexes for protein characterization and function. They are determined, at least in part, by the intrinsic physicochemical properties of amino acids and may be reflected in the protein three-dimensional structure. Modeling mutational effects on biochemical phenotypes is a critical step for understanding protein function and disease mechanism as well as enabling drug discovery. Deep Mutational Scanning (DMS) experiments have been performed on SARS-CoV-2’s spike receptor binding domain and the human ACE2 zinc-binding peptidase domain – both central players in viral infection and evolution and antibody evasion - quantifying how mutations impact binding affinity and protein expression. Here, we modeled biochemical phenotypes from massively parallel assays, using convolutional neural networks trained on protein sequence mutations in the virus and human host. We found that neural networks are significantly predictive of binding affinity and protein expression, learning complex interactions and higher-order features that are difficult to capture with conventional methods from structural biology. Integrating the intrinsic physicochemical properties of amino acids, including hydrophobicity, solvent-accessible surface area, and long-range non-bonded energy per atom, significantly improved prediction (empirical p<0.01) though there was such a strong dependence on the sequence data alone to yield reasonably good prediction. We observed concordance of the DMS data and our neural network predictions with an independent study on molecular dynamics (multiple 500 ns or 1 μs all-atom) simulations of the spike protein-ACE2 interface, with critical implications for the use of neural networks to dissect molecular mechanisms. The mutation- or genetically- determined component of a biochemical phenotype estimated from the neural networks has improved causal inference properties relative to the original phenotype and can facilitate crucial insights into disease pathophysiology and therapeutic design.      

### Dependencies
```

MASS==7.3-47
LSD==4.1-0
colorRamps==2.3
ggplot2==3.3.1
pheatmap==1.0.12
RColorBrewer==1.1-2
igraph==1.1.2
