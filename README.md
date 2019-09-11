# Repository for methods of control of Multistate networks

Author: Luis Sordo Vieira, sordovieira@uchc.edu

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

For convenience, we include a Dockerfile to build a Docker image for [Macaulay2](http://www2.macaulay2.com/Macaulay2/) in the 
```bash 
m2dockerized/
```

directory.
