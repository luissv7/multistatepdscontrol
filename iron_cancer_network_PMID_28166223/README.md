# Applying node control for the network presented in [PMID 28166223](https://www.ncbi.nlm.nih.gov/pubmed/28166223)
* This directory contains the scripts related to the finding of controls of the iron network in the  preprint [Control of Intracellular Molecular Networks Using Algebraic Methods](https://www.biorxiv.org/content/10.1101/682989v1).
## Directory Structure

```bash
├── README.md
├── find_node_control.m2
├── output
│   ├── node_control_generators.txt
├── polynomials
│   ├── iron_model_no_continuity.m2
```

### Running directions for Docker Image Macaulay2:1.14

```bash
docker run -v $(pwd):/home/data macaulay2:1.14 --script find_node_controls.m2
``` 

### Without Docker
Change 
```bash 
append(path, "/home/data")
```
in 
```bash
find_node_control.m2
```
to the path for this directory.

### Authors
* [Luis Sordo Vieira](mailto:luis.sordovieira@jax.org)
* [David Murrugarra](mailto:murruagarra@uky.edu)
