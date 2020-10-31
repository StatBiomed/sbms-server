# R setting up

## Option 1: default R from system
R has been installed on school CPU server:
`/opt/R/4.0.2/bin/R`

Rstudio is also available from web browser (VPN required from outside HKU): http://biomed1.sbms.hku.hk:8787

You are commend to use this R environment, together with Rstudio IDE.

## Option 2: self-managed R from anaconda
Different from systems R, you can also manage an R kernel yourself by using 
the versatile anaconda. Then you can access R via terminal or jupyter lab. It 
is also possible to install some R package fron `conda install xxx`, see the 
introduction at 
[R from Anconda](https://docs.anaconda.com/anaconda/user-guide/tasks/using-r-language/).

### Install R base from conda
Generally, the [r-essentials](https://anaconda.org/r/r-essentials) and 
[r-base](https://anaconda.org/r/r-base) have most basic R packages you need.

You can use the following command line to create a new 
[conda environment](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html) with these two packages:
* create a conda environment: `conda create -n r_env r-essentials r-base`

### Run R in terminal
By default, `R` and `Rscript` refer to the system's R in option 1 (you can 
double check with `which R`). Therefore, you need to execute it by full path.
* Run R on terminal (change to your own path): `~/.conda/env/r_env/bin/R`
* Run Rscript: `~/.conda/env/r_env/bin/Rscript some_code.R`

### Add R kernel to jupyter lab
For using R from anaconda, Rstudio seems not directly available. However, you 
can easily use jupyter lab, for which you need to register you R kernel first by
the cool tool [IRKernel](https://irkernel.github.io/).

Open your R as above (`~/.conda/env/r_env/bin/R`)
```R
# change the name and displayname to your favorate
R> IRkernel::installspec(name = 'ir33', displayname = 'R 3.3')
```

More documentation on IRKernel: https://irkernel.github.io/docs/IRkernel/0.7/

## Other option: lab wide R env
The Y Huang lab also has a lab wide R environment based on anaconda. You can 
use it directly from running it

```bat
/storage/yhhuang/systems/condaEnv/r_env/bin/R
```
