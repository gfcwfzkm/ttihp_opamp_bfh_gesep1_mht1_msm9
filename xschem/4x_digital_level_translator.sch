v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 600 -560 620 -560 {lab=PLAVDD}
N 620 -560 620 -320 {lab=PLAVDD}
N 600 -320 620 -320 {lab=PLAVDD}
N 500 -440 500 -420 {lab=PLVSS}
N 500 -420 640 -420 {lab=PLVSS}
N 640 -180 640 -60 {lab=PLVSS}
N 640 -60 780 -60 {lab=PLVSS}
N 780 -80 780 -60 {lab=PLVSS}
N 780 -320 780 -300 {lab=PLVSS}
N 640 -300 780 -300 {lab=PLVSS}
N 640 -420 640 -300 {lab=PLVSS}
N 660 -440 680 -440 {lab=PLDVDD}
N 660 -440 660 -200 {lab=PLDVDD}
N 660 -200 680 -200 {lab=PLDVDD}
N 380 -320 400 -320 {lab=PLDVDD}
N 380 -560 380 -320 {lab=PLDVDD}
N 380 -560 400 -560 {lab=PLDVDD}
N 620 -620 620 -560 {lab=PLAVDD}
N 900 -620 900 -440 {lab=PLAVDD}
N 880 -440 900 -440 {lab=PLAVDD}
N 900 -440 900 -200 {lab=PLAVDD}
N 880 -200 900 -200 {lab=PLAVDD}
N 350 -60 640 -60 {lab=PLVSS}
N 500 -200 500 -180 {lab=PLVSS}
N 500 -180 640 -180 {lab=PLVSS}
N 640 -300 640 -180 {lab=PLVSS}
N 350 -160 680 -160 {lab=LIN0}
N 350 -400 680 -400 {lab=LIN2}
N 350 -520 400 -520 {lab=LIN3}
N 350 -280 400 -280 {lab=LIN1}
N 880 -400 920 -400 {lab=LOUT2}
N 600 -520 920 -520 {lab=LOUT3}
N 880 -160 920 -160 {lab=LOUT0}
N 600 -280 920 -280 {lab=LOUT1}
N 380 -660 380 -560 {lab=PLDVDD}
N 350 -660 380 -660 {lab=PLDVDD}
N 380 -660 660 -660 {lab=PLDVDD}
N 660 -660 660 -440 {lab=PLDVDD}
N 350 -620 620 -620 {lab=PLAVDD}
N 620 -620 900 -620 {lab=PLAVDD}
C {digital_level_translator.sym} 420 -460 0 0 {name=x1}
C {digital_level_translator.sym} 700 -340 0 0 {name=x2}
C {digital_level_translator.sym} 420 -220 0 0 {name=x3}
C {digital_level_translator.sym} 700 -100 0 0 {name=x4}
C {iopin.sym} 350 -660 2 0 {name=p3 lab=PLDVDD}
C {iopin.sym} 350 -620 2 0 {name=p4 lab=PLAVDD}
C {iopin.sym} 350 -60 2 0 {name=p5 lab=PLVSS}
C {ipin.sym} 350 -520 0 0 {name=p9 lab=LIN3}
C {ipin.sym} 350 -400 0 0 {name=p10 lab=LIN2}
C {ipin.sym} 350 -280 0 0 {name=p11 lab=LIN1}
C {ipin.sym} 350 -160 0 0 {name=p12 lab=LIN0}
C {opin.sym} 920 -520 0 0 {name=p16 lab=LOUT3}
C {opin.sym} 920 -400 0 0 {name=p17 lab=LOUT2}
C {opin.sym} 920 -280 0 0 {name=p18 lab=LOUT1}
C {opin.sym} 920 -160 0 0 {name=p19 lab=LOUT0}
C {title.sym} 160 0 0 0 {name=l15 author="Pascal Gesell"}
