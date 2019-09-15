append(path, "/home/data")
load "helper_files/setup.txt"
load "helper_files/points.txt"


----Indicies for nodes we would like to cut out their interactions with other nodes.
edgeout={2,3,6,8,9,10,15,16,20}

--Indices for neighbors we want to affect
edgein={2,3,6,8,9,10,15,16,20}


--This gives a list of the form {x_1=>point_1,x_2=>x_2,...}
---subsconvenience = point ->apply(30,i->"x"|toString(i+1)|"=>"|toString(point_i))

controlnodes=1..23

Fec=new MutableList from F;
for j in edgein do (for i in edgeout do(Fec#(j-1)=sub(value(Fec#(j-1)), value("x"|i)=>(1-u_(i,j)^2)*value("x"|i))));
for z in controlnodes do (Fec#(z-1)=(1-u_(z)^2)_R*(Fec#(z-1)_R));
Fec=toList Fec;

results="output/targeted_edge_node.txt"<<""


I1=ideal(apply(n,k->Fec_k-(s1_k)_R));
I2=ideal(apply(n,k->Fec_k-(s2_k)_R));
I3=ideal(apply(n,k->Fec_k-(s3_k)_R));
I4=ideal(apply(n,k->Fec_k-(s4_k)_R));


I=intersect(I1,I2,I3,I4);


generats= gens gb I;
results<<generats;


results<<close


exit
