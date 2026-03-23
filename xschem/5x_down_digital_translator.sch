v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 610 -550 630 -550 {lab=PDIGVDD}
N 730 -430 730 -410 {lab=PDIGVSS}
N 590 -410 730 -410 {lab=PDIGVSS}
N 590 -530 590 -410 {lab=PDIGVSS}
N 470 -530 590 -530 {lab=PDIGVSS}
N 470 -550 470 -530 {lab=PDIGVSS}
N 610 -310 630 -310 {lab=PDIGVDD}
N 470 -290 590 -290 {lab=PDIGVSS}
N 470 -310 470 -290 {lab=PDIGVSS}
N 610 -550 610 -310 {lab=PDIGVDD}
N 590 -410 590 -290 {lab=PDIGVSS}
N 570 -390 850 -390 {lab=DOUT2}
N 830 -270 850 -270 {lab=DOUT1}
N 830 -510 850 -510 {lab=DOUT3}
N 570 -630 850 -630 {lab=DOUT4}
N 350 -430 370 -430 {lab=PDIGVDD}
N 350 -670 350 -430 {lab=PDIGVDD}
N 350 -670 370 -670 {lab=PDIGVDD}
N 610 -720 610 -550 {lab=PDIGVDD}
N 350 -720 610 -720 {lab=PDIGVDD}
N 350 -720 350 -670 {lab=PDIGVDD}
N 330 -720 350 -720 {lab=PDIGVDD}
N 330 -630 370 -630 {lab=DIN4}
N 330 -510 630 -510 {lab=DIN3}
N 330 -390 370 -390 {lab=DIN2}
N 470 -50 590 -50 {lab=PDIGVSS}
N 330 -270 630 -270 {lab=DIN1}
N 570 -150 850 -150 {lab=DOUT0}
N 730 -190 730 -170 {lab=PDIGVSS}
N 590 -170 730 -170 {lab=PDIGVSS}
N 590 -290 590 -170 {lab=PDIGVSS}
N 470 -70 470 -50 {lab=PDIGVSS}
N 590 -170 590 -50 {lab=PDIGVSS}
N 330 -50 470 -50 {lab=PDIGVSS}
N 350 -190 370 -190 {lab=PDIGVDD}
N 350 -430 350 -190 {lab=PDIGVDD}
N 330 -150 370 -150 {lab=DIN0}
C {down_digital_translator.sym} 390 -570 0 0 {name=x1}
C {down_digital_translator.sym} 650 -450 0 0 {name=x2}
C {down_digital_translator.sym} 390 -330 0 0 {name=x3}
C {down_digital_translator.sym} 650 -210 0 0 {name=x4}
C {iopin.sym} 330 -720 2 0 {name=p3 lab=PDIGVDD}
C {iopin.sym} 330 -50 2 0 {name=p5 lab=PDIGVSS}
C {ipin.sym} 330 -510 0 0 {name=p9 lab=DIN3}
C {ipin.sym} 330 -390 0 0 {name=p10 lab=DIN2}
C {ipin.sym} 330 -270 0 0 {name=p11 lab=DIN1}
C {ipin.sym} 330 -150 0 0 {name=p12 lab=DIN0}
C {down_digital_translator.sym} 390 -90 0 0 {name=x5}
C {ipin.sym} 330 -630 0 0 {name=p1 lab=DIN4}
C {opin.sym} 850 -510 0 0 {name=p16 lab=DOUT3}
C {opin.sym} 850 -390 0 0 {name=p17 lab=DOUT2}
C {opin.sym} 850 -270 0 0 {name=p18 lab=DOUT1}
C {opin.sym} 850 -150 0 0 {name=p19 lab=DOUT0}
C {opin.sym} 850 -630 0 0 {name=p2 lab=DOUT4}
C {title.sym} 160 0 0 0 {name=l15 author="Pascal Gesell"}
