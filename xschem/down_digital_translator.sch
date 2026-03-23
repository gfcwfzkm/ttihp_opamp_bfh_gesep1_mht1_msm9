v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 560 -150 560 -140 {lab=#net1}
N 560 -160 560 -150 {lab=#net1}
N 560 -240 560 -220 {lab=PDIGVDD}
N 560 -240 570 -240 {lab=PDIGVDD}
N 570 -240 570 -190 {lab=PDIGVDD}
N 560 -190 570 -190 {lab=PDIGVDD}
N 560 -80 560 -60 {lab=PDIGVSS}
N 560 -60 570 -60 {lab=PDIGVSS}
N 570 -110 570 -60 {lab=PDIGVSS}
N 560 -110 570 -110 {lab=PDIGVSS}
N 500 -110 520 -110 {lab=DIN}
N 500 -150 500 -110 {lab=DIN}
N 500 -190 520 -190 {lab=DIN}
N 480 -60 560 -60 {lab=PDIGVSS}
N 480 -240 560 -240 {lab=PDIGVDD}
N 480 -150 500 -150 {lab=DIN}
N 500 -190 500 -150 {lab=DIN}
N 720 -240 730 -240 {lab=PDIGVDD}
N 720 -60 730 -60 {lab=PDIGVSS}
N 720 -150 720 -140 {lab=DOUT}
N 720 -150 820 -150 {lab=DOUT}
N 720 -160 720 -150 {lab=DOUT}
N 720 -240 720 -220 {lab=PDIGVDD}
N 730 -240 730 -190 {lab=PDIGVDD}
N 720 -190 730 -190 {lab=PDIGVDD}
N 720 -80 720 -60 {lab=PDIGVSS}
N 730 -110 730 -60 {lab=PDIGVSS}
N 720 -110 730 -110 {lab=PDIGVSS}
N 660 -110 680 -110 {lab=#net1}
N 660 -150 660 -110 {lab=#net1}
N 660 -190 680 -190 {lab=#net1}
N 660 -190 660 -150 {lab=#net1}
N 570 -60 720 -60 {lab=PDIGVSS}
N 570 -240 720 -240 {lab=PDIGVDD}
N 560 -150 660 -150 {lab=#net1}
C {sg13g2_pr/sg13_hv_nmos.sym} 540 -110 0 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 540 -190 0 0 {name=M2
l=0.45u
w=0.6u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {iopin.sym} 480 -240 2 0 {name=p1 lab=PDIGVDD}
C {ipin.sym} 480 -150 0 0 {name=p2 lab=DIN}
C {opin.sym} 820 -150 0 0 {name=p3 lab=DOUT
}
C {iopin.sym} 480 -60 2 0 {name=p4 lab=PDIGVSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 700 -110 0 0 {name=M3
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 700 -190 0 0 {name=M4
l=0.45u
w=0.6u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {title.sym} 160 0 0 0 {name=l15 author="Pascal Gesell"}
