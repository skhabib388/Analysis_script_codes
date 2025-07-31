from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt, numpy as np, pandas as pd, glob

file=glob.glob("fes.dat")
df=pd.read_csv(file[0],sep='\s+', comment='#').dropna()
x,y,z,E=df.iloc[:,0], df.iloc[:,1], df.iloc[:,2], df.iloc[:,3]


fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

img = ax.scatter(x, y, z, c=E, cmap='nipy_spectral')

cbar=plt.colorbar(img)
cbar.set_label('Energy')


ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.grid(False)
plt.savefig('fes.png', dpi=100, bbox_inches='tight')
plt.show()
