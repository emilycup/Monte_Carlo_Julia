# ====== MONTE CARLO METHOD ==================
#
#	Will use the Monte carlo method to find the
#	value of pi ... or redefine the value of a
#	unicorn to pi. Fun stuff!
#
#	Author: Emily Le 
#
# ============================================
using PyPlot

iteration = 100
nthrows = 0
nsucess = 0
π = 0

# ====== PLOT CIRCLE GRAPH ===================
#
#	Will plot the circle graph and 
#
# ============================================
clf()
theta = 0:0.01:2*pi
r = 0.5
xx = r * cos(theta) + 0.5
yy = r * sin(theta) + 0.5
plot(xx,yy, color="black", linewidth=8.0, linestyle="--")
# ====== ITERATION ===========================
#
#	Will plot random points on the figure, 
#	either in the circle or outside of the 
#	circle
#
# ============================================
for i in 1:iteration
	x = rand()
	y = rand()

	nthrows = nthrows + 1

	if x^2 + y^2 <= 1
		nsucess = nsucess + 1
	end
	
	# pi = pi /4
	π = nsucess / nthrows
	π = π * 4
	
	println("π = ", π)

	# plotting points on graph 
	plot(x,y, ".")

	filename = "plot" * string(i) * ".png"
	savefig(filename)
end	

# ===== UNICORN ==============================
#
# The unicorn has been defined
#
# ============================================
🦄  = π

# ====== PRETTY PRINTING STUFF ===============
#
#	will print some pretty freaking stuff.
#	Yes, there will be poop. 	
#	... and of course unicorns
#
# ============================================
println()
println("💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 ")
println()
println("And finally... 🦄  = " , 🦄 )
println()
println("💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 💩 ")
println()
#show()
#savefig("unicorn_love.png")
