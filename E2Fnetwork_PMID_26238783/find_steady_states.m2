append(path, "/home/m2user/data")
n=30;
p=3;
X=apply(n,i->"x"|(i+1));
DEN = apply(n,i->"x"|(i+1)|"-x"|(i+1)|"^"|p);

R = ZZ/p[X/value]/ideal(DEN/value);
X=X/value;
load "polynomials/polynomials.txt";
F=apply(n,i->value("f"|(i+1)))/value;


I=ideal(F-X)
results="output/temp.txt"
generats= gens gb I;
simplerideal=ideal(generats)
results<<{"EGFR","FGFR3","RAS","PTEN","PI3K","AKT","GRB2","SPRY","E2F1","E2F3","CyclinD1","CyclinE1","CyclinA","CDC25A","p16INK4a","p14ARF","RB1","RBL2","p21CIP","ATM","CHECK1_2","MDM2","TP53","Proliferation","Apoptosis","Growth_arrest","EGFRstimulus","FGFR3_Stimulus","DNA_damage","Growth_inhibitors"}
results<<endl
loadPackage "RationalPoints"
S=ZZ/3[X];
J=substitute(simplerideal,S);
ss=rationalPoints J;
for point in ss do (results<<point<<endl)
results<<close


run "sed 's/.//;s/.$//' output/temp.txt >output/steady_states.csv;rm  output/temp.txt"
exit
