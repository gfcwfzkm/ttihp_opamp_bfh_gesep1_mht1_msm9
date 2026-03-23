v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 360 -410 400 -410 {lab=#net1}
N 360 -250 360 -110 {lab=#net1}
N 360 -110 400 -110 {lab=#net1}
N 330 -150 400 -150 {lab=#net2}
N 330 -210 330 -150 {lab=#net2}
N 330 -450 400 -450 {lab=#net2}
N 330 -350 400 -350 {lab=#net2}
N 330 -450 330 -350 {lab=#net2}
N 360 -310 400 -310 {lab=#net1}
N 360 -410 360 -310 {lab=#net1}
N 360 -250 400 -250 {lab=#net1}
N 360 -310 360 -250 {lab=#net1}
N 330 -210 400 -210 {lab=#net2}
N 330 -350 330 -210 {lab=#net2}
N 520 -430 620 -430 {lab=DDO_SEL0}
N 520 -330 620 -330 {lab=DDO_SEL1}
N 520 -230 620 -230 {lab=DDO_SEL2}
N 520 -130 620 -130 {lab=DDO_SEL3}
N 140 -450 160 -450 {lab=DDIN1}
N 140 -410 220 -410 {lab=DDIN0}
N 140 -510 440 -510 {lab=PDDVDD}
N 140 -60 430 -60 {lab=PDDVSS}
N 240 -450 330 -450 {lab=#net2}
N 300 -410 360 -410 {lab=#net1}
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 460 -230 0 0 {name=x3 VDD=PDDVDD VSS=PDDVSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 460 -330 0 0 {name=x4 VDD=PDDVDD VSS=PDDVSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_1.sym} 460 -130 0 0 {name=x5 VDD=PDDVDD VSS=PDDVSS prefix=sg13g2_ }
C {iopin.sym} 140 -510 2 0 {name=p1 lab=PDDVDD}
C {ipin.sym} 140 -450 0 0 {name=p2 lab=DDIN1}
C {opin.sym} 620 -430 0 0 {name=p3 lab=DDO_SEL0}
C {iopin.sym} 140 -60 2 0 {name=p4 lab=PDDVSS}
C {ipin.sym} 140 -410 0 0 {name=p5 lab=DDIN0}
C {opin.sym} 620 -330 0 0 {name=p6 lab=DDO_SEL1
}
C {opin.sym} 620 -230 0 0 {name=p7 lab=DDO_SEL2}
C {opin.sym} 620 -130 0 0 {name=p8 lab=DDO_SEL3}
C {lab_wire.sym} 440 -510 0 1 {name=p9 sig_type=std_logic lab=PDDVDD}
C {lab_wire.sym} 430 -60 0 1 {name=p10 sig_type=std_logic lab=PDDVSS}
C {sg13g2_stdcells/sg13g2_buf_1.sym} 260 -410 0 0 {name=x1 VDD=PDDVDD VSS=PDDVSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_1.sym} 200 -450 0 0 {name=x6 VDD=PDDVDD VSS=PDDVSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2_1.sym} 460 -430 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
