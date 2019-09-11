--x1 = LIP
--x2= TfR1
--x3 = Fpn
--x4 = Ft
--x5 = IRP1
--x6 = IRP2
--x7 = Hep
--x8 = HO-1
--x9 = ALAS1
--x10 = Heme
--x11 = ROS
--x12 = Antioxidant Enzymes (AE)
--x13 = Nrf2
--x14 = Keap1
--x15 = IL-6
--x16 = Ras
--x17 = SOS
--x18 = ERK
--x19 = c-Myc
--x20 = GAPs
--x21 = EGFR
--x22 = LIPmt
--x23 = Mfrn
--x24 = Ftmt
append(path, "/home/data")
load "polynomials/iron_model_no_continuity.m2"
---Substitute with your path
-- Generators will be written here.
results="output/node_control_generators.txt"<<""


-----Let's simulate RAS overexpression
f16=2_R
-------------------------------------
----- Make a single list of polynomials
F=apply(n,i->value("f"|(i+1)));
--Indices for nodes that we wish to target

--Making a mutable copy of F.
--Fec=new MutableList from F;



--Control values encoded.

controllable={1, 2, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 22, 23, 24}
print "hello"
Fec=new MutableList from F;
for j in controllable do ((Fec#(j-1)=(1-value(u_j)^2)*value(Fec#(j-1))))
---Converting back to list
Fec=toList Fec;
--Find all steady states where Ferroportin is 0
I=join(Fec-X,{x3});
--Find the generators of this ideal
print "hello"
J=gens gb ideal(I);
print J
---time gens gb ideal(I)
---Write results
results<<J;
---- Close results file
results<<close;
exit
---test found controls
---Ftry=new MutableList from F;
----Ftry#5=0_R;
----Ftry#14=0_R;
----Ftry= toList Ftry;

----gens gb ideal(Ftry-X)
