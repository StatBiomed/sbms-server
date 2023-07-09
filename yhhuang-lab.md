# General guidance for YH Huang lab

Welcome aboard. Here are some general guidelines for using the school server for members of YH Huang Lab.

**Top note:** Please backup your codes or important data, as this server is not 
back upped.
* Codes: we suggest backup with GitHub private repo, and commit/push regularly
* Data: always back up raw / precious files, e.g. on another server or local 
  external hard disk. For intermediate files, keep your analysis scripts and
  make sure you can reproduce the results easily.

## Personal / small projects / scripts
* User specific data and script: use the home directory
* Ideally home directory is not more than 10 GB
* **Still, please prioritise using lab folders (see below) for easier potential collaboration!!**

## Project data
Before you start using the lab folder (or any folder that others may have write permission):
think if you want others to over-write your files (generally not)!!! If so, please check the
default file permission setting. Here is the school server the default is (775 / 664), YH suggests
changing it to (755/644) by adding the codes in `.bashrc` or `.bash_profile`:
```bash
# Set default file/folder permission to 644/755
umask 022
```

Ideally project data should be stored in the lab directory for easier collaboration / navigation
* Data for your projects in lab: `/storage/yhhuang/users/$YOUR_USER_NAME`
* Large projects for collaboration: `/storage/yhhuang/research/$PROJECT_NAME`
* Shared common software or systems settings: `/storage/yhhuang/systems`
* Shared common tools and packages: `/storage/yhhuang/tools`

## Computing usage
The school server hasn't introduce any queuing system to keep higher flexibility, so always keep an eye on your jobs and being nice. You can using `top [-u YOUR_USER_NAME]` to check the CPU and memory used. 
* CPUs: ideally not more than 4000% (namely 40 CPUs out of 800)
* Memory: ideally not more than 50% in total and not more than 30% for a single job. Otherwise, make sure it finishes in a short period time.
