julia monte_carlo.jl

#create animated GIF
convert -delay 10 -loop 0 plot*.png monte_carlo.gif

#delete images afterwards
rm *.png
