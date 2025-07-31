import numpy as np, pandas as pd, matplotlib.pyplot as plt, glob
f=glob.glob("ff_cn_2.7ang_d1.dat")[0]
df=pd.read_csv(f,sep='\s+',comment="#")

eRMSD,d,G=df.iloc[:,0],df.iloc[:,1],df.iloc[:,2]

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
plt.colorbar(label="G (kJ/mol)")
plt.tick_params(labelsize=16)
plt.xlabel("d1",fontsize=24)
plt.ylabel("CN",fontsize=24)
plt.rcParams['axes.linewidth'] = 1
plt.savefig("FES_cutoffCN_3.5ang.png",format="pdf",bbox_inches='tight',dpi=1200)
plt.show()
