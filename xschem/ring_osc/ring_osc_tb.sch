v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 700 -1010 720 -1010 { lab=OSC_OUT}
N 380 -950 400 -950 { lab=GND}
N 380 -950 380 -880 { lab=GND}
N 140 -880 380 -880 { lab=GND}
N 140 -950 140 -880 { lab=GND}
N 210 -930 210 -880 { lab=GND}
N 290 -910 290 -880 { lab=GND}
N 260 -880 260 -860 { lab=GND}
N 140 -1010 400 -1010 { lab=#net1}
N 210 -990 400 -990 { lab=#net2}
N 290 -970 400 -970 { lab=#net3}
C {ring_osc.sym} 550 -980 0 0 {name=x1}
C {devices/lab_pin.sym} 720 -1010 0 1 {name=l1 sig_type=std_logic lab=OSC_OUT}
C {devices/vsource.sym} 140 -980 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} 210 -960 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 290 -940 0 0 {name=V3 value="PWL(0 0 10n 1.8)"}
C {devices/gnd.sym} 260 -860 0 0 {name=l2 lab=GND}
