v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2100 -1040 2140 -1040 { lab=VOUT}
N 2070 -1040 2070 -950 { lab=#net1}
N 2000 -1040 2040 -1040 { lab=#net1}
N 2000 -1100 2000 -1040 { lab=#net1}
N 2000 -1100 2070 -1100 { lab=#net1}
N 2070 -1100 2070 -1080 { lab=#net1}
N 1840 -1040 1880 -1040 { lab=#net1}
N 1810 -1040 1810 -950 { lab=VIN}
N 1740 -1040 1780 -1040 { lab=VIN}
N 1740 -1100 1740 -1040 { lab=VIN}
N 1740 -1100 1810 -1100 { lab=VIN}
N 1810 -1100 1810 -1080 { lab=VIN}
N 1880 -1040 2000 -1040 { lab=#net1}
N 1930 -1040 1930 -1020 { lab=#net1}
N 2190 -1040 2190 -1020 { lab=VOUT}
N 2190 -960 2190 -940 { lab=GND}
N 2190 -1040 2220 -1040 { lab=VOUT}
N 2140 -1040 2190 -1040 { lab=VOUT}
N 1720 -1040 1740 -1040 { lab=VIN}
N 1930 -960 1930 -920 { lab=CLKIN}
N 1710 -1040 1720 -1040 { lab=VIN}
N 2220 -1040 2240 -1040 { lab=VOUT}
N 2020 -950 2070 -950 { lab=#net1}
N 2020 -1040 2020 -950 { lab=#net1}
N 1760 -950 1810 -950 { lab=VIN}
N 1760 -1040 1760 -950 { lab=VIN}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 2070 -1060 1 0 {name=M2
L=0.5
W=1
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
C {sky130_fd_pr/nfet_03v3_nvt.sym} 2070 -1060 1 0 {name=M1
L=0.5
W=1
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
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1810 -1060 1 0 {name=M3
L=0.5
W=1
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
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1810 -1060 1 0 {name=M4
L=0.5
W=1
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 1930 -990 0 0 {name=C1 model=cap_mim_m3_1 W=3e+07u L=3e+07u MF=100 spiceprefix=X}
C {devices/gnd.sym} 2190 -940 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 1710 -1040 0 0 {name=p1 lab=VIN}
C {devices/ipin.sym} 1930 -920 0 0 {name=p2 lab=CLKIN
}
C {devices/opin.sym} 2240 -1040 0 0 {name=p3 lab=VOUT}
C {sky130_fd_pr/cap_mim_m3_1.sym} 2190 -990 0 0 {name=C2 model=cap_mim_m3_1 W=3e+07u L=3e+07u MF=100 spiceprefix=X}
