#!/bin/bash
#PBS -q cgsd
#PBS -l walltime=01:00:00
#PBS -l ncpus=4
#PBS -N jupyter

## Please change to your own jupyter kernel
/home/yuanhua/anaconda3/bin/jupyter lab

## TO run this file
# qsub cluster-jupyter.sh

## TO check the node for running the job
# qstat -n
