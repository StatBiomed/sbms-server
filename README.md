# sbms-server
School of Biomedical Sciences (HKU) server wiki repository

For official notices, creating user account, etc., please go to: 
http://biomed1.sbms.hku.hk

## Computing guidance for labs
* For members in YH Huang lab, see [yhhuang-lab.md](yhhuang-lab.md) page.

## Login

For login via ssh, read [SSH.md](./SSH.md) page.

## Environment with Conda 

Instead of installing anaconda yourself, we recommend using the shared anaconda 
platform (/opt/anaconda3). 

There is a base environment. But for specific task, create your own conda 
environment, so that you can control all versions of the packages for your 
analysis, which is important for reproducibility.
Follow the [conda manual](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html) to manage your environments.

For each environment, you can also add it as a separated kernel on jupyter lab, see [here](https://ipython.readthedocs.io/en/stable/install/kernel_install.html):

```bat
conda activate myenv

pip install ipykernel

python -m ipykernel install --user --name myenv --display-name "Python (myenv)"
```

## VS Code
Visual Studio Code is a handy tool to access to server, e.g., edit scripts, 
running jobs.
See more official instructions: 
* https://code.visualstudio.com/docs/remote/ssh
* https://code.visualstudio.com/docs/datascience/jupyter-notebooks


## JupyterHub or JupyterLab on server
* For **JupyterHub**, you can directly use it from http://hpc01.sbms.hku.hk:8000 or http://hpc02.sbms.hku.hk:8000
* For **JupyterLab**, you can connect to [Jupyter lab](https://jupyterlab.readthedocs.io) on the server
  by manual setup, please read [Jupyterlab.md](./Jupyterlab.md) page for more information.

## R
For using R from conda, read [R.md](./R.md) page.


## Mounting Remote File System
You may consider mount the files on one server (e.g., the CPU server) to another server (e.g., the GPU server) or to your local machine. 

The NFS is not available, but your can use SSHFS for user level mounting files. See basic documentation of [SSHFS](https://wiki.archlinux.org/index.php/SSHFS).
Example on mount files on CPU server to GPU server, you can run the following 
line on GPU server:
```bat
sshfs YOURS@biomed1.sbms.hku.hk:/storage/yhhuang /home/YOURS/yhhuang -o idmap=user

# Unmount files
# fusermount -u /home/YOURS/yhhuang
```
