v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -310 340 -240 340 {
lab=VSS}
N -310 340 -310 400 {
lab=VSS}
N -310 400 -280 400 {
lab=VSS}
N -240 370 -240 400 {
lab=VSS}
N -200 340 60 340 {
lab=#net1}
N -520 160 -520 200 {
lab=VPWR}
N -240 180 -240 210 {
lab=VPWR}
N -410 180 -240 180 {
lab=VPWR}
N -240 270 -240 310 {
lab=#net1}
N -730 320 -730 350 {
lab=GND}
N -730 230 -730 260 {
lab=VIP}
N -167.5 295 -167.5 340 {
lab=#net1}
N -237.5 295 -167.5 295 {
lab=#net1}
N -240 295 -237.5 295 {
lab=#net1}
N -280 400 -240 400 {
lab=VSS}
N 360 280 400 280 {
lab=VON}
N 360 300 380 300 {
lab=VOP}
N 380 300 380 312.5 {
lab=VOP}
N 380 312.5 410 312.5 {
lab=VOP}
N 60 240 60 280 {
lab=VPWR}
N 60 250 422.5 250 {
lab=VPWR}
N -475 497.5 -405 497.5 {
lab=GND}
N -475 497.5 -475 557.5 {
lab=GND}
N -475 557.5 -445 557.5 {
lab=GND}
N -405 527.5 -405 557.5 {
lab=GND}
N -405 337.5 -405 367.5 {
lab=VPWR}
N -405 427.5 -405 467.5 {
lab=#net2}
N -332.5 452.5 -332.5 497.5 {
lab=#net2}
N -402.5 452.5 -332.5 452.5 {
lab=#net2}
N -405 452.5 -402.5 452.5 {
lab=#net2}
N -457.5 557.5 -457.5 582.5 {
lab=GND}
N -457.5 582.5 -457.5 642.5 {
lab=GND}
N -445 557.5 -405 557.5 {
lab=GND}
N -365 497.5 -332.5 497.5 {
lab=#net2}
N -405 300 -405 337.5 {
lab=VPWR}
N -405 300 -350 300 {
lab=VPWR}
N -350 180 -350 300 {
lab=VPWR}
N -580 260 -580 270 {
lab=GND}
N -580 260 -520 260 {
lab=GND}
N 40 360 40 390 {
lab=VSS}
N 40 360 60 360 {
lab=VSS}
N -20 320 60 320 {
lab=VIN}
N 40 390 40 440 {
lab=VSS}
N -240 400 -240 440 {
lab=VSS}
N -520 180 -410 180 {
lab=VPWR}
N -240 440 40 440 {
lab=VSS}
N -520 260 -520 300 {
lab=GND}
N -520 360 -520 380 {
lab=VSS}
N -1000 320 -1000 350 {
lab=GND}
N -1000 230 -1000 260 {
lab=VIN}
C {devices/lab_wire.sym} 360 300 0 1 {name=l1 sig_type=std_logic lab=VOP}
C {devices/lab_wire.sym} 360 280 0 1 {name=l4 sig_type=std_logic lab=VON}
C {sky130_fd_pr/nfet_03v3_nvt.sym} -220 340 0 1 {name=M6
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
C {devices/vsource.sym} -520 230 0 0 {name=V1 value=3}
C {devices/gnd.sym} -730 350 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -520 160 0 0 {name=l10 sig_type=std_logic lab=VPWR}
C {devices/isource.sym} -240 240 0 0 {name=I0 value=\{IBIAS\}}
C {devices/code_shown.sym} -480 -130 0 0 {name=s1 only_toplevel=false value="
.param IBIAS=5u
.param IREF=10u
.param IBIAS2=5u
.control
*ac dec 20 10k 10Meg
*op
tran 10n 20u
save all
set filetype=ascii
write gm-c-filter.raw
plot VIP-VIN VOP VON VOP-VON
*plot db(VIP-VIN) db(VOP) db(VON) db(VOP-VON)
.endc
"}
C {devices/vsource.sym} -730 290 0 0 {name=V2 value="0 AC 1 0 SIN(0 10m 100k)"}
C {devices/lab_wire.sym} -730 230 0 0 {name=l11 sig_type=std_logic lab=VIP}
C {devices/code.sym} -492.5 -312.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
 .lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

** opencircuitdesign pdks install
*.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice.tt.red tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"
spice_ignore=false}
C {devices/gnd.sym} -580 270 0 0 {name=l15 lab=GND}
C {xschem/gm-c_filter/gm-c-filter_0.sym} 210 320 0 0 {name=x1}
C {devices/lab_wire.sym} 60 240 0 0 {name=l2 sig_type=std_logic lab=VPWR}
C {devices/lab_wire.sym} 60 300 0 0 {name=l5 sig_type=std_logic lab=VIP}
C {sky130_fd_pr/nfet_03v3_nvt.sym} -385 497.5 0 1 {name=M1
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
C {devices/isource.sym} -405 397.5 0 0 {name=I1 value=\{IBIAS2\}}
C {devices/gnd.sym} -457.5 642.5 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 40 390 0 0 {name=l12 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -457.5 642.5 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -520 330 0 0 {name=V3 value=3}
C {devices/lab_wire.sym} -520 380 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -1000 350 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -1000 290 0 0 {name=V4 value="0 AC 1 180 SIN(0 10m 100k 5u)"}
C {devices/lab_wire.sym} -1000 230 0 0 {name=l14 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} -20 320 0 0 {name=l16 sig_type=std_logic lab=VIN}
