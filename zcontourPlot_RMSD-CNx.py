import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D
from colors import colors
from matplotlib.path import Path
import matplotlib.patches as patches
# f=glob.glob("Ca_l4_tetraloop_low_K_conc/ff_2d.dat")
df=pd.read_csv("ff_2d_RMSD_cn1-upto-6195ns.dat",sep='\s+',comment="#",header=None)

eRMSD,d,G=df.iloc[:,0],df.iloc[:,1],df.iloc[:,2]

fig = plt.figure(figsize=(5, 4))

mpl.rc('figure')

mpl.rcParams['text.usetex'] = True
mpl.rcParams[
    'text.latex.preamble'] = r'\usepackage[cm]{sfmath}\usepackage{amsmath}\usepackage{amssymb}'

mpl.rcParams['font.family'] = 'sans-serif'
mpl.rcParams['font.sans-serif'] = 'CMU Sans Serif'

font_size = 20

fonts = {
    "axes.labelsize": font_size,
    "font.size": font_size,
    "legend.fontsize": font_size,
    "xtick.labelsize": font_size,
    "ytick.labelsize": font_size,
    "axes.titlesize": font_size,
}

mpl.rcParams.update(fonts)

axes_settings = {
    "axes.labelcolor": '#2e2e2e',
    "axes.spines.top": True,
    "axes.spines.right": True,
    "xtick.direction": "out",
    "ytick.direction": "out",
    "xtick.color": '#2e2e2e',
    "ytick.color": '#2e2e2e',
    "text.color": '#2e2e2e',
    "axes.edgecolor": '#2e2e2e',
}
mpl.rcParams.update(axes_settings)
# th=input("Enter the value of Gth\n")
# th=float(th)
th=0
i=np.where(G<=th)
j=np.where(G==np.min(G))
m=G[j[0][0]]
print(f"min:{m} at i={j}")
G=G[i[0]] - m
d=d[i[0]]
eRMSD=eRMSD[i[0]]
plt.tricontourf(eRMSD,d,G,levels=50,cmap='nipy_spectral')
cbar=plt.colorbar(label="G (kJ/mol)",ticks=[0,25,50,75,100])
plt.xticks(np.arange(0.0, 1.0, 0.2))
# plt.tick_params(labelsize=16)
cbar.ax.set_yticklabels([0,25,50,75,100])
plt.xlim(0.08,0.9)
plt.xlabel("RMSD (nm)")
plt.ylabel("Coordination number, CN$_{Mg^{2+}}^{X}$")
# plt.rcParams['axes.linewidth'] = 1
plt.show()
#plt.savefig("FES_CN_2.7ang_RMSD_Mg_upto-6195ns.pdf",format="pdf",bbox_inches='tight',dpi=1200)
