v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -290 90 -210 90 { lab=GND}
N -300 10 -300 60 { lab=GND}
N -300 -80 -300 -50 { lab=VPWR}
N 220 60 220 70 { lab=GND}
N -260 -80 -240 -80 { lab=VPWR}
N -320 -80 -260 -80 { lab=VPWR}
N -240 -10 -240 10 { lab=IN}
N -240 -10 -210 -10 { lab=IN}
N -240 70 -240 90 { lab=GND}
N -320 90 -290 90 { lab=GND}
N -300 60 -300 90 { lab=GND}
N -420 80 -420 90 { lab=GND}
N -420 90 -320 90 { lab=GND}
N -420 50 -340 50 { lab=GND}
N -340 50 -340 90 { lab=GND}
N -420 -80 -420 -70 { lab=VPWR}
N -420 -80 -320 -80 { lab=VPWR}
N -420 -40 -360 -40 { lab=VPWR}
N -360 -80 -360 -40 { lab=VPWR}
N -420 -10 -420 20 { lab=CONT_P}
N -480 -0 -420 -0 { lab=CONT_P}
N -480 -40 -480 -0 { lab=CONT_P}
N -480 -40 -460 -40 { lab=CONT_P}
N 270 -120 270 -80 { lab=CONT_P}
N -480 50 -460 50 { lab=CONT_N}
N 270 60 270 120 { lab=CONT_N}
N -470 50 -470 110 { lab=CONT_N}
N -470 170 -470 180 { lab=GND}
N 330 -10 330 20 { lab=MID}
N 330 20 390 20 { lab=MID}
N 430 90 430 100 { lab=GND}
N 480 90 480 140 { lab=CONT_N}
N 480 -90 480 -50 { lab=CONT_P}
N 180 -80 220 -80 { lab=VPWR}
N 410 -50 430 -50 { lab=VPWR}
N 110 160 550 160 { lab=#net1}
N 20 60 20 70 { lab=GND}
N 70 -120 70 -80 { lab=CONT_P}
N 70 60 70 120 { lab=CONT_N}
N -20 -80 20 -80 { lab=VPWR}
N 120 -10 180 -10 { lab=#net2}
N -60 160 110 160 { lab=#net1}
N 820 70 820 80 { lab=GND}
N 870 -110 870 -70 { lab=CONT_P}
N 870 70 870 130 { lab=CONT_N}
N 930 0 930 30 { lab=#net1}
N 780 -70 820 -70 { lab=VPWR}
N 620 70 620 80 { lab=GND}
N 670 -110 670 -70 { lab=CONT_P}
N 670 70 670 130 { lab=CONT_N}
N 580 -70 620 -70 { lab=VPWR}
N 720 0 780 0 { lab=#net3}
N 530 20 580 20 { lab=#net4}
N 580 -0 580 20 { lab=#net4}
N 920 -0 930 -0 { lab=#net1}
N 930 30 930 160 { lab=#net1}
N 550 160 930 160 { lab=#net1}
N -70 -10 -20 -10 { lab=#net1}
N -70 -10 -70 160 { lab=#net1}
N -70 160 -60 160 { lab=#net1}
N 1080 80 1080 90 { lab=GND}
N 1080 -80 1080 -70 { lab=VPWR}
N 1080 -10 1080 20 { lab=OUT}
N 1080 -0 1150 -0 { lab=OUT}
N 1080 -100 1080 -80 { lab=VPWR}
N 1020 -40 1040 -40 { lab=#net1}
N 1020 -40 1020 50 { lab=#net1}
N 1020 50 1040 50 { lab=#net1}
N 930 -0 1020 -0 { lab=#net1}
N 320 -10 330 -10 { lab=MID}
N 1080 -40 1140 -40 { lab=VPWR}
N 1140 -80 1140 -40 { lab=VPWR}
N 1080 -80 1140 -80 { lab=VPWR}
N 1080 50 1160 50 { lab=GND}
N 1160 50 1160 90 { lab=GND}
N 1080 90 1160 90 { lab=GND}
N 1080 90 1080 100 { lab=GND}
C {delay_cell.sym} 330 -10 0 0 {name=x1}
C {devices/gnd.sym} 220 70 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -210 90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 40 0 0 {name=V1 value="PULSE(0 1.8 1n 0.1n 0.1n 5n)"}
C {devices/vsource.sym} -300 -20 0 0 {name=V2 value=1.8}
C {devices/lab_pin.sym} 1150 0 0 1 {name=l3 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} -10 200 0 0 {name=s1 only_toplevel=false value="
.lib ~/open_sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} -20 290 0 0 {name=s2 only_toplevel=false value=".control
tran 100n 1m uic
plot V(OUT) V(MID)
.endc"}
C {devices/lab_pin.sym} -240 -10 0 0 {name=l5 sig_type=std_logic lab=IN}
C {sky130_fd_pr/nfet_01v8.sym} -440 50 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -440 -40 0 0 {name=M2
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
C {devices/lab_pin.sym} -480 -40 0 0 {name=l6 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} 270 -120 0 0 {name=l7 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} -480 50 0 0 {name=l4 sig_type=std_logic lab=CONT_N}
C {devices/lab_pin.sym} 270 120 0 0 {name=l8 sig_type=std_logic lab=CONT_N}
C {devices/vsource.sym} -470 140 0 0 {name=V3 value=0.5}
C {devices/gnd.sym} -470 180 0 0 {name=l9 lab=GND}
C {delay_cell.sym} 540 20 0 0 {name=x2}
C {devices/gnd.sym} 430 100 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 480 140 0 0 {name=l11 sig_type=std_logic lab=CONT_N}
C {devices/lab_pin.sym} 480 -90 0 0 {name=l12 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} -240 -80 0 1 {name=l13 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 180 -80 0 0 {name=l14 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 410 -50 0 0 {name=l15 sig_type=std_logic lab=VPWR}
C {delay_cell.sym} 130 -10 0 0 {name=x3}
C {devices/gnd.sym} 20 70 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 70 -120 0 0 {name=l17 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} 70 120 0 0 {name=l18 sig_type=std_logic lab=CONT_N}
C {devices/lab_pin.sym} -20 -80 0 0 {name=l19 sig_type=std_logic lab=VPWR}
C {delay_cell.sym} 930 0 0 0 {name=x4}
C {devices/gnd.sym} 820 80 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 870 -110 0 0 {name=l21 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} 870 130 0 0 {name=l22 sig_type=std_logic lab=CONT_N}
C {devices/lab_pin.sym} 780 -70 0 0 {name=l23 sig_type=std_logic lab=VPWR}
C {delay_cell.sym} 730 0 0 0 {name=x5}
C {devices/gnd.sym} 620 80 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 670 -110 0 0 {name=l25 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} 670 130 0 0 {name=l26 sig_type=std_logic lab=CONT_N}
C {devices/lab_pin.sym} 580 -70 0 0 {name=l27 sig_type=std_logic lab=VPWR}
C {sky130_fd_pr/nfet_01v8.sym} 1060 50 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 1060 -40 0 0 {name=M4
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
C {devices/gnd.sym} 1080 100 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} 1080 -100 0 0 {name=l29 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 330 -10 0 1 {name=l30 sig_type=std_logic lab=MID}
