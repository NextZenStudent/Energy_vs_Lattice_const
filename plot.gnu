reset

set terminal svg size 1024,800 enhanced font 'TimesNewRoman,30'
set output 'energy_cohesive.svg'

set border linewidth 2

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 1 pointtype 20 pointsize 0.4


# Axes label 
set xlabel  '{/:Bold lattice constant (Å)}' offset 0,0.5,0
set ylabel '{/:Bold Energy(eV/Å)}' offset 2.5,0,0

set tics scale 0.75

plot 'lattice_vs_energy.txt' using 1:2  title "{/:Bold {/=25 Pure Ni}" linestyle 1

