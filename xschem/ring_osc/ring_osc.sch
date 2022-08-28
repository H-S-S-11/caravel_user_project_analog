v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 680 -920 720 -920 { lab=#net1}
N 580 -920 600 -920 { lab=#net2}
N 840 -940 860 -940 { lab=OSC_OUT}
N 860 -940 860 -860 { lab=OSC_OUT}
N 480 -860 860 -860 { lab=OSC_OUT}
N 480 -920 480 -860 { lab=OSC_OUT}
N 480 -920 500 -920 { lab=OSC_OUT}
N 700 -960 720 -960 { lab=EN}
N 700 -1020 700 -960 { lab=EN}
N 860 -940 880 -940 { lab=OSC_OUT}
N 520 -760 520 -720 { lab=GND}
N 520 -740 580 -740 { lab=GND}
N 580 -740 580 -720 { lab=VNB}
N 520 -790 600 -790 { lab=GND}
N 600 -790 600 -740 { lab=GND}
N 580 -740 600 -740 { lab=GND}
N 520 -840 520 -820 { lab=VGND}
N 300 -790 340 -790 { lab=CONT}
N 440 -720 440 -700 { lab=GND}
N 380 -720 440 -720 { lab=GND}
N 380 -760 380 -720 { lab=GND}
N 440 -720 520 -720 { lab=GND}
N 460 -790 460 -720 { lab=GND}
N 380 -790 460 -790 { lab=GND}
N 480 -810 480 -790 { lab=CONT}
N 320 -810 480 -810 { lab=CONT}
N 320 -810 320 -790 { lab=CONT}
N 510 -970 510 -960 { lab=VPWR}
N 510 -1000 570 -1000 { lab=VDD}
N 570 -1070 570 -1000 { lab=VDD}
N 560 -1070 570 -1070 { lab=VPB}
N 560 -1090 560 -1070 { lab=VPB}
N 510 -1090 560 -1090 { lab=VDD}
N 510 -1090 510 -1030 { lab=VDD}
N 380 -1040 510 -1040 { lab=VDD}
N 380 -1040 380 -1030 { lab=VDD}
N 380 -1000 440 -1000 { lab=VDD}
N 440 -1040 440 -1000 { lab=VDD}
N 470 -1000 470 -950 { lab=#net3}
N 340 -950 470 -950 { lab=#net3}
N 340 -1000 340 -950 { lab=#net3}
N 380 -970 380 -950 { lab=#net3}
N 400 -950 400 -820 { lab=#net3}
N 380 -820 400 -820 { lab=#net3}
C {sky130_stdcells/inv_1.sym} 540 -920 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 640 -920 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 780 -940 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 510 -1090 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 440 -700 0 0 {name=p2 lab=GND}
C {devices/ipin.sym} 700 -1020 0 0 {name=p3 lab=EN}
C {devices/ipin.sym} 300 -790 0 0 {name=p4 lab=CONT}
C {devices/opin.sym} 880 -940 0 0 {name=p5 lab=OSC_OUT}
C {devices/lab_pin.sym} 580 -720 0 0 {name=l1 sig_type=std_logic lab=VNB}
C {devices/lab_pin.sym} 520 -840 0 0 {name=l2 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 560 -1070 0 0 {name=l3 sig_type=std_logic lab=VPB}
C {devices/lab_pin.sym} 510 -960 0 0 {name=l4 sig_type=std_logic lab=VPWR}
C {sky130_fd_pr/nfet_01v8.sym} 500 -790 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 360 -790 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 360 -1000 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 490 -1000 0 0 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
