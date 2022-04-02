v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1980 -980 2060 -980 { lab=GND}
N 2060 -1100 2060 -1080 { lab=vdd3v3}
N 1830 -1080 1840 -1080 { lab=GND}
N 1840 -1080 1840 -1050 { lab=GND}
N 1170 -980 1290 -980 { lab=GND}
N 1100 -980 1170 -980 { lab=GND}
N 2060 -1120 2060 -1100 { lab=vdd3v3}
N 1290 -980 1370 -980 { lab=GND}
N 1370 -980 1900 -980 { lab=GND}
N 1840 -1050 1840 -1040 { lab=GND}
N 2060 -1020 2060 -980 { lab=GND}
N 1100 -1020 1100 -980 { lab=GND}
N 1900 -980 1980 -980 { lab=GND}
N 1920 -1020 1920 -1010 { lab=GND}
N 1490 -1060 1490 -1050 { lab=EN}
N 1490 -1060 1530 -1060 { lab=EN}
N 1490 -990 1490 -980 { lab=GND}
N 2060 -1220 2060 -1120 { lab=vdd3v3}
N 1920 -1220 2060 -1220 { lab=vdd3v3}
N 1920 -1220 1920 -1200 { lab=vdd3v3}
N 1830 -1100 1920 -1100 { lab=VOUT}
N 1830 -1120 1840 -1120 { lab=vdd3v3}
N 1840 -1220 1840 -1120 { lab=vdd3v3}
N 1840 -1220 1920 -1220 { lab=vdd3v3}
N 1920 -1140 1920 -1080 { lab=VOUT}
N 1840 -1040 1840 -980 { lab=GND}
N 1920 -1010 1920 -980 { lab=GND}
N 930 -1110 930 -1070 { lab=VIN0}
N 1290 -1000 1290 -980 { lab=GND}
N 1290 -1080 1530 -1080 { lab=SEL}
N 1290 -1080 1290 -1060 { lab=SEL}
N 1180 -1100 1530 -1100 { lab=VIN1}
N 1200 -1120 1530 -1120 { lab=VIN0}
N 1100 -1100 1180 -1100 { lab=VIN1}
N 1100 -1100 1100 -1080 { lab=VIN1}
N 930 -1120 1200 -1120 { lab=VIN0}
N 930 -1120 930 -1110 { lab=VIN0}
N 930 -1010 930 -980 { lab=GND}
N 930 -980 1100 -980 { lab=GND}
C {devices/code_shown.sym} 1620 -910 0 0 {name=s1 only_toplevel=false value="
.lib ~/open_sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/gnd.sym} 1680 -980 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 2060 -1050 0 0 {name=V1 value=3.3}
C {devices/lab_pin.sym} 1920 -1120 0 0 {name=l2 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 1610 -810 0 0 {name=s2 only_toplevel=false value=".control
tran 0.1n 100n
plot V(vdd3v3) V(VOUT) 
plot V(vdd3v3) VIN0 VIN1 SEL EN
.endc"}
C {devices/vsource.sym} 1100 -1050 0 0 {name=V2 value="SIN(1.6 1.6 100Meg 0 0)"}
C {devices/lab_pin.sym} 1290 -1080 0 0 {name=l4 sig_type=std_logic lab=SEL}
C {devices/lab_pin.sym} 1490 -1060 0 0 {name=l5 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 930 -1120 0 0 {name=l6 sig_type=std_logic lab=VIN0}
C {devices/lab_pin.sym} 2060 -1120 0 0 {name=l3 sig_type=std_logic lab=vdd3v3}
C {devices/vsource.sym} 1290 -1030 0 0 {name=V3 value="PWL(0 3.3 65n 3.3 70n 0 100n 0)"}
C {devices/vsource.sym} 1490 -1020 0 0 {name=V4 value="PWL(0 0 45n 0 50n 3.3 100n 3.3)"}
C {devices/res.sym} 1920 -1050 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1920 -1170 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {analog_mux_2_1.sym} 1680 -1090 0 0 {name=x2}
C {devices/vsource.sym} 930 -1040 0 0 {name=V5 value="SIN(1.6 1.6 200Meg 0 0)"}
C {devices/lab_pin.sym} 1100 -1100 0 0 {name=l7 sig_type=std_logic lab=VIN1}
