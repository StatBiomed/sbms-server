![image](https://github.com/StatBiomed/sbms-server/assets/64261429/a984007d-24e6-42d5-9e85-a4601abe46bc)# Computing tips

## Running jobs in the background
* Running jobs in the background with `screen`. [Anyone add some links or texts?]
* `screen -S sessionname`, Creates a session named sessionname (sessionname is defined by yourself)
* `screen jupyter notebook`, Copy the link and open Jupyter Notebook on the browser (the same as `screen jupyter lab`)
* `Ctrl + a + d`, Temporarily leave the current session, throw the current screen session to the background for execution, and return to the state before entering the screen. At this time, in the screen session, the process running in each window 	continues to execute, even if the logout does not affect
* `screen -ls`, Display all current screen jobs
* `screen -r sessionname`, Recover off-line screen job
* `kill sessionnumber`, Exits the current screen window and ends the current screen window

## IDE: PyCharm, VS Code, and Jupyter lab

## Huang lab notes
* See [PBS.md](https://github.com/StatBiomed/YHLab-guide/blob/master/PBS.md) for submitting tasks to PBS system and using conda with PBS. 
* See [plotting.md](https://github.com/StatBiomed/HuangLab-onboarding/tree/master/plotting.md) for tips on plotting with publication standard.

## Linux useful commands
* Downloading large files from clouds (Google Drive, OneDrive) or data repositories with [wget](https://github.com/huangyh09/codingnotes/blob/master/wget_cloud.md)
* `ctrl + Z`, followed by `kill %%` to kill previous job [add links?]

## Conda environment directory
* Change the configuration setting
* Add jupyter kernel with `ipykernel`

## SRA/fastq at EBI database
* Ruiyan add more links 

## Misc
* Python module auto reload [links ?]
* Using VS Codes on cluster ([Weizhong's note](https://dirt-fig-392.notion.site/Using-vscode-on-a-high-performance-cluster-400ddd3549b340ce9041f14c8616be9a?pvs=4)) and Jupyter on cluser ([jupyte tips](https://github.com/StatBiomed/sbms-server/blob/master/Jupyterlab.md#using-jupyter-on-computing-node-of-a-cluster))
* Excel Table to Latex table (google sheet adds-on, or using R)
