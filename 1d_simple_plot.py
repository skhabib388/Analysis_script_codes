#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np, pandas as pd, matplotlib.pyplot as plt


# In[2]:


df = pd.read_csv('p_oxygen_count_around_MG_0-2956ns.dat',sep="\s", skiprows=1,engine='python')
fig = plt.figure(figsize=(8,4))
plt.suptitle("For Mg$^{2+}$ ion", fontsize=60)
# In[4]:


x,y,z=df.iloc[:,0]/1000,df.iloc[:,1],df.iloc[:,2]


# In[6]:


#label_name=input("Dear Habib enter the legend to be written\n")
plt.plot(x,z,linewidth='4')
plt.xlabel("time (ns)",fontsize=55)
plt.ylabel("No of water molecules\nin the first solvation shell",fontsize=55)
plt.tick_params(labelsize=53)
plt.xticks(np.arange(0, max(x), 500))
plt.yticks(np.arange(2, 6.2, 1))
#plt.ylim([0,6.2])
#plt.legend()
name=input("Mr. Habib enter the name of the file in .png or .jpg eg file.png\n")
plt.savefig(f"{name}",dpi=1000,bbox_inches="tight")
plt.show()
print("your file is saved, check in the folder of the script\n")


# In[ ]:




