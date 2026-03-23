v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 730 -160 730 -140 {lab=OTL}
N 730 -160 800 -160 {lab=OTL}
N 730 -110 740 -110 {lab=PTVSS}
N 740 -110 740 -60 {lab=PTVSS}
N 730 -60 740 -60 {lab=PTVSS}
N 730 -80 730 -60 {lab=PTVSS}
N 670 -110 690 -110 {lab=#net1}
N 670 -200 670 -110 {lab=#net1}
N 670 -230 680 -230 {lab=PTVDD}
N 680 -280 680 -230 {lab=PTVDD}
N 670 -280 680 -280 {lab=PTVDD}
N 670 -280 670 -260 {lab=PTVDD}
N 580 -230 580 -140 {lab=#net2}
N 580 -110 590 -110 {lab=PTVSS}
N 590 -110 590 -60 {lab=PTVSS}
N 580 -60 590 -60 {lab=PTVSS}
N 580 -80 580 -60 {lab=PTVSS}
N 580 -230 630 -230 {lab=#net2}
N 490 -110 540 -110 {lab=#net3}
N 490 -180 490 -110 {lab=#net3}
N 440 -180 490 -180 {lab=#net3}
N 490 -200 490 -180 {lab=#net3}
N 440 -230 440 -180 {lab=#net3}
N 440 -230 450 -230 {lab=#net3}
N 490 -230 500 -230 {lab=PTVDD}
N 500 -280 500 -230 {lab=PTVDD}
N 490 -280 500 -280 {lab=PTVDD}
N 490 -280 490 -260 {lab=PTVDD}
N 500 -280 670 -280 {lab=PTVDD}
N 590 -60 730 -60 {lab=PTVSS}
N 440 -60 580 -60 {lab=PTVSS}
N 440 -280 490 -280 {lab=PTVDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 560 -110 0 0 {name=MN0
l=0.13u
w=0.38u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 650 -230 0 0 {name=MP1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 710 -110 0 0 {name=MN1
l=0.13u
w=0.8u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 470 -230 0 0 {name=MP0
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 440 -280 2 0 {name=p1 lab=PTVDD}
C {iopin.sym} 440 -60 2 0 {name=p2 lab=PTVSS}
C {opin.sym} 800 -160 0 0 {name=p3 lab=OTL}
C {title.sym} 160 0 0 0 {name=l15 author="Pascal Gesell"}
