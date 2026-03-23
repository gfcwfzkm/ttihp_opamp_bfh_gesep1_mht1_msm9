v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 780 -920 1580 -520 {flags=graph
y1=-400
y2=-90
ypos1=0
ypos2=2
divy=4
subdivy=1
unity=1
x1=0
x2=9
divx=6
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
hilight_wave=-1
linewidth_mult=0.5
sim_type=ac
autoload=1
color=17
node="ph(Aol) cph()"}
B 2 780 -510 1580 -110 {flags=graph
y1=-100
y2=100
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
color=17
node="Aol db20()"
hilight_wave=-1
linewidth_mult=0.5
rawfile=$netlist_dir/op_amp_tb_ac.raw
sim_type=ac
autoload=1}
T {AC Analysis} 780 -960 0 0 0.6 0.6 {layer=6}
N 540 -420 540 -360 {lab=VPSU}
N 140 -420 540 -420 {lab=VPSU}
N 140 -420 140 -320 {lab=VPSU}
N 540 -260 540 -140 {lab=GND}
N 140 -260 140 -170 {lab=GND}
N 500 -160 500 -140 {lab=GND}
N 500 -240 500 -220 {lab=#net1}
N 630 -310 680 -310 {lab=oa_output}
N 680 -200 680 -140 {lab=GND}
N 240 -200 240 -170 {lab=GND}
N 240 -290 240 -260 {lab=oa_plus}
N 420 -330 460 -330 {lab=oa_minus}
N 680 -310 680 -260 {lab=oa_output}
N 680 -400 680 -310 {lab=oa_output}
N 420 -400 420 -330 {lab=oa_minus}
N 240 -290 460 -290 {lab=oa_plus}
N 420 -400 570 -400 {lab=oa_minus}
N 630 -400 680 -400 {lab=oa_output}
C {title.sym} 160 0 0 0 {name=l1 author="Pascal Gesell"}
C {vsource.sym} 140 -290 0 0 {name=VVPSU value=3.3 savecurrent=false}
C {isource.sym} 500 -190 2 0 {name=I0 value=25e-9}
C {code_shown.sym} 0 -120 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ_stat
.lib cornerCAP.lib cap_typ
"}
C {code_shown.sym} 5 -955 0 0 {name=NGSPICE only_toplevel=false
value=".temp 27
.options savecurrents
.control
  save all
  optran 1 1 1 100n 10u 0

  * AC Sweep using VPLUS 
  ac dec 100 1 1G
  remzerovec
  let Aol = oa_output / (oa_plus - oa_minus)
  let db_Aol = dB(Aol)
  let ph_margin = 180-ph(Aol)
  meas ac freq_at when db_Aol=1.0
  write op_amp_tb_ac.raw

  set units = degrees
  *plot db(Aol)
  *plot cph(Aol)
  *quit 0
.endc
"
}
C {gnd.sym} 140 -170 0 0 {name=l2 lab=GND}
C {launcher.sym} 100 -550 0 0 {name=h4
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
C {devices/launcher.sym} 100 -512.5 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {op_amp.sym} 530 -310 0 0 {name=x1}
C {gnd.sym} 500 -140 0 0 {name=l3 lab=GND}
C {gnd.sym} 540 -140 0 0 {name=l4 lab=GND}
C {gnd.sym} 680 -140 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 680 -310 0 1 {name=p2 sig_type=std_logic lab=oa_output}
C {vsource.sym} 240 -230 0 0 {name=VPLUS value="1.65 pulse 1 2.3 50n 50n 50n 10u 20u ac 1 0" savecurrent=false}
C {launcher.sym} 100 -470 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/op_amp_tb_ac.raw"
}
C {lab_wire.sym} 140 -420 0 0 {name=p1 sig_type=std_logic lab=VPSU}
C {lab_wire.sym} 240 -290 0 1 {name=p4 sig_type=std_logic lab=oa_plus}
C {gnd.sym} 240 -170 0 0 {name=l7 lab=GND
value="1.65 pulse 1.6 1.7 10n 1n 1n 0.999u ac 1 0"}
C {res.sym} 600 -400 3 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 420 -330 0 0 {name=p3 sig_type=std_logic lab=oa_minus}
C {capa.sym} 680 -230 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
