v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1640 -1110 1670 -1110 { lab=VGND}
N 1840 -1110 1900 -1110 { lab=VDD3v3}
N 1790 -1110 1800 -1110 { lab=!EN}
N 1560 -1110 1600 -1110 { lab=EN}
N 1740 -1190 1840 -1190 { lab=VIN}
N 1840 -1190 1840 -1140 { lab=VIN}
N 1640 -1190 1740 -1190 { lab=VIN}
N 1640 -1190 1640 -1140 { lab=VIN}
N 1720 -1220 1740 -1220 { lab=VIN}
N 1740 -1220 1740 -1190 { lab=VIN}
N 1640 -1080 1640 -1060 { lab=mid}
N 1840 -1080 1840 -1060 { lab=mid}
N 1640 -1060 1840 -1060 { lab=mid}
N 1760 -860 1780 -860 { lab=VOUT}
N 1470 -1080 1470 -1060 { lab=!EN}
N 1940 -1190 1960 -1190 { lab=!EN}
N 1560 -1290 1580 -1290 { lab=VGND}
N 1410 -1020 1440 -1020 { lab=VGND}
N 1470 -1020 1470 -930 { lab=VGND}
N 1430 -930 1470 -930 { lab=VGND}
N 1430 -1020 1430 -930 { lab=VGND}
N 1670 -940 1700 -940 { lab=VGND}
N 1870 -940 1930 -940 { lab=VDD3v3}
N 1820 -940 1830 -940 { lab=!EN}
N 1590 -940 1630 -940 { lab=EN}
N 1770 -1020 1870 -1020 { lab=mid}
N 1870 -1020 1870 -970 { lab=mid}
N 1670 -1020 1770 -1020 { lab=mid}
N 1670 -1020 1670 -970 { lab=mid}
N 1670 -910 1670 -890 { lab=VOUT}
N 1870 -910 1870 -890 { lab=VOUT}
N 1670 -890 1870 -890 { lab=VOUT}
N 1500 -1020 1640 -1020 { lab=mid}
N 1640 -1060 1640 -1020 { lab=mid}
N 1760 -890 1760 -860 { lab=VOUT}
N 1940 -1160 1960 -1160 { lab=EN}
N 1560 -1260 1580 -1260 { lab=VDD3v3}
N 1640 -1020 1670 -1020 { lab=mid}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1820 -1110 0 0 {name=M2
L=0.5
W=15
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1620 -1110 0 0 {name=M1
L=0.5
W=10
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {devices/ipin.sym} 1940 -1160 0 0 {name=p3 lab=EN}
C {devices/ipin.sym} 1720 -1220 0 0 {name=p4 lab=VIN}
C {devices/opin.sym} 1780 -860 0 0 {name=p6 lab=VOUT}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1470 -1040 1 0 {name=M3
L=0.5
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {devices/lab_wire.sym} 1470 -1080 0 0 {name=l1 sig_type=std_logic lab=!EN}
C {devices/ipin.sym} 1940 -1190 0 0 {name=p7 lab=!EN
}
C {devices/lab_pin.sym} 1960 -1190 2 0 {name=l2 sig_type=std_logic lab=!EN}
C {devices/lab_wire.sym} 1790 -1110 0 0 {name=l3 sig_type=std_logic lab=!EN}
C {devices/iopin.sym} 1560 -1290 2 0 {name=p5 lab=VGND
}
C {devices/lab_pin.sym} 1580 -1290 2 0 {name=l4 sig_type=std_logic lab=VGND
}
C {devices/lab_pin.sym} 1670 -1110 2 0 {name=l5 sig_type=std_logic lab=VGND
}
C {devices/lab_pin.sym} 1410 -1020 0 0 {name=l6 sig_type=std_logic lab=VGND
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1850 -940 0 0 {name=M4
L=0.5
W=15
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1650 -940 0 0 {name=M5
L=0.5
W=10
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {devices/lab_wire.sym} 1820 -940 0 0 {name=l7 sig_type=std_logic lab=!EN}
C {devices/lab_pin.sym} 1700 -940 2 0 {name=l8 sig_type=std_logic lab=VGND
}
C {devices/lab_pin.sym} 1960 -1160 2 0 {name=l9 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 1560 -1110 0 0 {name=l10 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 1590 -940 0 0 {name=l11 sig_type=std_logic lab=EN}
C {devices/iopin.sym} 1560 -1260 2 0 {name=p8 lab=VDD3v3}
C {devices/lab_pin.sym} 1580 -1260 2 0 {name=l12 sig_type=std_logic lab=VDD3v3}
C {devices/lab_pin.sym} 1900 -1110 2 0 {name=l13 sig_type=std_logic lab=VDD3v3}
C {devices/lab_pin.sym} 1930 -940 2 0 {name=l14 sig_type=std_logic lab=VDD3v3}
C {devices/lab_pin.sym} 1870 -1020 2 0 {name=l15 sig_type=std_logic lab=mid}
