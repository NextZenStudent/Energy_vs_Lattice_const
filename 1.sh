#! /bin/bash

var=(2.7 2.8 2.9 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4.0 4.1 4.2 4.3 4.4 4.5 4.6)

for i in {0..19}
do

sed "s/NextZen/${var[i]}/g" lattice_vs_energy.lmp > y.txt
mpirun -n 4 lmp_mpi -in y.txt

done

gnuplot plot.gnu

open energy_cohesive.svg 
