# multistatepdscontrol

Author: Luis Sordo Vieira, sordovieira@uchc.edu

These are the scripts to find controls from two models:
A Modeling Approach to Explain Mutually Exclusive and Co-Occurring Genetic Alterations in Bladder Tumorigenesis.
PMID:26238783

Activated oncogenic pathway modifies Iron network in breast epithelial cells: a dynamic modeling perspective.
PMID 28166223.

In the iron folder, there are two Macaulay2 scripts, corresponding to files for computations for PMID 28166223.

1. iron_model_no_continuity.m2 contains the setup for the system without continuity conditions

2. iron_control_node.m2 contains the control script to find the generators of the ideal $(F-X,x_3)$, corresponding to steady states with low Ferroportin expression.

In the bladder folder, there are several Macaulay2 scripts, corresponding to computations related to the model presented in PMID 28166223.

1. bladder_cancer_model_translation.m2 translates the functions from the original publication into a 3 state polynomial dynamical system.

2. control.m2 contains the script to find mixed edge-node controls, as described in the manuscript. It depends on the files
  * points.txt containing the steady states
  * polynomials.txt, which was generated by bladder_cancer_model.m2
  * setup.txt


  The script parsing.py is a helper script to pull out generators that only contain "us" from Macaulay2 output.
