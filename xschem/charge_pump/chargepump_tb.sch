v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1680 -1020 1800 -1020 { lab=VIN}
N 2100 -1020 2140 -1020 { lab=vout}
N 1680 -960 1680 -940 { lab=GND}
N 1760 -1000 1760 -980 { lab=VCLK}
N 1760 -1000 1800 -1000 { lab=VCLK}
N 1760 -920 1760 -910 { lab=GND}
C {chargepump.sym} 1950 -1010 0 0 {name=x1}
C {devices/vsource.sym} 1680 -990 0 0 {name=V1 value=3}
C {devices/gnd.sym} 1680 -940 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 2140 -1020 0 0 {name=l2 sig_type=std_logic lab=vout}
C {devices/gnd.sym} 1760 -910 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 1890 -900 0 0 {name=s1 only_toplevel=false value="
.lib ~/open_sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} 1890 -830 0 0 {name=s2 only_toplevel=false value=".control
tran 10n 100u
plot V(VIN) V(vout) v(VCLK)
.endc"}
C {devices/lab_wire.sym} 1740 -1020 0 0 {name=l4 sig_type=std_logic lab=VIN}
C {devices/vsource.sym} 1760 -950 0 0 {name=V2 value="PULSE(0 3 100n 1n 1n 100n 200n)"}
C {devices/lab_wire.sym} 1760 -1000 0 0 {name=l5 sig_type=std_logic lab=VCLK}
