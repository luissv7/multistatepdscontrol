# Applying node control for the network presented in [PMID 26238783 ](https://www.ncbi.nlm.nih.gov/pubmed/26238783)
* This directory contains the scripts related to the finding of controls of the iron network in the  preprint [Control of Intracellular Molecular Networks Using Algebraic Methods](https://www.biorxiv.org/content/10.1101/682989v1).
## Directory Structure

```bash
├── README.md
├── find_node_control.m2
├── output
│   ├── targeted_edge_node.txt
├── polynomials
│   ├── polynomials.txt
├── helper_files
│   ├── node_names.txt
│   ├── points.txt
│   ├── setup.txt
├── rules
│   ├── rules_bladder.m2
```

### Running directions for Docker Image Macaulay2:1.14

```bash
docker run -v $(pwd):/home/data macaulay2:1.14 --script find_node_controls.m2
``` 

### Without Docker
Change 
```bash 
append(path, "/home/m2user/data")
```
in 
```bash
find_node_control.m2
```
to the path for this directory.

### Authors
* [Luis Sordo Vieira](mailto:luis.sordovieira@jax.org)
* [David Murrugarra](mailto:murruagarra@uky.edu)

