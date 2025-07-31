import pandas as pd, matplotlib.pyplot as plt
import matplotlib as mpl
import numpy as np
mpl.rcParams['agg.path.chunksize'] = 10000

df=pd.read_csv('a.dat', sep='\s+', header=None).dropna()
t,e,c,d,h=df.iloc[:,0]/1000, df.iloc[:,2], df.iloc[:,3], df.iloc[:,4],  df.iloc[:,8]
fig, ax = plt.subplots(3,figsize=(10, 10))
#ax1 = ax.twinx()
#ax2 = ax.twinx()

ax[0].plot(t,e,color = 'r')
plt.suptitle("Mg$^{2+}$", fontsize=38)
ax[1].plot(t,c,color = 'g')
ax[2].plot(t,d,color = 'b')


ax[0].set_ylabel("eRMSD",fontsize=33)
ax[1].set_ylabel('CN',fontsize=33)
ax[2].set_ylabel('d (nm)',fontsize=33)
ax[2].set_xlabel('time (ns)',fontsize=33)

#ax[2].set_xticks(np.arange(0, max(t), 1000))
ax[0].set_yticks(np.arange(0, max(e), 1.0))
ax[1].set_yticks(np.arange(0, max(c), 4.0))
ax[2].set_yticks(np.arange(0, max(d), 0.2))
"""
ax[0].set_ylim([0.0,4.0)]
ax[1].set_ylabel('CN',fontsize=20)
ax[2].set_ylabel('d (nm)',fontsize=20)
ax[2].set_xlabel('time (ns)',fontsize=20)
"""
ax[0].tick_params(labelsize=30)
ax[1].tick_params(labelsize=30)
ax[2].tick_params(labelsize=30)

#plt.legend()

plt.savefig('hill_plot_Mg2+.pdf', dpi=600, bbox_inches='tight')
plt.show()
