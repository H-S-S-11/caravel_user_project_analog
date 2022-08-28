# Based on https://github.com/yrrapt/amsat_txrx_ic/blob/development/design/vco_quad/tests/plot_transfer.py

import matplotlib.pyplot as plt
from pathlib import Path
import numpy as np
import os
import re

from spyci import spyci

netlist_path = '/home/hss11/.xschem/simulations/gm-c-filter_tb.spice'
raw_file_path = 'gm-c-filter.raw'

ibias = np.linspace(1e-6, 10e-6, 10)

#ibias2 = np.linspace(10e-6, 100e-6, 5)

#ibias = np.concatenate([ibias1, ibias2])
#ibias = np.array([100e-9, 1e-6, 10e-6, 100e-6, 150e-6])

# read the generated netlist, make sure it will exit after simulation if not already
netlist = ""
with open(netlist_path, 'r+') as f:
    netlist = f.read()
    if not re.search('^exit$', netlist):
        print('sub')
        netlist = re.sub('.endc', 'exit\n.endc', netlist)
        f.write(netlist)

low_f_gain = []
corner_freq = []
comp_low_f_gain = []
comp_corner_freq = []

for current_ibias in ibias:

    print(current_ibias)

    # manipulate this line:

    netlist = re.sub(r'\.param IBIAS=.*', ".param IBIAS=%f" % current_ibias, netlist)
    netlist = re.sub(r'\.param IBIAS2=.*', ".param IBIAS2=%f" % (10e-6 - current_ibias), netlist)
    with open(netlist_path, 'w') as f:
        f.write(netlist)

    os.system(f"ngspice {netlist_path} -a > /dev/null")


    data = spyci.load_raw(raw_file_path)['values']

    frequency = np.abs(data['frequency'])

    vodiff = data['v(vop)']-data['v(von)']
    #vodiff_comp = data['v(vop2)']-data['v(von2)']

    vodiff_db = 20*np.log(np.abs(vodiff))
    #vodiff_comp_db = 20*np.log(np.abs(vodiff_comp))
 
    low_f_gain.append(vodiff_db[0])
    #comp_low_f_gain.append(vodiff_comp_db[0])
    # Find -3dB point
    corner_f_idx = np.argmax(vodiff_db<(vodiff_db[0]-3))
    corner_freq.append(frequency[corner_f_idx])
    #comp_corner_f_idx = np.argmax(vodiff_comp_db<(vodiff_comp_db[0]-3))
    #comp_corner_freq.append(frequency[comp_corner_f_idx])
   
    plt.semilogx(frequency, vodiff_db, label=f"Uncompensated {current_ibias}")
    #plt.semilogx(frequency, vodiff_comp_db, label=f"Compensated {current_ibias}")


plt.legend()
plt.title("Frequency Response at different ibias")
plt.figure()
plt.plot(ibias, low_f_gain, label="Uncompensated")
#plt.plot(ibias, comp_low_f_gain, label="Compensated")
plt.title("DC gain vs ibias")
plt.legend()
plt.figure()
plt.plot(ibias, corner_freq, label="Uncompensated")
#plt.plot(ibias, comp_corner_freq, label="Compensated")
plt.title("Corner frequency vs ibias")
plt.legend()
plt.show()


# Problem here is that ngspice has to startup each time, should be a better way