v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 600 -200 600 -180 {lab=ORTAP}
N 600 -180 760 -180 {lab=ORTAP}
N 600 -180 600 -160 {lab=ORTAP}
N 560 -280 600 -280 {lab=PRVDD}
N 600 -280 600 -260 {lab=PRVDD}
N 560 -80 600 -80 {lab=PRVSS}
N 600 -100 600 -80 {lab=PRVSS}
C {iopin.sym} 560 -280 2 0 {name=p1 lab=PRVDD}
C {iopin.sym} 560 -80 2 0 {name=p2 lab=PRVSS}
C {opin.sym} 760 -180 0 0 {name=p3 lab=ORTAP}
C {sg13g2_pr/rhigh.sym} 600 -130 2 1 {name=R1
w=0.5e-6
l=298e-6
model=rhigh
body=PRVSS
spiceprefix=X
b=2
m=1
lvs_format="tcleval(@name @@P @@M @model w=@w l=298.73e-6 ps=0.18e-6 m=@m b=@b )"}
C {sg13g2_pr/rhigh.sym} 600 -230 2 1 {name=R2
w=0.5e-6
l=298e-6
model=rhigh
body=PRVSS
spiceprefix=X
b=2
m=1
lvs_format="tcleval(@name @@P @@M @model w=@w l=298.73e-6 ps=0.18e-6 m=@m b=@b )"}
C {title.sym} 160 0 0 0 {name=l15 author="Pascal Gesell"}
