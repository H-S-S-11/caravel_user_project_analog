v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1420 -1350 1420 -1320 { lab=GND}
N 1420 -1420 1420 -1410 { lab=#net1}
N 1420 -1420 1490 -1420 { lab=#net1}
N 1360 -1360 1360 -1330 { lab=GND}
N 1360 -1330 1420 -1330 { lab=GND}
N 1320 -1330 1360 -1330 { lab=GND}
N 1320 -1460 1490 -1460 { lab=GND}
N 1360 -1440 1360 -1420 { lab=VDD3v3}
N 1360 -1440 1490 -1440 { lab=VDD3v3}
N 1300 -1330 1320 -1330 { lab=GND}
N 1300 -1460 1300 -1330 { lab=GND}
N 1300 -1460 1320 -1460 { lab=GND}
N 1260 -1360 1260 -1330 { lab=GND}
N 1260 -1330 1300 -1330 { lab=GND}
N 1260 -1470 1260 -1420 { lab=BIASN}
N 1260 -1480 1260 -1470 { lab=BIASN}
N 1260 -1480 1490 -1480 { lab=BIASN}
N 1200 -1390 1200 -1330 { lab=GND}
N 1200 -1330 1260 -1330 { lab=GND}
N 1200 -1500 1200 -1450 { lab=VN}
N 1200 -1500 1490 -1500 { lab=VN}
N 1790 -1520 1840 -1520 { lab=VOUT}
N 1060 -1400 1060 -1330 { lab=#net2}
N 1120 -1330 1200 -1330 { lab=GND}
N 1060 -1520 1060 -1460 { lab=VP}
N 1120 -1520 1490 -1520 { lab=VP}
N 1060 -1520 1120 -1520 {}
N 1060 -1330 1120 -1330 {}
C {comparator.sym} 1640 -1470 0 0 {name=x1}
C {devices/gnd.sym} 1420 -1320 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 1600 -1310 0 0 {name=s1 only_toplevel=false value="
.lib ~/open_sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} 1600 -1220 0 0 {name=s2 only_toplevel=false value=".control
tran 10e-12 200e-9 0e-00
*dc VPin 0 3 0.002 VNin 0 3 0.2
plot VOUT VP VN VDD3v3
.endc"}
C {devices/vsource.sym} 1420 -1380 0 0 {name=V1 value=1.8
}
C {devices/vsource.sym} 1360 -1390 0 0 {name=V2 value=3.3
}
C {devices/lab_pin.sym} 1360 -1440 0 0 {name=l2 sig_type=std_logic lab=VDD3v3
}
C {devices/vsource.sym} 1260 -1390 0 0 {name=V3 value=0.3
}
C {devices/lab_pin.sym} 1260 -1480 0 0 {name=l3 sig_type=std_logic lab=BIASN
}
C {devices/vsource.sym} 1200 -1420 0 0 {name=V4 value=1.6
}
C {devices/lab_pin.sym} 1200 -1500 0 0 {name=l4 sig_type=std_logic lab=VN
}
C {devices/lab_pin.sym} 1840 -1520 0 1 {name=l5 sig_type=std_logic lab=VOUT
}
C {devices/vsource.sym} 1060 -1430 0 0 {name=V5 value="SINE(1.5 0.5 10Meg)"
}
C {devices/lab_pin.sym} 1060 -1520 0 0 {name=l6 sig_type=std_logic lab=VP
}
