import networkx;
import os,sys,FVS;
os.chdir(os.path.dirname(os.path.realpath(__file__)))
with open ('bladder_tumorogenesis.sif') as f:
	edges=f.readlines()
data=[tuple(line.strip().split()) for line in edges]
data=[(edge[0],edge[2]) for edge in data]

G = networkx.DiGraph()

G.add_edges_from(data)
G_FVS=FVS.FVS(G, T_0=0.6, alpha=0.99, maxMvt_factor=5, maxFail=50, randomseed=1)

with open('results.txt', 'w') as writer:
	for item in G_FVS:
        	writer.write("%s\n" % item)
