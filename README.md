# Repository for methods of control of multistate networks.

Author: Luis Sordo Vieira, sordovieira@uchc.edu

This repository includes control methods that use the _Polynomial Dynamical System_ representation of signaling/regulatory networks for finding controls. The BiorXiv [preprint](https://www.biorxiv.org/content/10.1101/682989) can be found here. 

 These are the scripts to find controls from two models:

1. A Modeling Approach to Explain Mutually Exclusive and Co-Occurring Genetic Alterations in Bladder Tumorigenesis.
PMID:26238783

2. Activated oncogenic pathway modifies Iron network in breast epithelial cells: a dynamic modeling perspective.
PMID 28166223.

  The script 
```bash
parsing.py
``` 

is a helper script to pull out generators that only contain "us" from Macaulay2 output.


## Directory Structure

```bash
├── iron_cancer_network_PMID_28166223
├── E2Fnetwork_PMID_26238783_booleanized
├── E2Fnetwork_PMID_26238783
├── FVScontrol
├── LICENSE
├── README.md
├── .gitkeep
├── .gitignore
├── parsing.py
```


1. The ```iron_cancer_network_PMID_28166223``` contains the control scripts for the iron network.
2. The ```E2Fnetwork_PMID_26238783_booleanized``` contains the control scripts for the E2F network in the boolean format originally presented in PMID 26238783.
3. The ```E2Fnetwork_PMID_26238783``` contains the control scripts for the E2F network and the scripts for convert it into a polynomial dynamical system over GF(3).
4. The ```FVScontrol``` contains the scripts used to find the feedback vertex set of the E2F network. It uses the code from [yanggangthu/FVS_cython](https://github.com/yanggangthu/FVS_cython) to find the Feedback Vertex Set of the wiring diagram presented in PMID 26238783. See the script ```FVScontrol/FVSsrc/find_fvs.py```
