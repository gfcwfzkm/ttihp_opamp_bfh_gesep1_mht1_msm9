v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 880 -330 1680 -40 {flags=graph
y1=-3.9e-09
y2=1.3e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in_lv
out_hv"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
autoload=1
rawfile=$netlist_dir/tb_digital_level_translator.raw}
B 2 880 -620 1680 -330 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in_lv
inv_out_hv"
color="4 1"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
B 2 880 -910 1680 -620 {flags=graph
y1=-0.02
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in_hv
out_lv"
color="4 1"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
N 680 -260 680 -160 {lab=#net1}
N 80 -100 80 -80 {lab=0}
N 220 -100 220 -80 {lab=0}
N 410 -80 550 -80 {lab=0}
N 680 -100 680 -80 {lab=0}
N 220 -220 310 -220 {lab=in_lv}
N 220 -220 220 -160 {lab=in_lv}
N 510 -260 680 -260 {lab=#net1}
N 610 -80 680 -80 {lab=0}
N 550 -220 550 -180 {lab=out_hv}
N 510 -220 550 -220 {lab=out_hv}
N 550 -220 610 -220 {lab=out_hv}
N 610 -220 610 -180 {lab=out_hv}
N 610 -120 610 -80 {lab=0}
N 550 -80 610 -80 {lab=0}
N 550 -120 550 -80 {lab=0}
N 80 -80 80 -60 {lab=0}
N 80 -260 310 -260 {lab=#net2}
N 80 -80 220 -80 {lab=0}
N 80 -260 80 -160 {lab=#net2}
N 410 -140 410 -80 {lab=0}
N 220 -80 410 -80 {lab=0}
N 550 -470 550 -430 {lab=inv_out_hv}
N 510 -470 550 -470 {lab=inv_out_hv}
N 550 -470 610 -470 {lab=inv_out_hv}
N 610 -470 610 -430 {lab=inv_out_hv}
N 610 -370 610 -310 {lab=0}
N 550 -370 550 -310 {lab=0}
N 410 -390 410 -310 {lab=0}
N 680 -510 680 -260 {lab=#net1}
N 510 -510 680 -510 {lab=#net1}
N 220 -470 310 -470 {lab=in_lv}
N 220 -470 220 -220 {lab=in_lv}
N 80 -510 310 -510 {lab=#net2}
N 80 -510 80 -260 {lab=#net2}
N 540 -720 540 -680 {lab=out_lv}
N 510 -720 540 -720 {lab=out_lv}
N 80 -760 310 -760 {lab=#net2}
N 80 -760 80 -510 {lab=#net2}
N 540 -620 540 -580 {lab=0}
N 410 -640 410 -580 {lab=0}
N 170 -600 170 -580 {lab=0}
N 170 -720 170 -660 {lab=in_hv}
N 170 -720 310 -720 {lab=in_hv}
C {digital_level_translator.sym} 330 -160 0 0 {name=x1}
C {vsource.sym} 80 -130 0 0 {name=VVDIG value=1.2 savecurrent=false}
C {vsource.sym} 680 -130 0 0 {name=VAN value=3.3 savecurrent=false}
C {vsource.sym} 220 -130 0 0 {name=VSIG value="1.2 pulse 0 1.2 0 100n 100n 1u 2u" savecurrent=false}
C {code_shown.sym} 85 -1135 0 0 {name=NGSPICE only_toplevel=false
value=".options savecurrents
.include tb_digital_level_translator.save
.control
  save all
  optran 1 1 1 100n 10u 0
  * Static Operation Point Analysis
  op
  write tb_digital_level_translator.raw
  set appendwrite
  * Transient Analysis
  tran 100p 3u
  write tb_digital_level_translator.raw
  exit
.endc
"
}
C {code_shown.sym} 530 -1140 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include sg13g2_bondpad.lib
"}
C {launcher.sym} 620 -980 0 0 {name=h4
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
C {devices/launcher.sym} 620 -932.5 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 620 -890 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_digital_level_translator.raw tran"
}
C {res.sym} 550 -150 0 0 {name=R1
value=80k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 80 -60 0 0 {name=l1 lab=0}
C {lab_wire.sym} 580 -220 0 0 {name=p1 sig_type=std_logic lab=out_hv}
C {lab_wire.sym} 240 -220 0 0 {name=p2 sig_type=std_logic lab=in_lv}
C {capa-2.sym} 610 -150 0 0 {name=C1
m=1
value=10f
footprint=1206
device=polarized_capacitor}
C {inverting_digital_level_translator.sym} 330 -410 0 0 {name=x2}
C {res.sym} 550 -400 0 0 {name=R2
value=80k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 580 -470 0 0 {name=p3 sig_type=std_logic lab=inv_out_hv}
C {capa-2.sym} 610 -400 0 0 {name=C2
m=1
value=10f
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 550 -310 0 0 {name=l2 lab=0}
C {gnd.sym} 610 -310 0 0 {name=l3 lab=0}
C {gnd.sym} 410 -310 0 0 {name=l4 lab=0}
C {down_digital_translator.sym} 330 -660 0 0 {name=x3}
C {res.sym} 540 -650 0 0 {name=R3
value=10Meg
footprint=1206
device=resistor
m=1}
C {gnd.sym} 540 -580 0 0 {name=l5 lab=0}
C {lab_wire.sym} 540 -720 0 1 {name=p4 sig_type=std_logic lab=out_lv}
C {vsource.sym} 170 -630 0 0 {name=VSIG1 value="3.3 pulse 0 3.3 0 100n 100n 1u 2u" savecurrent=false}
C {gnd.sym} 170 -580 0 0 {name=l6 lab=0}
C {gnd.sym} 410 -580 0 0 {name=l7 lab=0}
C {lab_wire.sym} 170 -720 0 0 {name=p5 sig_type=std_logic lab=in_hv}
C {title.sym} 160 0 0 0 {name=l8 author="Pascal Gesell"}
