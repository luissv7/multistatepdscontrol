---Author: Luis Sordo Vieira, Ph.D.
---Contact: luis.sordovieira@jax.org
--I translated the model presented in PMID 26238783 into a Polynomial
--- Dynamical System over GF(3).
--- We get 20 steady states, just as in the publication
append(path, "/home/data")
---Number of nodes
n=30;
--Cardinality of finite fields
p=3;
X=apply(n,i->"x"|(i+1));
DEN = apply(n,i->"x"|(i+1)|"-x"|(i+1)|"^"|p);
R = ZZ/p[X/value]/ideal(DEN/value);
X=X/value;
indic2 = x->(x*(x-1))^2
indic1= x->(x*(x-2))^2
NOT = x->(1-x^2)
indic0 = x->(1-x^2)

OR = (i,j)->i^2+j^2-(i*j)^2;
AND=(i,j)->i^2*j^2

load "rules/rules_bladder.m2"

F=apply(n,i->value("f"|(i+1)));

--Write polys to a file--
p="temp.txt"<<""
p<<"---These are the polynomial functions of the model presented in PMID 26238783"<<endl<<endl

for i from 1 to 30 do p<<"f"|toString(i)|" = "|toString(value("f"|i))<<endl
--Lastly, on sh I did, cat node_names.txt >>polynomials.txt
p << close

run "cat helper_files/node_names.txt temp.txt > polynomials/polynomials.txt;rm temp.txt"

exit
