# Computing tips

## Running jobs in the background
* Running jobs in the background with `screen`. [Anyone add some links or texts?]

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

## How to download raw fastq file
* Method 1 : `prefetch $SRA_ID` & `fastq-sump --gzip`
* Method 2 : Search the SRA_ID in EBI database & download by using `axel`
* Method 3 : Search the SRA_ID in EBI database & download by using `ascp`
  Example code:
```bash
#!/bin/bash

for i in {51..52}
do
echo $i
ascp -QT -l 300m -P33001 -i /home/houruiyan/.conda/envs/Py3/etc/asperaweb_id_dsa.openssh era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/SRR116/0${i}/SRR116539${i}/SRR116539${i}_1.fastq.gz .
ascp  -QT -l 300m -P33001 -i /home/houruiyan/.conda/envs/Py3/etc/asperaweb_id_dsa.openssh  era-fasp@fasp.sra.ebi.ac.uk:/vol1/fastq/SRR116/0${i}/SRR116539${i}/SRR116539${i}_2.fastq.gz .
done
```


## Misc
* Python module auto reload [links ?]
* Using VS Codes on cluster ([Weizhong's note](https://dirt-fig-392.notion.site/Using-vscode-on-a-high-performance-cluster-400ddd3549b340ce9041f14c8616be9a?pvs=4)) and Jupyter on cluser ([jupyte tips](https://github.com/StatBiomed/sbms-server/blob/master/Jupyterlab.md#using-jupyter-on-computing-node-of-a-cluster))
* Excel Table to Latex table (google sheet adds-on, or using R)
