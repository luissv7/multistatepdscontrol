--EGFR=x1
--(EGFR_stimulus | SPRY) & !FGFR3 & !GRB2
f1=AND(AND(OR(x27,x8),NOT(x2)),NOT(x7));

--FGFR3=x2
--!EGFR & FGFR3_stimulus & !GRB2
f2=AND(NOT(x1),AND(x28,NOT(x7)));
--RAS=x3
--EGFR | FGFR3 | GRB2
f3=OR(OR(x1,x2),x7);
--PTEN =x4
--TP53
f4=x23^2
--PI3K=x5
--GRB2 & RAS & !PTEN
f5=AND(x7,AND(x3,NOT(x4)));
--AKT=x6
--PI3K
f6=x5^2
--GRB2=x7
--(FGFR3 & !GRB2 & !SPRY) | EGFR
f7=OR(AND(x2,AND(NOT(x7),NOT(x8))),x1);
--SPRY=x8
--RAS
f8=x3^2

--x9=E2F1
block1=AND(NOT(AND(indic2(x21),indic2(x20))),OR(x3,x10))
block2=AND(AND(AND(indic2(x21),indic2(x20)),NOT(x3)),indic1(x10))
--!RB1 & !RBL2 &((!(CHEK1_2:2 & ATM:2) & (RAS | E2F3)) | (CHEK1_2:2 & ATM:2 & !RAS & E2F3:1))
value1e2f1=AND(AND(NOT(x17),NOT(x18)),OR(value(block1),value(block2)))
--!RB1 & !RBL2 & ATM:2 & CHEK1_2:2 & (RAS | E2F3:2)
value2e2f1=AND(AND(AND(NOT(x17),NOT(x18)),indic2(x20)),AND(indic2(x21),OR(x3,indic2(x10))))
f9=value(value1e2f1)+2*value(value2e2f1);

---x10=E2F3
--!RB1 & CHEK1_2:2 & RAS
value2e2f3=AND(AND(NOT(x17),x3),indic2(x21))
--!RB1 & !CHEK1_2:2 & RAS
value1e2f3=AND(NOT(x17),AND(NOT(indic2(x21)),x3))
f10=value(value1e2f3)+2*value(value2e2f3);

--CyclinD1
--(RAS | AKT) & !p16INK4a & !p21CIP
f11=AND(OR(x3,x6),AND(NOT(x15),NOT(x19)));

--CyclinE1=x12
--!RBL2 & !p21CIP & CDC25A & (E2F1 | E2F3)
f12=AND(AND(AND(NOT(x18),NOT(x19)),x14),OR(x9,x10))

---CyclinA
--!RBL2 & !p21CIP & CDC25A & (E2F1 | E2F3)
f13=value(f12);

---CDC25A=x14
--!CHEK1_2 & !RBL2 & (E2F1 | E2F3)
f14=AND(AND(NOT(x18),NOT(x21)),OR(x9,x10));

---p16INK4a=x15
--Growth_inhibitors & !RB1
f15=AND(x30,NOT(x17))

---p14ARF=x16
--E2F1
f16=x9^2

--RB1=x21
--!CyclinD1 & !CyclinE1 & !p16INK4a & !CyclinA
f17=AND(NOT(x11),NOT(x12))*AND(NOT(x15),NOT(x13));

--RBL2=x18
--Rule=!CyclinD1 & !CyclinE1
f18=AND(NOT(x11),NOT(x12));

--x19= p21CIP
--Rule=!CyclinE1 & (Growth_inhibitors | TP53) & !AKT
f19=OR(x30,x23)*NOT(x6)*NOT(x12);

--x20=ATM
--Rule1=DNA_damage & !E2F1
value1atm=AND(NOT(x9),x29)
--Rule2=DNA_damage & E2F1
value2atm=AND(x29,x9);
f20=value(value1atm)+2*value(value2atm)

--x21=CHECK1_2
--Rule1=ATM & !E2F1
value1check12=AND(x20,NOT(x9))
--Rule2=ATM & E2F1
value2check12=AND(x20,x9)
f21=value(value1check12)+2*value(value2check12)

--x22=MDM2
--Rule=(TP53 | AKT) & !p14ARF & !ATM & !RB1
f22=OR(x23,x6)*NOT(x16)*NOT(x20)*NOT(x17)

---x23= TP53
--Rule=!MDM2 & ((ATM & CHEK1_2) | E2F1:2)
f23= NOT(x22)*(OR(AND(x20,x21),indic2(x9)))

--x24=Proliferation
--Rule=CyclinE1 | CyclinA
f24=OR(x12,x13)

--x25=Apoptosis
--Rule1=!E2F1:2 & TP53
value1apop=AND(x23,NOT(indic2(x9)))
--Rule2=E2F1:2
value2apop=indic2(x9)
f25=value(value1apop)+2*value(value2apop);

--x26=Growth_arrest
--Rule=p21CIP | RB1 | RBL2
f26=OR(OR(x19,x17),x18);

--x27=EGFR_stimulus
--Rule=Constant
f27=x27^2

--x28=FGFR3_Stimulus
--Rule=Constant
f28=x28^2

--x29=DNA_damage
--Rule=Constant
f29=x29^2

--x30=Growth_inhibitors
--Rule=Constant
f30=x30^2
