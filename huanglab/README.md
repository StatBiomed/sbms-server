# Welcome to Huang Lab computing server (woody)

## IP address
- current IP address: `147.8.70.48`
- this is a dynamic address, which means it may change after reboot

## Login via ssh
See instructions in the [SSH.md](../SSH.md) page

## File system
The lab philosophy is collaborative, so on this server, most folders are 
readable lab-wide (not writeable):

- `/home/YOU`: home directory limit **5GB**. The implementation hasn't finished,
  so please don't use over this limit.
- `/ssd/users/YOU`: this is SSD drive (faster than HDD `/data`); you may keep
  software (`conda environment`), intermediate data, or analyses here.
- `/data/users/YOU`: this is a larger drive; you may keep raw or large data 
  files here.
- `/ssd/systems`: for shared software or configuration, you may consider keeping
  it here.
- `/ssd/research`: for shared research projects, we will keep them here

**Note**, your `/home/YOU/ssd` and `/home/YOU/data` are symbolic links for 
`/ssd/users/YOU` and `/data/users/YOU`, respectively.

## Mount hpc01 files
- We are still working on it (not successful for all members yet)
- Aim to mount `/storage` and `/storage3` to `/hpc01-sshfs`

## RStudio server
- Directly available: 147.8.70.48:8787
- See instructions on the [R.md](../R.md) page

## Anaconda
- Already installed at `/opt/anaconda3/bin/conda`
- Please initialize it if you didn't `(base)` by `/opt/anaconda3/bin/conda init`
- See instructions on the [Jupyterlab.md](../Jupyterlab.md) page

## More tips
- See instructions on the [computing_tips.md](../computing_tips.md) page
- See instructions on the [yhhuang-lab.md](../yhhuang-lab.md) page but mainly
  for **hpc01/02**

## For systems admin
- The lab thank you for supporting us!!!
- See instructions on the [sysadmin.md](sysadmin.md) page