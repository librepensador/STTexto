%celda.m4
include(/home/librepensador/opt/circuit_macros/pgf.m4)
include(/home/librepensador/opt/circuit_macros/libcct.m4)
.PS
cct_init

hgt = elen_*1.5
ewd = dimen_*0.9
define(sresistor,resistor(right_ ewd); llabel(,r))
define(sinductor,inductor(right_ ewd,W); llabel(,l))
define(tsection,sinductor
			 	{	line down_ hgt*0.25
			 	 	gpar_( resistor(down_ hgt*0.5,,H); dlabel(0.06,-0.1,,,g),
			 	 	capacitor(down_ hgt*0.5); rlabel(,c))
			 	 	line down_ hgt*0.25
			 	}
			 sresistor)
SW: Here
gap(up_ hgt)
sresistor
for i=1 to 2 do { tsection }
line dotted right_ dimen_
tsection
gap(down_ hgt)
line to SW

.PE