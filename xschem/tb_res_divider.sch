v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -100 140 -80 {lab=0}
N 140 -100 200 -100 {lab=0}
N 140 -140 140 -100 {lab=0}
N 140 -240 200 -240 {lab=#net1}
N 140 -240 140 -200 {lab=#net1}
N 300 -170 340 -170 {lab=HSUPPLY}
C {vsource.sym} 140 -170 0 0 {name=Vsupply value=3.3 savecurrent=false}
C {code_shown.sym} 445 -245 0 0 {name=NGSPICE only_toplevel=false
value=".options savecurrents
.include tb_res_divider.save
.control
  save all
  optran 1 1 1 100n 10u 0
  * Static Operation Point Analysis
  op
  write tb_res_divider.raw
  exit
.endc
"
}
C {code_shown.sym} 60 -350 0 0 {name=MODEL only_toplevel=true
value="
.lib cornerRES.lib res_typ
"}
C {launcher.sym} 500 -350 0 0 {name=h4
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
C {devices/launcher.sym} 500 -302.5 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {gnd.sym} 140 -80 0 0 {name=l1 lab=0}
C {res_divider.sym} 110 -70 0 0 {name=x1}
C {lab_wire.sym} 340 -170 0 1 {name=p1 sig_type=std_logic lab=HSUPPLY}
