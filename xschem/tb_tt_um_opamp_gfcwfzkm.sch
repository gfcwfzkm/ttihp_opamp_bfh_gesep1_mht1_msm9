v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 2180 -475 2980 -75 {flags=graph
y1=0
y2=1.2
ypos1=0
ypos2=1.2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 6 6 6 6 6 6 6 6"
node="Startup;startup
D7;d7
D6;d6
D5;d5
D4;d4
D3;d3
D2;d2
D1;d1
D0;d0"
digital=1
sim_type=tran}
B 2 1380 -875 2980 -475 {flags=graph
y1=0
y2=3.1
ypos1=-0.04
ypos2=3.1
divy=5
subdivy=1
unity=1
x1=0
x2=0.00025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Signal input;input\\"
\\"Output;output\\"
\\"VAnalog / 2;x1.rd_tap\\""
color="17 8 7"
dataset=-1
unitx=1
logx=0
logy=0
digital=0
sim_type=tran}
B 2 1380 -475 2180 -75 {flags=graph
y1=-0.047
y2=1.4
ypos1=-0.047
ypos2=1.4
divy=5
subdivy=1
unity=1
x1=0
x2=0.00025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="SEL0;sel0
SEL1;sel1
OA active;all_disabl
FB;oa_disabl
FOL;fol_disabl
DAC;dac_disabl
uio_oe;oe_check"
color="1 1 4 4 4 4 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
sim_type=tran}
B 2 1380 -1275 2180 -875 {flags=graph
y1=-100
y2=1000
ypos1=0
ypos2=1.2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=0
color=7
node="\\"Power Analog (uW); vanalog i(vianalog) * 1e6 *\\""
sim_type=tran}
B 2 2180 -1275 2980 -875 {flags=graph
y1=-34
y2=65
ypos1=0
ypos2=1.2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00025
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=0
color=5
node="\\"Power Digital (uW); vdigital i(vidigital) * 1e6 *\\""
sim_type=tran}
N 80 -120 80 -80 {lab=GND}
N 80 -375 80 -230 {lab=#net1}
N 80 -770 800 -770 {lab=VDIGITAL}
N 80 -770 80 -435 {lab=VDIGITAL}
N 950 -90 950 -80 {lab=GND}
N 80 -120 180 -120 {lab=GND}
N 80 -170 80 -120 {lab=GND}
N 180 -730 180 -435 {lab=VANALOG}
N 180 -120 280 -120 {lab=GND}
N 280 -170 280 -120 {lab=GND}
N 1140 -870 1140 -730 {lab=output}
N 1100 -730 1140 -730 {lab=output}
N 980 -870 1140 -870 {lab=output}
N 760 -710 800 -710 {lab=INA}
N 760 -870 760 -710 {lab=INA}
N 760 -870 920 -870 {lab=INA}
N 280 -710 760 -710 {lab=INA}
N 280 -710 280 -600 {lab=INA}
N 280 -540 280 -435 {lab=#net2}
N 1205 -410 1205 -400 {lab=GND}
N 1270 -410 1270 -400 {lab=GND}
N 1205 -490 1205 -470 {lab=output}
N 1240 -490 1270 -490 {lab=output}
N 1270 -490 1270 -470 {lab=output}
N 1240 -730 1240 -490 {lab=output}
N 1205 -490 1240 -490 {lab=output}
N 1140 -730 1240 -730 {lab=output}
N 1100 -650 1290 -650 {lab=startup}
N 500 -135 500 -120 {lab=GND}
N 520 -120 540 -120 {lab=GND}
N 540 -135 540 -120 {lab=GND}
N 500 -120 520 -120 {lab=GND}
N 580 -135 580 -120 {lab=GND}
N 560 -120 580 -120 {lab=GND}
N 540 -120 560 -120 {lab=GND}
N 580 -120 600 -120 {lab=GND}
N 480 -120 500 -120 {lab=GND}
N 460 -135 460 -120 {lab=GND}
N 460 -120 480 -120 {lab=GND}
N 280 -120 460 -120 {lab=GND}
N 600 -330 800 -330 {lab=D0}
N 580 -350 800 -350 {lab=D1}
N 560 -370 800 -370 {lab=D2}
N 540 -390 800 -390 {lab=D3}
N 520 -410 800 -410 {lab=D4}
N 500 -430 800 -430 {lab=D5}
N 480 -450 800 -450 {lab=D6}
N 460 -470 800 -470 {lab=D7}
N 715 -150 800 -150 {lab=SEL0}
N 715 -150 715 -135 {lab=SEL0}
N 680 -170 800 -170 {lab=SEL1}
N 680 -170 680 -135 {lab=SEL1}
N 680 -65 680 -55 {lab=GND}
N 715 -75 715 -65 {lab=GND}
N 680 -65 715 -65 {lab=GND}
N 680 -75 680 -65 {lab=GND}
N 460 -470 460 -195 {lab=D7}
N 480 -205 480 -120 {lab=GND}
N 500 -430 500 -195 {lab=D5}
N 520 -205 520 -120 {lab=GND}
N 540 -390 540 -195 {lab=D3}
N 560 -205 560 -120 {lab=GND}
N 600 -205 600 -120 {lab=GND}
N 600 -330 600 -265 {lab=D0}
N 580 -350 580 -195 {lab=D1}
N 560 -370 560 -265 {lab=D2}
N 520 -410 520 -265 {lab=D4}
N 480 -450 480 -265 {lab=D6}
N 790 -670 800 -670 {lab=#net3}
N 790 -650 800 -650 {lab=#net4}
N 790 -630 800 -630 {lab=#net5}
N 790 -610 800 -610 {lab=#net6}
N 790 -590 800 -590 {lab=#net7}
N 790 -550 800 -550 {lab=#net8}
N 790 -530 800 -530 {lab=#net9}
N 790 -510 800 -510 {lab=#net10}
N 790 -290 800 -290 {lab=#net11}
N 790 -270 800 -270 {lab=#net12}
N 790 -250 800 -250 {lab=#net13}
N 790 -230 800 -230 {lab=#net14}
N 790 -210 800 -210 {lab=#net15}
N 790 -190 800 -190 {lab=#net16}
N 1100 -150 1110 -150 {lab=#net17}
N 1100 -170 1110 -170 {lab=#net18}
N 1100 -190 1110 -190 {lab=#net19}
N 1100 -210 1110 -210 {lab=#net20}
N 1100 -230 1110 -230 {lab=#net21}
N 1100 -250 1110 -250 {lab=#net22}
N 1100 -270 1110 -270 {lab=#net23}
N 1100 -290 1150 -290 {lab=oe_check}
N 1100 -330 1110 -330 {lab=#net24}
N 1100 -350 1110 -350 {lab=#net25}
N 1100 -370 1110 -370 {lab=#net26}
N 1100 -390 1110 -390 {lab=#net27}
N 1100 -410 1110 -410 {lab=#net28}
N 1100 -430 1110 -430 {lab=#net29}
N 1100 -450 1110 -450 {lab=#net30}
N 1100 -470 1110 -470 {lab=#net31}
N 1100 -630 1110 -630 {lab=#net32}
N 1100 -610 1110 -610 {lab=#net33}
N 1100 -590 1110 -590 {lab=#net34}
N 1100 -570 1290 -570 {lab=dac_disabl}
N 1100 -550 1290 -550 {lab=fol_disabl}
N 1100 -530 1290 -530 {lab=oa_disabl}
N 1100 -510 1290 -510 {lab=all_disabl}
N 180 -730 800 -730 {lab=VANALOG}
N 280 -375 280 -320 {lab=input}
N 280 -260 280 -230 {lab=#net35}
N 180 -375 180 -290 {lab=#net36}
N 180 -230 180 -120 {lab=GND}
C {tt_um_opamp_gfcwfzkm.sym} 800 -90 0 0 {name=x1}
C {code_shown.sym} 25 -1230 0 0 {name=NGSPICE only_toplevel=false
value=".options savecurrents
.include tb_tt_um_opamp_gfcwfzkm.save
.control
  save all
  optran 1 1 1 10n 10u 0
  * Static Operation Point Analysis
  op
  let power_d=-V(VDIGITAL) * I(VSUPD)
  let power=-V(VANALOG) * I(VSUPA)
  settype power power
  write tb_tt_um_opamp_gfcwfzkm.raw
  set appendwrite
  * Transient Analysis
  * === NOTE ===
  * Set the time to 10u max if doing a power-up simulation!
  *tran 10n 1u
  tran 10n 250u
  let power_d=-V(VDIGITAL) * I(VSUPD)
  let power=-V(VANALOG) * I(VSUPA)
  settype power power
  write tb_tt_um_opamp_gfcwfzkm.raw
  exit
.endc
"
}
C {vsource.sym} 80 -200 0 0 {name=VSUPD value="1.2 pulse 0 1.2 100n 1u" savecurrent=false}
C {gnd.sym} 80 -80 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 170 -770 0 0 {name=p1 sig_type=std_logic lab=VDIGITAL}
C {ammeter.sym} 80 -405 2 1 {name=Vidigital savecurrent=true spice_ignore=0}
C {vsource.sym} 180 -260 0 0 {name=VSUPA value="3.3 pulse 0 3.3 100ns 1u" savecurrent=false}
C {gnd.sym} 950 -80 0 0 {name=l1 lab=GND}
C {ammeter.sym} 180 -405 2 1 {name=Vianalog savecurrent=true spice_ignore=0}
C {lab_wire.sym} 180 -730 0 0 {name=p2 sig_type=std_logic lab=VANALOG}
C {vsource.sym} 280 -290 0 0 {name=VSIGNAL value="1.65 SIN 0 1 20k 1us" savecurrent=false}
C {ammeter.sym} 280 -405 2 1 {name=Visignal savecurrent=true spice_ignore=0}
C {res.sym} 280 -570 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {capa.sym} 1270 -440 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 950 -870 3 0 {name=R2
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} 1205 -440 0 0 {name=R3
value=1Meg
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1205 -400 0 0 {name=l5 lab=GND}
C {gnd.sym} 1270 -400 0 0 {name=l6 lab=GND}
C {vsource.sym} 600 -235 0 0 {name=V1 value="0 pulse 0 1.2 187.5u 10n 10n 1u 2u" savecurrent=false}
C {vsource.sym} 580 -165 0 0 {name=V2 value="0 pulse 0 1.2 187.5u 10n 10n 2u 4u" savecurrent=false}
C {vsource.sym} 560 -235 0 0 {name=V3 value="0 pulse 0 1.2 187.5u 10n 10n 4u 8u" savecurrent=false}
C {vsource.sym} 540 -165 0 0 {name=V4 value="0 pulse 0 1.2 187.5u 10n 10n 8u 16u" savecurrent=false}
C {vsource.sym} 520 -235 0 0 {name=V5 value="0 pulse 0 1.2 187.5u 10n 10n 16u 32u" savecurrent=false}
C {vsource.sym} 500 -165 0 0 {name=V6 value="0 pulse 0 1.2 187.5u 10n 10n 32u 64u" savecurrent=false}
C {vsource.sym} 480 -235 0 0 {name=V7 value="0 pulse 0 1.2 187.5u 10n 10n 64u 128u" savecurrent=false}
C {vsource.sym} 460 -165 0 0 {name=V8 value="0 pulse 0 1.2 187.5u 10n 10n 128u 256u" savecurrent=false}
C {lab_wire.sym} 620 -330 0 0 {name=p3 sig_type=std_logic lab=D0}
C {lab_wire.sym} 620 -350 0 0 {name=p4 sig_type=std_logic lab=D1}
C {lab_wire.sym} 620 -370 0 0 {name=p5 sig_type=std_logic lab=D2}
C {lab_wire.sym} 620 -390 0 0 {name=p6 sig_type=std_logic lab=D3}
C {lab_wire.sym} 620 -410 0 0 {name=p7 sig_type=std_logic lab=D4}
C {lab_wire.sym} 620 -430 0 0 {name=p8 sig_type=std_logic lab=D5}
C {lab_wire.sym} 620 -450 0 0 {name=p9 sig_type=std_logic lab=D6}
C {lab_wire.sym} 620 -470 0 0 {name=p10 sig_type=std_logic lab=D7}
C {vsource.sym} 680 -105 0 1 {name=V9 value="0 pulse 0 1.2 125u 100n 100n 125u 250u" savecurrent=false}
C {vsource.sym} 715 -105 0 0 {name=V10 value="0 pulse 0 1.2 62.5u 100n 100n 62.5u 125u" savecurrent=false}
C {gnd.sym} 680 -55 0 0 {name=l7 lab=GND}
C {noconn.sym} 790 -670 0 0 {name=l8}
C {noconn.sym} 790 -650 0 0 {name=l9}
C {noconn.sym} 790 -630 0 0 {name=l10}
C {noconn.sym} 790 -610 0 0 {name=l11}
C {noconn.sym} 790 -590 0 0 {name=l12}
C {noconn.sym} 790 -550 0 0 {name=l13}
C {noconn.sym} 790 -530 0 0 {name=l14}
C {noconn.sym} 790 -510 0 0 {name=l15}
C {noconn.sym} 790 -290 0 0 {name=l16}
C {noconn.sym} 790 -270 0 0 {name=l17}
C {noconn.sym} 790 -250 0 0 {name=l18}
C {noconn.sym} 790 -230 0 0 {name=l19}
C {noconn.sym} 790 -210 0 0 {name=l20}
C {noconn.sym} 790 -190 0 0 {name=l21}
C {noconn.sym} 1110 -150 2 0 {name=l22}
C {noconn.sym} 1110 -170 2 0 {name=l23}
C {noconn.sym} 1110 -190 2 0 {name=l24}
C {noconn.sym} 1110 -210 2 0 {name=l25}
C {noconn.sym} 1110 -230 2 0 {name=l26}
C {noconn.sym} 1110 -250 2 0 {name=l27}
C {noconn.sym} 1110 -270 2 0 {name=l28}
C {noconn.sym} 1150 -290 2 0 {name=l29}
C {noconn.sym} 1110 -330 2 0 {name=l30}
C {noconn.sym} 1110 -350 2 0 {name=l31}
C {noconn.sym} 1110 -370 2 0 {name=l32}
C {noconn.sym} 1110 -390 2 0 {name=l33}
C {noconn.sym} 1110 -410 2 0 {name=l34}
C {noconn.sym} 1110 -430 2 0 {name=l35}
C {noconn.sym} 1110 -450 2 0 {name=l36}
C {noconn.sym} 1110 -470 2 0 {name=l37}
C {noconn.sym} 1110 -590 2 0 {name=l38}
C {noconn.sym} 1110 -610 2 0 {name=l39}
C {noconn.sym} 1110 -630 2 0 {name=l40}
C {code_shown.sym} 415 -1230 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include sg13g2_bondpad.lib
"}
C {launcher.sym} 855 -1230 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {devices/launcher.sym} 855 -1182.5 2 1 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 855 -1140 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_tt_um_opamp_gfcwfzkm.raw tran"
}
C {lab_wire.sym} 1290 -650 0 1 {name=p11 sig_type=std_logic lab=startup}
C {lab_wire.sym} 1290 -510 0 1 {name=p12 sig_type=std_logic lab=all_disabl}
C {lab_wire.sym} 1290 -570 0 1 {name=p13 sig_type=std_logic lab=dac_disabl}
C {lab_wire.sym} 1290 -550 0 1 {name=p14 sig_type=std_logic lab=fol_disabl}
C {lab_wire.sym} 1290 -530 0 1 {name=p15 sig_type=std_logic lab=oa_disabl}
C {lab_wire.sym} 1240 -730 0 1 {name=p16 sig_type=std_logic lab=output}
C {lab_wire.sym} 280 -350 0 0 {name=p17 sig_type=std_logic lab=input
}
C {lab_wire.sym} 720 -170 0 0 {name=p18 sig_type=std_logic lab=SEL1}
C {lab_wire.sym} 720 -150 0 0 {name=p19 sig_type=std_logic lab=SEL0}
C {lab_wire.sym} 280 -710 0 0 {name=p20 sig_type=std_logic lab=INA
}
C {vsource.sym} 280 -200 0 0 {name=Vturnon value="0 pulse 0 1.65 1.1us 100ns" savecurrent=false}
C {lab_wire.sym} 1140 -290 0 1 {name=p21 sig_type=std_logic lab=oe_check}
C {title.sym} 160 0 0 0 {name=l3 author="Pascal Gesell"}
