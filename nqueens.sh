#!/bin/sh 
#PBS -l nodes=1:ppn=2 -l walltime=240:00:00
#PBS -M xqin9@ucsc.edu

ESESC_BIN=${1:-../main/esesc}
export ESESC_ReportFile="run_all"
export ESESC_BenchName="./nqueens.rv"
if [ -f $ESESC_BIN ]; then
  $ESESC_BIN 
else
  $ESESC_BenchName 
fi
exit 0

