v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 670 -480 1470 -80 {flags=graph
y1=0
ypos1=0
ypos2=1.2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="din0
din1
sel0
sel1
sel2
sel3"
color="4 5 6 7 8 9"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
digital=1
y2=1.2
rawfile=$netlist_dir/tb_digital_decoder.raw}
B 2 670 -880 1470 -480 {flags=graph
y1=-4.4e-07
ypos1=0
ypos2=1.2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
digital=0
y2=1.5e-05
rawfile=$netlist_dir/tb_digital_decoder.raw
color=5
node="\\"Power; i(VSupply) Supply * -1 *\\""}
N 130 -190 370 -190 {lab=din0}
N 130 -190 130 -150 {lab=din0}
N 250 -170 250 -150 {lab=din1}
N 250 -170 370 -170 {lab=din1}
N 330 -90 620 -90 {lab=0}
N 590 -150 610 -150 {lab=sel3}
N 590 -170 610 -170 {lab=sel2}
N 590 -190 610 -190 {lab=sel1}
N 590 -210 610 -210 {lab=sel0}
N 620 -90 620 -60 {lab=0}
N 330 -150 370 -150 {lab=0}
N 330 -150 330 -90 {lab=0}
N 60 -90 330 -90 {lab=0}
N 60 -210 60 -150 {lab=Supply}
N 60 -210 370 -210 {lab=Supply}
C {digital_decoder.sym} 390 -120 0 0 {name=x1}
C {vsource.sym} 60 -120 0 0 {name=VSupply value=1.2 savecurrent=false}
C {vsource.sym} 250 -120 0 0 {name=V2 value="0 pulse 0 1.2 20u 1u 1u 20u 40u" savecurrent=false}
C {vsource.sym} 130 -120 0 0 {name=V3 value="0 pulse 0 1.2 10u 1u 1u 10u 20u" savecurrent=false}
C {lab_wire.sym} 300 -170 0 0 {name=p1 sig_type=std_logic lab=din1
}
C {lab_wire.sym} 300 -190 0 0 {name=p2 sig_type=std_logic lab=din0}
C {lab_wire.sym} 610 -210 0 1 {name=p3 sig_type=std_logic lab=sel0

}
C {lab_wire.sym} 610 -190 0 1 {name=p4 sig_type=std_logic lab=sel1}
C {lab_wire.sym} 610 -170 0 1 {name=p5 sig_type=std_logic lab=sel2}
C {lab_wire.sym} 610 -150 0 1 {name=p6 sig_type=std_logic lab=sel3}
C {gnd.sym} 620 -60 0 0 {name=l1 lab=0}
C {code_shown.sym} 45 -725 0 0 {name=NGSPICE only_toplevel=false
value=".options savecurrents
.include tb_digital_decoder.save
.control
  save all
  optran 1 1 1 100n 10u 0
  * Static Operation Point Analysis
  op
  write tb_digital_decoder.raw
  set appendwrite
  * Transient Analysis
  tran 10n 40u
  write tb_digital_decoder.raw
  exit
.endc
"
}
C {code_shown.sym} 10 -420 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include sg13g2_bondpad.lib
"}
C {launcher.sym} 410 -420 0 0 {name=h4
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
C {devices/launcher.sym} 410 -372.5 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} 410 -330 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_digital_decoder.raw tran"
}
C {lab_wire.sym} 90 -210 0 0 {name=p7 sig_type=std_logic lab=Supply}
C {title.sym} 160 0 0 0 {name=l2 author="Pascal Gesell"}
