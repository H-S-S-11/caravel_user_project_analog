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
N 1640 -1080 1640 -1060 { lab=VOUT}
N 1840 -1080 1840 -1060 { lab=VOUT}
N 1640 -1060 1840 -1060 { lab=VOUT}
N 1700 -1020 1720 -1020 { lab=VOUT}
N 1700 -1060 1700 -1020 { lab=VOUT}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1820 -1110 0 0 {name=M2
L=0.5
W=7
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
C {devices/iopin.sym} 1670 -1110 0 0 {name=p1 lab=VGND
}
C {devices/iopin.sym} 1900 -1110 0 0 {name=p2 lab=VDD3v3}
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
C {devices/ipin.sym} 1560 -1110 0 0 {name=p3 lab=EN}
C {devices/ipin.sym} 1720 -1220 0 0 {name=p4 lab=VIN}
C {devices/ipin.sym} 1790 -1110 0 0 {name=p5 lab=!EN
}
C {devices/opin.sym} 1720 -1020 0 0 {name=p6 lab=VOUT}
