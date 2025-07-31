import pandas as pd, glob, matplotlib.pyplot as plt, numpy as np

files=glob.glob("fes_*.dat")
files.sort()
GArray=[]
for i in files:
  df=pd.read_csv(i,sep='\s+',comment='#', header=None).dropna()
  print(f"file name ={i}\n")
  d,G=df.iloc[:,0], df.iloc[:,1]
  Gmin=np.min(G)
  GArray.append(Gmin)

  
Gminimum=np.min(np.asarray(GArray))

for i in range(len(files)):
  df=pd.read_csv(files[i],sep='\s+',comment='#', header=None).dropna()
  d,G=df.iloc[:,0], df.iloc[:,1] - Gminimum
  plt.plot(d,G,label=f"{643 + i*128} ns")
  plt.xlabel('distance (nm)', fontsize=24)
  plt.ylabel(r'Free energy ($\frac{kJ}{mol})$', fontsize=24)
  plt.tick_params(axis='x', labelsize=22)
  plt.tick_params(axis='y', labelsize=22)

plt.legend(fontsize=12)
plt.savefig('1D-FES_distance.png', dpi=600, bbox_inches='tight')
plt.show()
