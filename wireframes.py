from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

fig = plt.figure()

ax = fig.add_subplot(1,1,1, projection = '3d')

df=pd.read_csv("fes.dat",sep='\s+',comment="#")

x,y,z,g=df.iloc[:,0],df.iloc[:,1],df.iloc[:,2],df.iloc[:,3]

assert len(z) == (len(x) * len(y))

z = np.array(z)
z = z.reshape((len(x), len(y)))

x = np.arange(5)
y = np.arange(5)
z = np.arange(25).reshape(5, 5)
x1, y1 = np.meshgrid(x, y)

#chart.plot_wireframe(x,y,z)

ax.contour3D(x1, y1, z, 50, cmap='binary')
#surf = ax.plot_surface(x, y, z, rcount=rcount, ccount=ccount, facecolors=colors, shade=False)
#surf.set_facecolor((0,0,0,0))

plt.show()


