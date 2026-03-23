v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 810 -460 1610 -60 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.8667535e-08
x2=1.7246731e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="supply
output
input"
color="4 6 10"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 970 -860 1770 -460 {flags=graph
y1=0
y2=61
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.8667535e-08
x2=1.7246731e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Current Source (nA); i(vmeas) 1e9 *\\""
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N 470 -240 490 -240 {lab=output}
N 470 -330 680 -330 {lab=output}
N 660 -220 680 -220 {lab=output}
N 240 -340 240 -60 {lab=0}
N 570 -170 570 -60 {lab=0}
N 340 -340 340 -140 {lab=#net1}
N 300 -340 300 -180 {lab=#net2}
N 450 -60 570 -60 {lab=0}
N 530 -150 530 -130 {lab=#net3}
N 380 -130 530 -130 {lab=#net3}
N 340 -80 340 -60 {lab=0}
N 300 -60 340 -60 {lab=0}
N 300 -120 300 -60 {lab=0}
N 240 -60 300 -60 {lab=0}
N 180 -200 490 -200 {lab=input}
N 570 -520 570 -270 {lab=supply}
N 80 -520 80 -250 {lab=supply}
N 240 -520 570 -520 {lab=supply}
N 240 -520 240 -500 {lab=supply}
N 80 -520 240 -520 {lab=supply}
N 180 -60 240 -60 {lab=0}
N 80 -60 80 -40 {lab=0}
N 470 -330 470 -240 {lab=output}
N 680 -330 680 -220 {lab=output}
N 530 -310 530 -290 {lab=0}
N 450 -310 530 -310 {lab=0}
N 450 -310 450 -60 {lab=0}
N 340 -60 450 -60 {lab=0}
N 450 -470 710 -470 {lab=startup}
N 680 -220 710 -220 {lab=output}
N 80 -190 80 -60 {lab=0}
N 680 -220 680 -170 {lab=output}
N 680 -110 680 -60 {lab=0}
N 570 -60 680 -60 {lab=0}
N 380 -340 380 -310 {lab=#net4}
N 380 -250 380 -130 {lab=#net3}
N 180 -80 180 -60 {lab=0}
N 80 -60 180 -60 {lab=0}
C {ptat_curr_gen.sym} 210 -360 0 0 {name=x1}
C {op_amp_ver_2.sym} 560 -220 0 0 {name=x2}
C {res.sym} 300 -150 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 340 -110 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 80 -220 0 0 {name=V1 value="0 pulse 0 3.3 100ns 1us 1us 1m 1m" savecurrent=false}
C {vsource.sym} 180 -170 0 1 {name=V2 value="0 sin 0 1 20k 1.1us" savecurrent=false}
C {gnd.sym} 80 -40 0 0 {name=l1 lab=0}
C {code_shown.sym} 35 -880 0 0 {name=NGSPICE only_toplevel=false
value=".options savecurrents
.include tb_ptat_opamp_startup.save
.control
  save all
  optran 1 1 1 10n 10u 0
  * Static Operation Point Analysis
  op
  write tb_ptat_opamp_startup.raw
  set appendwrite
  * Transient Analysis
  tran 1n 60u
  write tb_ptat_opamp_startup.raw
.endc
"
}
C {code_shown.sym} 655 -890 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include sg13g2_bondpad.lib
"}
C {launcher.sym} 715 -740 0 0 {name=h4
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
C {devices/launcher.sym} 715 -692.5 2 1 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 715 -650 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ptat_opamp_startup.raw tran"
}
C {lab_wire.sym} 710 -220 0 1 {name=p1 sig_type=std_logic lab=output}
C {lab_wire.sym} 710 -470 0 1 {name=p2 sig_type=std_logic lab=startup}
C {res.sym} 680 -140 0 0 {name=R3
value=1Meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 440 -200 0 0 {name=p3 sig_type=std_logic lab=input}
C {lab_wire.sym} 140 -520 0 0 {name=p4 sig_type=std_logic lab=supply}
C {ammeter.sym} 380 -280 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {vsource.sym} 180 -110 0 1 {name=V3 value="0 pulse 0 1.65 1.1us 1u 0 1m 1m" savecurrent=false}
