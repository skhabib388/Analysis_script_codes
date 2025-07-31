import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D
from colors import colors
from matplotlib.path import Path
import matplotlib.patches as patches

# file=glob.glob('../../ff*')
# df1=pd.read_csv(file[0],sep='\s+',engine='python',comment='#') #dock
# df2=pd.read_csv(file[1],sep='\s+',engine='python',comment='#') #undock

df1=pd.read_csv('ff_cn1_RMSD_0.14-upto-6195ns.dat', sep='\s+',engine='python',comment='#')
df2=pd.read_csv('ff_cn1_RMSD_0.32-upto-6195ns.dat', sep='\s+',engine='python',comment='#')
df3=pd.read_csv('ff_cn1_RMSD_0.44-upto-6195ns.dat', sep='\s+',engine='python',comment='#')
df4=pd.read_csv('ff_cn1_RMSD_0.71-upto-6195ns.dat', sep='\s+',engine='python',comment='#')
# df5=pd.read_csv('Mg_l4_tetraloop_low_K_conc/fold_2_unfold/ffcn1_eRMSD_3.2.dat', sep='\s+',engine='python',comment='#')

fig,ax= plt.subplots(figsize=(20,12),dpi=800,constrained_layout=True)

eRMSD1,G1=df1.iloc[:,0],df1.iloc[:,1]
eRMSD2,G2=df2.iloc[:,0],df2.iloc[:,1]
eRMSD3,G3=df3.iloc[:,0],df3.iloc[:,1]
eRMSD4,G4=df4.iloc[:,0],df4.iloc[:,1]
# eRMSD5,G5=df5.iloc[:,0],df5.iloc[:,1]

#m1=np.min(G1)
#m2=np.min(G2)
#m1=np.min(G1)

#m=min(m1,m2)
#G1=G1-m1
#G2=G2-m1
#G3=G3-m1
#G4=G4-m1
# G5=G5-m4

# p= -0.7
# p1= 12.6445
p2= 99.38
p3= 101.15

# p1= 0
# p2= 0
# p3= 0

# p4= -10.5735

G1 = G1 - np.min(G1)
# G2 = G2 - np.min(G2)
# G3 = G3 - np.min(G3)
G4 = G4 - np.min(G4)

ax.plot(eRMSD1,G1,label="F (RMSD = 0.1 nm)",lw=0.2,color='r')
ax.plot(eRMSD2,G2+p2,label="PF$_1$ (RMSD = 0.25 nm)",lw=0.2,color='b')
ax.plot(eRMSD3,G3+p3,label="PF$_2$ (RMSD = 0.4 nm)",lw=0.2,color='g')
ax.plot(eRMSD4,G4,label="U (RMSD = 0.68 nm)",lw=0.2,color='m')
# ax.plot(eRMSD5,G5+p4,label="RMSD = 3.2",linewidth='2',marker = "D",color='c',markevery=3)

# # axIns = fig.add_axes([0.50, 0.65, 0.28, 0.29])
# axIns.plot(eRMSD1,G1,linewidth='3',color='r')
# axIns.plot(eRMSD2,G2,linewidth='3',color='b')
# axIns.plot(eRMSD3,G3,linewidth='3',color='g')
# axIns.set_xticks(np.arange(1.0, 3.2, 1))
# axIns.set_yticks(np.arange(0, 22, 10))
# axIns.set_xlim([0.5,3.2])
# axIns.set_ylim([-2,22])
# # axIns.set_tick_params(axis="both")

ax.set_xlabel('Coordination number, CN$_{Mg^{2+}}^{X}$')
ax.set_ylabel('Free Energy, G (kJ/mol)')
# plt.xticks(np.arange(0, 7, 1))
# ax.set_ylim([-2,75])
ax.set_xlim([0.01,4.7])
# plt.tick_params(labelsize=53,axis="both",length=20,width=2.5,direction="out")
# ax.legend(ncol=1,frameon=False)
plt.savefig('ffcn_diff_str_mg_RMSD.pdf', format="pdf", bbox_inches='tight',dpi=600)
plt.show()
