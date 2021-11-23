## DeepMutScan [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/gamazonlab/DeepMutScan/blob/main/LICENSE)

In this repo, we provide source data, trained models, and NN-derived mutationally-determined phenotype data as a supplement to the paper  

[Modeling mutational effects on biochemical phenotypes using convolutional neural networks: application to SARS-CoV-2.](https://www.biorxiv.org/content/10.1101/2021.01.28.428521v3):   
Bo Wang & Eric R. Gamazon*.  


*Correspondence to:  
ericgamazon@gmail.com

#### Abstract
Biochemical phenotypes are major indexes for protein structure and function characterization. They are determined, at least in part, by the intrinsic physicochemical properties of amino acids and may be reflected in the protein three-dimensional structure. Modeling mutational effects on biochemical phenotypes is a critical step for understanding protein function and disease mechanism as well as enabling drug discovery. Deep Mutational Scanning (DMS) experiments have been performed on SARS-CoV-2’s spike receptor binding domain and the human ACE2 zinc-binding peptidase domain – both central players in viral infection and evolution and antibody evasion - quantifying how mutations impact binding affinity and protein expression. Here, we modeled biochemical phenotypes from massively parallel assays, using convolutional neural networks trained on protein sequence mutations in the virus and human host. We found that neural networks are significantly predictive of binding affinity, protein expression, and antibody escape, learning complex interactions and higher-order features that are difficult to capture with conventional methods from structural biology. Integrating the intrinsic physicochemical properties of amino acids, including hydrophobicity, solvent-accessible surface area, and long-range non-bonded energy per atom, significantly improved prediction (empirical p<0.01) though there was such a strong dependence on the sequence data alone to yield reasonably good prediction. We observed concordance of the DMS data and our neural network predictions with an independent study on intermolecular interactions from molecular dynamics (multiple 500 ns or 1 μs all-atom) simulations of the spike protein-ACE2 interface, with critical implications for the use of deep learning to dissect molecular mechanisms. The mutation- or genetically-determined component of a biochemical phenotype estimated from the neural networks has improved causal inference properties relative to the original phenotype and can facilitate crucial insights into disease pathophysiology and therapeutic design.

#### Neural Networks
[Source datasets](https://github.com/gamazonlab/DeepMutScan/blob/main/Data/Source_Data/dataset_source.md) are curated and fed into a customized neural network engine with four architectures including: CNN-2D, GCN-AVE, MLP and LR.

#### Machine Learning
A joint Random Forest Regression model has been implemented to evaluate the feature importance of the convolutional neural network derived (i.e., estimated, mutation-mediated) antibody-escape phenotype for each of the 10 antibodies in predicting binding affinity towards the ACE2 receptor. Optimized parameters are achieved after grid search. 


#### Dependencies
##### Third-party:

Available under the MIT License:   

Neural Network engine [nn4dms](https://github.com/gitter-lab/nn4dms), [paper](https://www.biorxiv.org/content/10.1101/2020.10.25.353946v2) 
Copyright © 2020 Sam Gelman, Philip Romero, Anthony Gitter      

GCN-AVE [pipgcn](https://github.com/fouticus/pipgcn), [paper](https://papers.nips.cc/paper/2017/hash/f507783927f2ec2737ba40afbd17efb5-Abstract.html)
Copyright © 2020 Alex Fout.

##### Python:
```
gast=0.2.2
python=3.6.12
matplotlib=3.3.1
numpy=1.16.4
conda-forge::jupyterlab=2.2.8
pyyaml=5.3.1
pandas=1.1.1
seaborn=0.10.1
tensorflow=1.14
tqdm=4.48.2
scikit-learn=0.23.2
scipy=1.5.2
networkx=2.5
conda-forge::biopandas=0.2.7
umap-learn=0.4.0
pynndescent=0.4.8
statsmodels
```

##### R:
```
MASS=7.3-47
LSD=4.1-0
colorRamps=2.3
ggplot2=3.3.1
pheatmap=1.0.12
RColorBrewer=1.1-2
igraph=1.1.2

ggcorrplot=0.1.3
cowplot=1.1.1
tidyr=1.1.3
```
