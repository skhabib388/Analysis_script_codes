import numpy as np, pandas as pd, matplotlib.pyplot as plt, glob
#f=glob.glob("*")[0]
#df=pd.read_csv(f,sep='\s+',comment="#")
df=pd.read_csv("fes_eRMSD-cn.dat",sep='\s+',comment="#")

eRMSD,d,G=df.iloc[:,0],df.iloc[:,1],df.iloc[:,2]

th=input("Enter the value of Gth\n")
th=float(th)
cscheme=input("Enter the color scheme\n")
gmax=input("Enter the maximum value of G\n")
i=np.where(G<=th)
j=np.where(G==np.min(G))
m=G[j[0][0]]
print(f"min:{m} at i={j}")
G=G[i[0]] - m
d=d[i[0]]
gmin=min(G)
gmax=int(gmax)#max(G)/2
eRMSD=eRMSD[i[0]]
#z=np.cos(eRMSD*eRMSD)*np.cos(d*eRMSD)
plt.tricontourf(eRMSD,d,G,levels=50,cmap=cscheme,vmax=gmax,vmin=gmin)
inf=input("Enter the figure name\n")
#plt.colorbar(label="G (kJ/mol)")
#plt.tick_params(labelsize=16)
cbar = plt.colorbar(label="G (kJ/mol)",)
cbar.set_label(label=r"$G$ (kJ/mol)", fontsize=38)
plt.tick_params(labelsize=16)
plt.xticks(np.arange(1.8, max(d), 0.5))
plt.xlabel("eRMSD",fontsize=24)
plt.ylabel("CN",fontsize=24)
#cbar.ax.tick_params(labelsize=30)
#plt.tick_params(labelsize=30)
#plt.xlabel("CN",fontsize=38)
#plt.ylabel("distance (nm)",fontsize=38)
#plt.ylim([0.18,0.50])
#plt.xlim([0.1,1.5])
plt.savefig(inf,bbox_inches='tight',dpi=1200)
plt.show()

