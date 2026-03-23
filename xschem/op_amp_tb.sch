v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1230 -430 2030 -30 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 6 8"
node="\\"Input; oa_plus\\"
\\"Output; oa_output\\"
\\"OpAmp Disable;opamp_disable\\""
hilight_wave=-1
linewidth_mult=0.5
rawfile=$netlist_dir/op_amp_tb.raw
sim_type=tran
autoload=1
}
B 2 1225 -830 2025 -430 {flags=graph
y1=-4.9
y2=330
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=21
node="\\"Power Consumption (uW); 1e6 power *\\""
hilight_wave=-1
linewidth_mult=0.5
rawfile=$netlist_dir/op_amp_tb.raw
sim_type=tran
autoload=1}
T {tcleval(Power: [to_eng [xschem raw value power 0]]W)} 360 -380 0 0 0.4 0.4 {floater=-1 layer=15}
N 540 -350 540 -290 {lab=#net1}
N 540 -190 540 -70 {lab=GND}
N 140 -190 140 -100 {lab=GND}
N 630 -240 680 -240 {lab=oa_output}
N 210 -130 210 -100 {lab=GND}
N 210 -220 210 -190 {lab=oa_plus}
N 680 -330 680 -240 {lab=oa_output}
N 680 -240 680 -190 {lab=oa_output}
N 740 -240 740 -190 {lab=oa_output}
N 680 -130 680 -70 {lab=GND}
N 740 -130 740 -70 {lab=GND}
N 680 -240 740 -240 {lab=oa_output}
N 660 -330 680 -330 {lab=oa_output}
N 800 -240 880 -240 {lab=oa_output}
N 880 -240 880 -160 {lab=oa_output}
N 970 -240 970 -160 {lab=oa_minus}
N 1060 -240 1060 -160 {lab=oa_plus}
N 470 -550 470 -520 {lab=opamp_disable}
N 470 -550 500 -550 {lab=opamp_disable}
N 360 -290 370 -290 {lab=#net1}
N 250 -290 260 -290 {lab=#net1}
N 310 -290 320 -290 {lab=#net2}
N 310 -290 310 -250 {lab=#net2}
N 300 -290 310 -290 {lab=#net2}
N 310 -130 310 -100 {lab=GND}
N 750 -320 760 -320 {lab=GND}
N 800 -310 800 -240 {lab=oa_output}
N 740 -240 800 -240 {lab=oa_output}
N 860 -310 860 -300 {lab=GND}
N 860 -380 860 -370 {lab=#net3}
N 800 -380 860 -380 {lab=#net3}
N 800 -380 800 -370 {lab=#net3}
N 750 -340 760 -340 {lab=opamp_disable}
N 750 -410 750 -340 {lab=opamp_disable}
N 500 -410 500 -310 {lab=opamp_disable}
N 140 -350 140 -250 {lab=VPSU}
N 500 -410 750 -410 {lab=opamp_disable}
N 500 -550 500 -410 {lab=opamp_disable}
N 750 -320 750 -300 {lab=GND}
N 140 -350 155 -350 {lab=VPSU}
N 250 -350 260 -350 {lab=#net1}
N 260 -350 260 -320 {lab=#net1}
N 370 -350 540 -350 {lab=#net1}
N 210 -220 460 -220 {lab=oa_plus}
N 310 -250 310 -190 {lab=#net2}
N 360 -260 360 -140 {lab=#net4}
N 360 -140 500 -140 {lab=#net4}
N 500 -170 500 -140 {lab=#net4}
N 250 -350 250 -290 {lab=#net1}
N 215 -350 250 -350 {lab=#net1}
N 370 -350 370 -290 {lab=#net1}
N 360 -350 370 -350 {lab=#net1}
N 360 -350 360 -320 {lab=#net1}
N 260 -350 360 -350 {lab=#net1}
N 260 -260 260 -250 {lab=#net2}
N 260 -250 310 -250 {lab=#net2}
N 450 -260 460 -260 {lab=oa_minus}
N 450 -330 450 -260 {lab=oa_minus}
N 450 -330 600 -330 {lab=oa_minus}
C {title.sym} 160 0 0 0 {name=l1 author="Pascal Gesell"}
C {vsource.sym} 140 -220 0 0 {name=VVPSU value=3.3 savecurrent=false}
C {isource.sym} 310 -160 0 0 {name=I0 value=25e-9}
C {code_shown.sym} 840 -570 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ_stat
.lib cornerCAP.lib cap_typ
.include sg13g2_bondpad.lib
"}
C {code_shown.sym} 85 -795 0 0 {name=NGSPICE only_toplevel=false
value=".options savecurrents
.include tb_op_amp.save
.control
  save all
  optran 1 1 1 100n 10u 0
  * Static Operation Point Analysis
  op
  let power=-V(VPSU) * I(VVPSU)
  settype power power
  write tb_op_amp.raw
  set appendwrite
  * Transient Analysis using PULSE in VPLUS, switching a signal hard 
  tran 1n 100u
  let power=-V(VPSU) * I(VVPSU)
  settype power power
  write tb_op_amp.raw
  exit
.endc
"
}
C {gnd.sym} 140 -100 0 0 {name=l2 lab=GND}
C {launcher.sym} 900 -730 0 0 {name=h4
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
C {devices/launcher.sym} 900 -692.5 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {gnd.sym} 310 -100 0 0 {name=l3 lab=GND}
C {gnd.sym} 540 -70 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 680 -240 0 1 {name=p2 sig_type=std_logic lab=oa_output}
C {vsource.sym} 210 -160 0 0 {name=VPLUS value="1.65 pulse 1 2.3 50n 50n 50n 50u 100u ac 1 0" savecurrent=false}
C {launcher.sym} 900 -650 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_op_amp.raw tran"
}
C {lab_wire.sym} 140 -350 0 0 {name=p1 sig_type=std_logic lab=VPSU}
C {lab_wire.sym} 210 -220 0 1 {name=p4 sig_type=std_logic lab=oa_plus}
C {gnd.sym} 210 -100 0 0 {name=l7 lab=GND
value="1.65 pulse 1.6 1.7 10n 1n 1n 0.999u ac 1 0"}
C {lab_wire.sym} 480 -330 0 0 {name=p3 sig_type=std_logic lab=oa_minus}
C {res.sym} 680 -160 0 1 {name=R2
value=100e6
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 740 -160 0 0 {name=C1
m=1
value=10e-12
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 680 -70 0 0 {name=l5 lab=GND}
C {gnd.sym} 740 -70 0 0 {name=l6 lab=GND}
C {ammeter.sym} 630 -330 1 1 {name=Vmeas savecurrent=true spice_ignore=0}
C {sg13g2_pr/bondpad.sym} 880 -120 2 0 {name=X2
model=bondpad
spiceprefix=X
size=80u
shape=0
padtype=0
}
C {sg13g2_pr/bondpad.sym} 970 -120 2 0 {name=X3
model=bondpad
spiceprefix=X
size=80u
shape=0
padtype=0
}
C {sg13g2_pr/bondpad.sym} 1060 -120 2 0 {name=X4
model=bondpad
spiceprefix=X
size=80u
shape=0
padtype=0
}
C {lab_wire.sym} 970 -240 0 0 {name=p5 sig_type=std_logic lab=oa_minus}
C {lab_wire.sym} 1060 -240 0 1 {name=p6 sig_type=std_logic lab=oa_plus}
C {vsource.sym} 470 -490 0 0 {name=VPLUS1 value="0 pulse 0 3.3 20u 50n 50n 50u 100u ac 1 0" savecurrent=false}
C {gnd.sym} 470 -460 0 0 {name=l8 lab=GND}
C {sg13g2_pr/sg13_hv_pmos.sym} 340 -290 0 0 {name=M1
l=0.4u
w=1.2u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 280 -290 0 1 {name=M2
l=0.4u
w=1.2u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {vsource.sym} 860 -340 0 0 {name=V1 value="1.65 SIN 1.65 1 100k 1ns 0 0" savecurrent=false}
C {switch_ngspice.sym} 800 -340 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=3 VH=0.01
+ RON=1k ROFF=10G "}
C {gnd.sym} 750 -300 0 0 {name=l9 lab=GND}
C {gnd.sym} 860 -300 0 0 {name=l10 lab=GND}
C {lab_wire.sym} 500 -410 0 0 {name=p7 sig_type=std_logic lab=opamp_disable
}
C {ammeter.sym} 185 -350 3 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {op_amp_ver_2.sym} 530 -240 0 0 {name=x1}
