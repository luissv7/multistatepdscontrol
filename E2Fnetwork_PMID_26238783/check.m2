append(path, "/home/m2user/data")
loadPackage "RationalPoints"
write="output/verify_controls.txt"
n=30
X=apply(n,i->"x"|(i+1));
S=ZZ/3[X]
load "polynomials/polynomials.txt"
F=apply(n,i->value("f"|(i+1)))/value;
X=X/value;

Fec=new MutableList from F;
Fec#(13)=0_S;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<< "Control x14=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;
write<<newline

Fec=new MutableList from F;
Fec#(15)=0_S;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Control x16=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;
write<<newline
Fec=new MutableList from F;
Fec#(12)=0_S;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Control x13=0"<<endl
write<< "Control x13=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline
Fec=new MutableList from F;
Fec#(11)=0_S;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Control x12=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;



write<<newline
Fec=new MutableList from F;
Fec#(8)=0_S;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Control x9=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline
Fec=new MutableList from F;
Fec#(7)=0_S;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Control x8=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline
Fec=new MutableList from F;
Fec#(2)=0_S;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Control x3=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline
Fec=new MutableList from F;
Fec#(1)=0_S;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Control x2=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline

Fec=new MutableList from F;
Fec#(2)=sub(F_2,{x2=>0});
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Delete edge (x2,x3)"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline
Fec=new MutableList from F;
Fec#(15)=sub(F_15,{x9=>0});
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Delete edge (x9,x16)"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline
Fec=new MutableList from F;
Fec#(9)=sub(F_9,{x3=>0});
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Delete edge (x3,x10)"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline
Fec=new MutableList from F;
Fec#(7)=sub(F_7,{x3=>0});
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Delete edge (x3,x8)"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;


write<<newline
Fec=new MutableList from F;
Fec#(10)=0;
Fec#(14)=0;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "x11,x15=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline
Fec=new MutableList from F;
Fec#(8)=sub(F_8,{x3=>0,x10=>0});
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "x3,x10=0 in f_9"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp;endl;

write<<newline
Fec=new MutableList from F;
Fec#(9)=sub(F_9,{x3=>0});
Fec#(8)=0;
Fec=toList Fec;
I=ideal(Fec-X);
newpoints=rationalPoints I;
write<<"-------------------------------"<<endl
write<< "Set x3=0 in f10 and set x9=0"<<endl;
write<< "Number of steady states: "<<#newpoints;
temp=number(newpoints,point->point_23==0);
write<<newline<<"Number of points with proliferation =0 :"<<temp<<endl;
write<<close;
exit;
