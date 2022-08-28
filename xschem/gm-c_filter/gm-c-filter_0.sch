v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 200 210 200 {
lab=VGND}
N -0 -30 210 -30 {
lab=VPWR}
N -0 0 -0 170 {
lab=VOP}
N 210 0 210 170 {
lab=VON}
N 130 70 210 70 {
lab=VON}
N 0 70 70 70 {
lab=VOP}
N -20 80 -0 80 {
lab=VOP}
N 210 80 230 80 {
lab=VON}
N 100 -100 100 -30 {
lab=VPWR}
N 210 -100 210 -60 {
lab=VPWR}
N -20 -100 210 -100 {
lab=VPWR}
N -0 -100 -0 -60 {
lab=VPWR}
N 100 210 100 240 {
lab=VGND}
N 100 200 100 210 {
lab=VGND}
N -80 200 -40 200 {
lab=VIP}
N 100 340 180 340 {
lab=VGND}
N 180 340 180 400 {
lab=VGND}
N 100 400 180 400 {
lab=VGND}
N 100 370 100 400 {
lab=VGND}
N 100 400 100 420 {
lab=VGND}
N 100 280 100 310 {
lab=VTAIL}
N 210 230 210 280 {
lab=VTAIL}
N 0 280 210 280 {
lab=VTAIL}
N 0 230 0 280 {
lab=VTAIL}
N 250 -30 260 -30 {
lab=VON}
N 260 -30 260 20 {
lab=VON}
N 210 20 260 20 {
lab=VON}
N -60 -30 -40 -30 {
lab=VOP}
N -60 -30 -60 20 {
lab=VOP}
N -60 20 -0 20 {
lab=VOP}
N 250 200 280 200 {
lab=VIN}
N -60 340 60 340 {
lab=VBIAS}
N 177.5 240 177.5 340 {
lab=VGND}
N 100 240 177.5 240 {
lab=VGND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -20 -30 0 0 {name=M1
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 230 -30 0 1 {name=M2
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
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} -20 200 0 0 {name=M3
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
C {sky130_fd_pr/nfet_03v3_nvt.sym} 230 200 0 1 {name=M4
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 100 70 1 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=10 spiceprefix=X}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 80 340 0 0 {name=M5
L=0.5
W=1
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
C {devices/lab_wire.sym} 0 280 0 0 {name=l13 sig_type=std_logic lab=VTAIL}
C {devices/ipin.sym} -60 340 0 0 {name=p1 lab=VBIAS}
C {devices/ipin.sym} -80 200 0 0 {name=p2 lab=VIP}
C {devices/ipin.sym} -20 -100 0 0 {name=p3 lab=VPWR}
C {devices/ipin.sym} 280 200 0 1 {name=p4 lab=VIN}
C {devices/ipin.sym} 100 420 0 0 {name=p5 lab=VSS}
C {devices/opin.sym} 230 80 0 0 {name=p6 lab=VON}
C {devices/opin.sym} -20 80 0 1 {name=p7 lab=VOP}
