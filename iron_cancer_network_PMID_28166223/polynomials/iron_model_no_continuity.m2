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
printWidth=0;
n=24;
p=3;




controllable={1, 2, 4, 5, 6,7, 8, 9, 10, 11, 12, 13, 14, 15, 22, 23, 24}
U=apply(controllable,i->"u_"|toString(i));
--variables
X=apply(n,i->"x"|(i+1));
DEN = apply(n,i->"x"|(i+1)|"-x"|(i+1)|"^"|p);
DEN=join(DEN,apply(U,u->u|"-"|u|"^"|p));



--for quotient

R = ZZ/p[join(X,U)/value]/ideal(DEN/value);
X=X/value;  U=U/value; 

f1 = x2+2*x2^2*x23+2*x2*x23^2+2*x2^2*x23^2+2*x2^2*x3+x2^2*x23*x3+2*x2^2*x23^2*x3+2*x2*x3^2+2*x2^2*x3^2+2*x2^2*x23*x3^2+x2*x23^2*x3^2+2*x2^2*x4+x2^2*x23*x4+2*x2^2*x23^2*x4+x2^2*x3*x4+2*x2^2*x23*x3*x4+x2^2*x23^2*x3*x4+2*x2^2*x3^2*x4+x2^2*x23*x3^2*x4+2*x2^2*x23^2*x3^2*x4+2*x2*x4^2+2*x2^2*x4^2+2*x2^2*x23*x4^2+x2*x23^2*x4^2+2*x2^2*x3*x4^2+x2^2*x23*x3*x4^2+2*x2^2*x23^2*x3*x4^2+x2*x3^2*x4^2+2*x2^2*x23*x3^2*x4^2+2*x2*x23^2*x3^2*x4^2+2*x2^2*x23^2*x3^2*x4^2+x8+2*x2*x8+x2^2*x8+2*x23^2*x8+x2*x23^2*x8+2*x2^2*x23^2*x8+2*x3^2*x8+x2*x3^2*x8+2*x2^2*x3^2*x8+x23^2*x3^2*x8+2*x2*x23^2*x3^2*x8+x2^2*x23^2*x3^2*x8+2*x4^2*x8+x2*x4^2*x8+2*x2^2*x4^2*x8+x23^2*x4^2*x8+2*x2*x23^2*x4^2*x8+x2^2*x23^2*x4^2*x8+x3^2*x4^2*x8+2*x2*x3^2*x4^2*x8+x2^2*x3^2*x4^2*x8+2*x23^2*x3^2*x4^2*x8+x2*x23^2*x3^2*x4^2*x8+2*x2^2*x23^2*x3^2*x4^2*x8+x2*x8^2+x2^2*x8^2+2*x23*x8^2+x2^2*x23*x8^2+2*x23^2*x8^2+2*x2*x23^2*x8^2+2*x3*x8^2+x2^2*x3*x8^2+x23*x3*x8^2+2*x2^2*x23*x3*x8^2+2*x23^2*x3*x8^2+x2^2*x23^2*x3*x8^2+2*x3^2*x8^2+2*x2*x3^2*x8^2+2*x23*x3^2*x8^2+x2^2*x23*x3^2*x8^2+x2*x23^2*x3^2*x8^2+x2^2*x23^2*x3^2*x8^2+2*x4*x8^2+x2^2*x4*x8^2+x23*x4*x8^2+2*x2^2*x23*x4*x8^2+2*x23^2*x4*x8^2+x2^2*x23^2*x4*x8^2+x3*x4*x8^2+2*x2^2*x3*x4*x8^2+2*x23*x3*x4*x8^2+x2^2*x23*x3*x4*x8^2+x23^2*x3*x4*x8^2+2*x2^2*x23^2*x3*x4*x8^2+2*x3^2*x4*x8^2+x2^2*x3^2*x4*x8^2+x23*x3^2*x4*x8^2+2*x2^2*x23*x3^2*x4*x8^2+2*x23^2*x3^2*x4*x8^2+x2^2*x23^2*x3^2*x4*x8^2+2*x4^2*x8^2+2*x2*x4^2*x8^2+2*x23*x4^2*x8^2+x2^2*x23*x4^2*x8^2+x2*x23^2*x4^2*x8^2+x2^2*x23^2*x4^2*x8^2+2*x3*x4^2*x8^2+x2^2*x3*x4^2*x8^2+x23*x3*x4^2*x8^2+2*x2^2*x23*x3*x4^2*x8^2+2*x23^2*x3*x4^2*x8^2+x2^2*x23^2*x3*x4^2*x8^2+x2*x3^2*x4^2*x8^2+x2^2*x3^2*x4^2*x8^2+2*x23*x3^2*x4^2*x8^2+x2^2*x23*x3^2*x4^2*x8^2+2*x23^2*x3^2*x4^2*x8^2+2*x2*x23^2*x3^2*x4^2*x8^2
f2 = x19+x5^2+2*x19^2*x5^2+x6+2*x19*x6+x19^2*x6+x19*x6^2+x19^2*x6^2+2*x5^2*x6^2+x19^2*x5^2*x6^2
f3 = 2+2*x5^2+2*x6+x5^2*x6^2+2*x7+x6*x7+2*x6^2*x7+x5^2*x7^2+2*x6*x7^2+2*x6^2*x7^2+2*x5^2*x6^2*x7^2
f4 = 2+2*x5^2+2*x6+x5^2*x6^2
f5 = 2+2*x1
f6 = 2+2*x1+x1^2*x19+x1*x19^2+x1^2*x19^2
f7 = x15
f8 = x10+x13+2*x10*x13+x10^2*x13+x10*x13^2+x10^2*x13^2
f9 = x22+2*x10^2*x22+2*x10*x22^2+2*x10^2*x22^2
f10 = x9+2*x8^2*x9+2*x8*x9^2+2*x8^2*x9^2
f11 = x1+2*x1^2*x12+2*x1*x12^2+2*x1^2*x12^2+x16+2*x1*x16+x1^2*x16+2*x12^2*x16+x1*x12^2*x16+2*x1^2*x12^2*x16+x1*x16^2+x1^2*x16^2+2*x12*x16^2+x1^2*x12*x16^2+2*x12^2*x16^2+2*x1*x12^2*x16^2+x21+2*x1*x21+x1^2*x21+2*x12^2*x21+x1*x12^2*x21+2*x1^2*x12^2*x21+2*x16*x21+x1*x16*x21+2*x1^2*x16*x21+x12^2*x16*x21+2*x1*x12^2*x16*x21+x1^2*x12^2*x16*x21+x16^2*x21+2*x1*x16^2*x21+x1^2*x16^2*x21+2*x12^2*x16^2*x21+x1*x12^2*x16^2*x21+2*x1^2*x12^2*x16^2*x21+x1*x21^2+x1^2*x21^2+2*x12*x21^2+x1^2*x12*x21^2+2*x12^2*x21^2+2*x1*x12^2*x21^2+x16*x21^2+2*x1*x16*x21^2+x1^2*x16*x21^2+2*x12^2*x16*x21^2+x1*x12^2*x16*x21^2+2*x1^2*x12^2*x16*x21^2+x16^2*x21^2+x1*x16^2*x21^2+x12*x16^2*x21^2+2*x1^2*x12*x16^2*x21^2+2*x1*x12^2*x16^2*x21^2+2*x1^2*x12^2*x16^2*x21^2
f12 = x13
f13 = 2+2*x14+x14^2*x16+x14*x16^2+x14^2*x16^2+x14^2*x18+2*x14^2*x16*x18+x14^2*x16^2*x18+x14*x18^2+x14^2*x18^2+x14^2*x16*x18^2+2*x14*x16^2*x18^2
f14 = 1+2*x11+x11^2+x13+2*x11^2*x13+2*x13^2+x11^2*x13^2
f15 = 2+2*x8+x11^2*x8+x11*x8^2+x11^2*x8^2
f16 = x15+x17+2*x15*x17+x15^2*x17+x15*x17^2+x15^2*x17^2+2*x15^2*x20+2*x17^2*x20+x15^2*x17^2*x20+2*x15*x20^2+2*x15^2*x20^2+2*x17*x20^2+x15*x17*x20^2+2*x15^2*x17*x20^2+2*x17^2*x20^2+2*x15*x17^2*x20^2
f17 = 2+2*x18+x18^2*x21+x18*x21^2+x18^2*x21^2
f18 = x16
f19 = x18
f20 = x21
f21 = x11
f22 = x23+2*x10^2*x23+2*x10*x23^2+2*x10^2*x23^2+2*x23^2*x24+x10*x23^2*x24+2*x10^2*x23^2*x24+2*x23*x24^2+x10^2*x23*x24^2+2*x23^2*x24^2+2*x10*x23^2*x24^2
f23 = 2+2*x22
f24 = x22
