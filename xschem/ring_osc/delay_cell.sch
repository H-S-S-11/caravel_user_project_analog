v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 980 -2050 1060 -2050 { lab=VGND}
N 1060 -2130 1060 -2050 { lab=VGND}
N 980 -2130 1060 -2130 { lab=VGND}
N 1060 -2050 1060 -2000 { lab=VGND}
N 980 -2000 1060 -2000 { lab=VGND}
N 980 -2020 980 -2000 { lab=VGND}
N 980 -2100 980 -2080 { lab=#net1}
N 980 -2000 980 -1980 { lab=VGND}
N 980 -2180 980 -2160 { lab=OUT}
N 980 -2260 980 -2240 { lab=#net2}
N 980 -2210 1080 -2210 { lab=VPWR}
N 1080 -2290 1080 -2210 { lab=VPWR}
N 980 -2290 1080 -2290 { lab=VPWR}
N 980 -2340 980 -2320 { lab=VPWR}
N 980 -2360 980 -2340 { lab=VPWR}
N 980 -2340 1080 -2340 { lab=VPWR}
N 1080 -2340 1080 -2290 { lab=VPWR}
N 980 -2170 1120 -2170 { lab=OUT}
N 920 -2130 940 -2130 { lab=IN}
N 920 -2210 920 -2130 { lab=IN}
N 920 -2210 940 -2210 { lab=IN}
N 880 -2170 920 -2170 { lab=IN}
N 880 -2290 940 -2290 { lab=CONT_P}
N 880 -2050 940 -2050 { lab=CONT_N}
C {sky130_fd_pr/nfet_01v8.sym} 960 -2130 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 960 -2050 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 960 -2210 0 0 {name=M3
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 960 -2290 0 0 {name=M4
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 980 -2360 0 0 {name=p1 lab=VPWR}
C {devices/ipin.sym} 980 -1980 0 0 {name=p2 lab=VGND}
C {devices/ipin.sym} 880 -2170 0 0 {name=p3 lab=IN}
C {devices/ipin.sym} 880 -2050 0 0 {name=p4 lab=CONT_N}
C {devices/ipin.sym} 880 -2290 0 0 {name=p5 lab=CONT_P}
C {devices/opin.sym} 1120 -2170 0 0 {name=p6 lab=OUT}
