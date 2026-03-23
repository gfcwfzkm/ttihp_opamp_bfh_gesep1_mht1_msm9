v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 430 -330 1230 -60 {flags=graph
y1=0
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="supply
out"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
N 290 -90 290 -70 {lab=0}
N 180 -70 290 -70 {lab=0}
N 110 -110 110 -70 {lab=0}
N 290 -170 290 -150 {lab=OUT}
N 260 -170 290 -170 {lab=OUT}
N 290 -190 290 -170 {lab=OUT}
N 290 -170 310 -170 {lab=OUT}
N 290 -270 290 -250 {lab=SUPPLY}
N 180 -270 290 -270 {lab=SUPPLY}
N 110 -270 110 -170 {lab=SUPPLY}
N 180 -160 200 -160 {lab=0}
N 180 -160 180 -70 {lab=0}
N 110 -70 180 -70 {lab=0}
N 180 -180 200 -180 {lab=SUPPLY}
N 180 -270 180 -180 {lab=SUPPLY}
N 110 -270 180 -270 {lab=SUPPLY}
N 180 -70 180 -50 {lab=0}
C {tie_low.sym} 130 -160 0 0 {name=x1}
C {vsource.sym} 110 -140 0 0 {name=V1 value="1.2 pulse 0 1.2 100n 1u" savecurrent=false}
C {res.sym} 290 -220 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} 290 -120 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 180 -270 0 0 {name=p1 sig_type=std_logic lab=SUPPLY}
C {gnd.sym} 180 -50 0 0 {name=l1 lab=0}
C {lab_wire.sym} 310 -170 0 1 {name=p2 sig_type=std_logic lab=OUT
}
C {code_shown.sym} 25 -540 0 0 {name=NGSPICE only_toplevel=false
value=".options savecurrents
.include tb_tie_low.save
.control
  save all
  optran 1 1 1 10n 10u 0
  * Static Operation Point Analysis
  op
  write tb_tie_low.raw
  set appendwrite
  * Transient Analysis
  tran 1n 2u
  write tb_tie_low.raw
  exit
.endc
"
}
C {code_shown.sym} 895 -460 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include sg13g2_bondpad.lib
"}
C {launcher.sym} 525 -460 0 0 {name=h4
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
C {devices/launcher.sym} 525 -412.5 2 1 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 525 -370 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_tie_low.raw tran"
}
C {title.sym} 160 0 0 0 {name=l15 author="Pascal Gesell"}
