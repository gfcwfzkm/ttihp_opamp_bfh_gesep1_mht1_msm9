v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 580 -1050 600 -1050 {lab=PLAVDD}
N 600 -570 600 -330 {lab=PLAVDD}
N 580 -330 600 -330 {lab=PLAVDD}
N 640 -210 660 -210 {lab=PLDVDD}
N 640 -450 640 -210 {lab=PLDVDD}
N 640 -930 660 -930 {lab=PLDVDD}
N 640 -690 660 -690 {lab=PLDVDD}
N 640 -930 640 -690 {lab=PLDVDD}
N 640 -450 660 -450 {lab=PLDVDD}
N 640 -690 640 -450 {lab=PLDVDD}
N 760 -330 760 -310 {lab=PLVSS}
N 620 -310 760 -310 {lab=PLVSS}
N 620 -430 620 -310 {lab=PLVSS}
N 480 -910 620 -910 {lab=PLVSS}
N 480 -930 480 -910 {lab=PLVSS}
N 760 -810 760 -790 {lab=PLVSS}
N 620 -790 760 -790 {lab=PLVSS}
N 620 -910 620 -790 {lab=PLVSS}
N 480 -690 480 -670 {lab=PLVSS}
N 480 -670 620 -670 {lab=PLVSS}
N 620 -790 620 -670 {lab=PLVSS}
N 760 -570 760 -550 {lab=PLVSS}
N 620 -550 760 -550 {lab=PLVSS}
N 620 -670 620 -550 {lab=PLVSS}
N 480 -450 480 -430 {lab=PLVSS}
N 480 -430 620 -430 {lab=PLVSS}
N 620 -550 620 -430 {lab=PLVSS}
N 480 -210 480 -190 {lab=PLVSS}
N 480 -190 620 -190 {lab=PLVSS}
N 620 -310 620 -190 {lab=PLVSS}
N 760 -90 760 -70 {lab=PLVSS}
N 620 -70 760 -70 {lab=PLVSS}
N 620 -190 620 -70 {lab=PLVSS}
N 580 -1010 940 -1010 {lab=nLOUT7}
N 860 -930 880 -930 {lab=PLAVDD}
N 880 -450 880 -210 {lab=PLAVDD}
N 860 -210 880 -210 {lab=PLAVDD}
N 860 -450 880 -450 {lab=PLAVDD}
N 880 -690 880 -450 {lab=PLAVDD}
N 860 -690 880 -690 {lab=PLAVDD}
N 880 -930 880 -690 {lab=PLAVDD}
N 360 -330 380 -330 {lab=PLDVDD}
N 360 -570 360 -330 {lab=PLDVDD}
N 360 -1050 380 -1050 {lab=PLDVDD}
N 360 -810 380 -810 {lab=PLDVDD}
N 360 -1050 360 -810 {lab=PLDVDD}
N 360 -570 380 -570 {lab=PLDVDD}
N 360 -810 360 -570 {lab=PLDVDD}
N 580 -570 600 -570 {lab=PLAVDD}
N 600 -810 600 -570 {lab=PLAVDD}
N 580 -810 600 -810 {lab=PLAVDD}
N 600 -1050 600 -810 {lab=PLAVDD}
N 580 -290 940 -290 {lab=nLOUT1}
N 860 -170 940 -170 {lab=nLOUT0}
N 860 -410 940 -410 {lab=nLOUT2}
N 860 -650 940 -650 {lab=nLOUT4}
N 860 -890 940 -890 {lab=nLOUT6}
N 580 -770 940 -770 {lab=nLOUT5}
N 580 -530 940 -530 {lab=nLOUT3}
N 360 -1150 360 -1050 {lab=PLDVDD}
N 300 -1150 360 -1150 {lab=PLDVDD}
N 640 -1150 640 -930 {lab=PLDVDD}
N 360 -1150 640 -1150 {lab=PLDVDD}
N 300 -1110 600 -1110 {lab=PLAVDD}
N 600 -1110 600 -1050 {lab=PLAVDD}
N 600 -1110 880 -1110 {lab=PLAVDD}
N 880 -1110 880 -930 {lab=PLAVDD}
N 300 -70 620 -70 {lab=PLVSS}
N 300 -170 660 -170 {lab=LIN0}
N 300 -290 380 -290 {lab=LIN1}
N 300 -410 660 -410 {lab=LIN2}
N 300 -530 380 -530 {lab=LIN3}
N 300 -650 660 -650 {lab=LIN4}
N 300 -770 380 -770 {lab=LIN5}
N 300 -890 660 -890 {lab=LIN6}
N 300 -1010 380 -1010 {lab=LIN7}
C {inverting_digital_level_translator.sym} 400 -950 0 0 {name=x1}
C {inverting_digital_level_translator.sym} 680 -830 0 0 {name=x2}
C {inverting_digital_level_translator.sym} 400 -710 0 0 {name=x3}
C {inverting_digital_level_translator.sym} 680 -590 0 0 {name=x4}
C {inverting_digital_level_translator.sym} 680 -350 0 0 {name=x5}
C {inverting_digital_level_translator.sym} 400 -470 0 0 {name=x6}
C {inverting_digital_level_translator.sym} 400 -230 0 0 {name=x7}
C {inverting_digital_level_translator.sym} 680 -110 0 0 {name=x8}
C {ipin.sym} 300 -1010 0 0 {name=p1 lab=LIN7}
C {opin.sym} 940 -1010 0 0 {name=p2 lab=nLOUT7}
C {iopin.sym} 300 -1150 2 0 {name=p3 lab=PLDVDD}
C {iopin.sym} 300 -1110 2 0 {name=p4 lab=PLAVDD}
C {iopin.sym} 300 -70 2 0 {name=p5 lab=PLVSS}
C {ipin.sym} 300 -890 0 0 {name=p6 lab=LIN6}
C {ipin.sym} 300 -770 0 0 {name=p7 lab=LIN5}
C {ipin.sym} 300 -650 0 0 {name=p8 lab=LIN4}
C {ipin.sym} 300 -530 0 0 {name=p9 lab=LIN3}
C {ipin.sym} 300 -410 0 0 {name=p10 lab=LIN2}
C {ipin.sym} 300 -290 0 0 {name=p11 lab=LIN1}
C {ipin.sym} 300 -170 0 0 {name=p12 lab=LIN0}
C {opin.sym} 940 -890 0 0 {name=p13 lab=nLOUT6}
C {opin.sym} 940 -770 0 0 {name=p14 lab=nLOUT5}
C {opin.sym} 940 -650 0 0 {name=p15 lab=nLOUT4}
C {opin.sym} 940 -530 0 0 {name=p16 lab=nLOUT3}
C {opin.sym} 940 -410 0 0 {name=p17 lab=nLOUT2}
C {opin.sym} 940 -290 0 0 {name=p18 lab=nLOUT1}
C {opin.sym} 940 -170 0 0 {name=p19 lab=nLOUT0}
C {title.sym} 160 0 0 0 {name=l15 author="Pascal Gesell"}
