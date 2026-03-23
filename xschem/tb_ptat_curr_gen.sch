v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 700 -910 1490 -610 {flags=graph
y1=0
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ptat_curr_gen.raw
sim_type=tran
color="1 6"
node="supply
starting"}
B 2 700 -610 1490 -310 {flags=graph
y1=0
y2=540
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ptat_curr_gen.raw
sim_type=tran
color="4 11 16"
node="\\"Output 1 (nA); 1e9 i(vi1) *\\"
\\"Output 1 (nA); 1e9 i(vi2) *\\"
\\"Output 1 (nA); 1e9 i(vi3) *\\""}
B 2 700 -310 1490 -10 {flags=graph
y1=-1900
y2=96000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_ptat_curr_gen.raw
sim_type=tran
color=7
node="\\"Current Consumption PTAT (nA); 1e9 i(visupply) *\\""}
N 90 -290 90 -60 {lab=0}
N 90 -480 90 -350 {lab=SUPPLY}
N 300 -60 340 -60 {lab=0}
N 260 -300 260 -280 {lab=IO1}
N 300 -300 300 -220 {lab=IO2}
N 340 -300 340 -280 {lab=IO3}
N 200 -480 200 -460 {lab=SUPPLY}
N 90 -480 200 -480 {lab=SUPPLY}
N 410 -430 460 -430 {lab=starting}
N 200 -300 200 -140 {lab=#net1}
N 200 -80 200 -60 {lab=0}
N 90 -60 200 -60 {lab=0}
N 260 -80 260 -60 {lab=0}
N 200 -60 260 -60 {lab=0}
N 300 -80 300 -60 {lab=0}
N 260 -60 300 -60 {lab=0}
N 340 -80 340 -60 {lab=0}
N 340 -220 340 -140 {lab=#net2}
N 300 -160 300 -140 {lab=#net3}
N 260 -220 260 -140 {lab=#net4}
N 90 -60 90 -30 {lab=0}
C {ptat_curr_gen.sym} 170 -320 0 0 {name=x1}
C {vsource.sym} 90 -320 0 0 {name=V1 value="3.3 pulse 0 3.3 50n 10n 10n 30u 40u" savecurrent=false}
C {gnd.sym} 90 -30 0 0 {name=l2 lab=0}
C {code_shown.sym} 35 -745 0 0 {name=NGSPICE only_toplevel=false
value=".options savecurrents
.include tb_ptat_curr_gen.save
.control
  save all
  optran 1 1 1 100n 10u 0
  * Static Operation Point Analysis
  op
  write tb_ptat_curr_gen.raw
  set appendwrite
  tran 10n 10u
  write tb_ptat_curr_gen.raw
  exit
.endc
"
}
C {code_shown.sym} 400 -740 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include sg13g2_bondpad.lib
"}
C {launcher.sym} 480 -580 0 0 {name=h4
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
C {devices/launcher.sym} 480 -542.5 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 480 -500 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ptat_curr_gen.raw tran"
}
C {res.sym} 300 -190 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 260 -250 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 340 -250 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 90 -480 0 0 {name=p1 sig_type=std_logic lab=SUPPLY
}
C {lab_wire.sym} 460 -430 0 1 {name=p2 sig_type=std_logic lab=starting}
C {lab_wire.sym} 260 -290 0 0 {name=p3 sig_type=std_logic lab=IO1}
C {lab_wire.sym} 300 -290 0 0 {name=p4 sig_type=std_logic lab=IO2}
C {lab_wire.sym} 340 -290 0 0 {name=p5 sig_type=std_logic lab=IO3}
C {ammeter.sym} 260 -110 0 0 {name=Vi1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 300 -110 0 0 {name=Vi2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 340 -110 0 0 {name=Vi3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 200 -110 0 0 {name=Visupply savecurrent=true spice_ignore=0}
