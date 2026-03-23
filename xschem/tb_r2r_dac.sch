v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 930 -800 1730 -400 {flags=graph
y1=-0.00048
y2=3.3
ypos1=0.0050304471
ypos2=2.1945102
divy=5
subdivy=1
unity=1
x1=0
x2=0.01024
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=dout
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_r2r_dac.raw
digital=0}
B 2 930 -400 1730 -90 {flags=graph
y1=-0.00029
y2=3.3
ypos1=-0.00029
ypos2=3.3
divy=5
subdivy=1
unity=1
x1=0
x2=0.01024
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Disable;disable
D7;d7
D6;d6
D5;d5
D4;d4
D3;d3
D2;d2
D1;d1
D0;d0"
color="4 4 4 4 4 4 4 4 4"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/tb_r2r_dac.raw
digital=1}
N 760 -340 760 -270 {lab=DOUT}
N 850 -340 850 -270 {lab=DOUT}
N 760 -340 850 -340 {lab=DOUT}
N 850 -210 850 -170 {lab=0}
N 760 -170 850 -170 {lab=0}
N 760 -210 760 -170 {lab=0}
N 90 -180 90 -160 {lab=0}
N 760 -170 760 -150 {lab=0}
N 370 -290 390 -290 {lab=0}
N 370 -290 370 -180 {lab=0}
N 290 -180 370 -180 {lab=0}
N 90 -200 90 -180 {lab=0}
N 190 -200 190 -180 {lab=0}
N 90 -180 190 -180 {lab=0}
N 290 -200 290 -180 {lab=0}
N 190 -180 290 -180 {lab=0}
N 290 -340 390 -340 {lab=#net1}
N 190 -360 390 -360 {lab=#net2}
N 90 -390 390 -390 {lab=#net3}
N 90 -390 90 -260 {lab=#net3}
N 690 -340 760 -340 {lab=DOUT}
N 480 -170 490 -170 {lab=D2}
N 480 -170 480 -150 {lab=D2}
N 450 -190 470 -190 {lab=D1}
N 450 -190 450 -160 {lab=D1}
N 420 -210 450 -210 {lab=D0}
N 420 -210 420 -150 {lab=D0}
N 540 -170 540 -150 {lab=D4}
N 530 -170 540 -170 {lab=D4}
N 550 -190 570 -190 {lab=D5}
N 570 -190 570 -160 {lab=D5}
N 570 -210 600 -210 {lab=D6}
N 600 -210 600 -150 {lab=D6}
N 590 -230 630 -230 {lab=D7}
N 630 -230 630 -140 {lab=D7}
N 420 -70 420 -60 {lab=0}
N 600 -70 630 -70 {lab=0}
N 420 -90 420 -70 {lab=0}
N 630 -80 630 -70 {lab=0}
N 600 -90 600 -70 {lab=0}
N 570 -70 600 -70 {lab=0}
N 570 -100 570 -70 {lab=0}
N 540 -70 570 -70 {lab=0}
N 540 -90 540 -70 {lab=0}
N 510 -70 540 -70 {lab=0}
N 510 -80 510 -70 {lab=0}
N 480 -70 510 -70 {lab=0}
N 480 -90 480 -70 {lab=0}
N 450 -70 480 -70 {lab=0}
N 450 -100 450 -70 {lab=0}
N 420 -70 450 -70 {lab=0}
N 450 -250 450 -210 {lab=D0}
N 470 -250 470 -190 {lab=D1}
N 490 -250 490 -170 {lab=D2}
N 510 -250 510 -140 {lab=D3}
N 530 -250 530 -170 {lab=D4}
N 550 -250 550 -190 {lab=D5}
N 570 -250 570 -210 {lab=D6}
N 590 -250 590 -230 {lab=D7}
N 290 -340 290 -260 {lab=#net1}
N 190 -360 190 -260 {lab=#net2}
N 340 -320 340 -150 {lab=DISABLE}
N 340 -320 390 -320 {lab=DISABLE}
N 340 -70 420 -70 {lab=0}
N 340 -90 340 -70 {lab=0}
C {r2r_dac.sym} 330 -180 0 0 {name=x1}
C {vsource.sym} 90 -230 0 0 {name=Vsupply value=3.3 savecurrent=false}
C {res.sym} 760 -240 0 0 {name=R1
value=1Meg
footprint=1206
device=resistor
m=1}
C {code_shown.sym} 95 -725 0 0 {name=NGSPICE only_toplevel=false
value=".options savecurrents
.include tb_r2r_dac.save
.control
  save all
  optran 1 1 1 100n 10u 0
  * Static Operation Point Analysis
  op
  write tb_r2r_dac.raw
  set appendwrite
  * Transient Analysis
  tran 100n 10240u
  write tb_r2r_dac.raw
  exit
.endc
"
}
C {code_shown.sym} 520 -720 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include sg13g2_bondpad.lib
"}
C {launcher.sym} 580 -580 0 0 {name=h4
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
C {devices/launcher.sym} 580 -532.5 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 580 -490 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_r2r_dac.raw tran"
}
C {gnd.sym} 90 -160 0 0 {name=l1 lab=0}
C {lab_wire.sym} 760 -340 0 0 {name=p4 sig_type=std_logic lab=DOUT}
C {gnd.sym} 760 -150 0 0 {name=l2 lab=0}
C {vsource.sym} 190 -230 0 0 {name=Vtap value=1.65 savecurrent=false}
C {isource.sym} 290 -230 2 1 {name=Iopabias value=25n}
C {vsource.sym} 420 -120 0 0 {name=V1 value="0 pulse 3.3 0 20u 10n 10n 20u 40u" savecurrent=false}
C {vsource.sym} 450 -130 0 0 {name=V2 value="0 pulse 3.3 0 40u 10n 10n 40u 80u" savecurrent=false}
C {vsource.sym} 480 -120 0 0 {name=V3 value="0 pulse 3.3 0 80u 10n 10n 80u 160u" savecurrent=false}
C {vsource.sym} 510 -110 0 0 {name=V4 value="0 pulse 3.3 0 160u 10n 10n 160u 320u" savecurrent=false}
C {vsource.sym} 540 -120 0 0 {name=V5 value="0 pulse 3.3 0 320u 10n 10n 320u 640u" savecurrent=false}
C {vsource.sym} 570 -130 0 0 {name=V6 value="0 pulse 3.3 0 640u 10n 10n 640u 1280u" savecurrent=false}
C {vsource.sym} 600 -120 0 0 {name=V7 value="0 pulse 3.3 0 1280u 10n 10n 1280u 2560u" savecurrent=false}
C {vsource.sym} 630 -110 0 0 {name=V8 value="0 pulse 3.3 0 2560u 10n 10n 2560u 5120u" savecurrent=false}
C {gnd.sym} 420 -60 0 0 {name=l3 lab=0}
C {lab_wire.sym} 420 -210 0 0 {name=p1 sig_type=std_logic lab=D0}
C {lab_wire.sym} 450 -190 0 0 {name=p2 sig_type=std_logic lab=D1}
C {lab_wire.sym} 480 -170 0 0 {name=p3 sig_type=std_logic lab=D2}
C {lab_wire.sym} 510 -150 0 0 {name=p5 sig_type=std_logic lab=D3}
C {lab_wire.sym} 540 -170 0 1 {name=p6 sig_type=std_logic lab=D4}
C {lab_wire.sym} 570 -190 0 1 {name=p7 sig_type=std_logic lab=D5}
C {lab_wire.sym} 600 -210 0 1 {name=p8 sig_type=std_logic lab=D6}
C {lab_wire.sym} 630 -230 0 1 {name=p9 sig_type=std_logic lab=D7}
C {capa-2.sym} 850 -240 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {vsource.sym} 340 -120 0 1 {name=Vdisable value="3.3 pulse 0 3.3 5500u 10n 10n 1000u 9m" savecurrent=false}
C {lab_wire.sym} 340 -320 0 0 {name=p10 sig_type=std_logic lab=DISABLE}
C {title.sym} 160 0 0 0 {name=l15 author="Pascal Gesell"}
