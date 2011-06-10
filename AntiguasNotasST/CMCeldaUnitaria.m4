% CeldaUnitaria.m4
include(/home/librepensador/opt/circuit_macros/pgf.m4)
include(/home/librepensador/opt/circuit_macros/libcct.m4)
.PS
cct_init

hgt = elen_*1.5
ewd = dimen_*2.5
define(sresistor,resistor(right_ ewd); dlabel(0,-0.15,,,r); b_current(i(z,t),rjust_ above_ ,In,Start))
define(sinductor,inductor(right_ ewd,W); dlabel(0,-0.15,,,l); b_current(i(z+\Delta z,t),ljust_ above_ ,Out,End))
define(tsection,sresistor
				{	dot; llabel(,v(z,t),)
			 		line down_ hgt*0.25
			 	 	gpar_( resistor(down_ hgt*0.5,,H); dlabel(0.06,-0.1,,,g),
			 	 	capacitor(down_ hgt*0.5); rlabel(,c))
			 	 	line down_ hgt*0.25
			 	 	dot
			 	}
			 sinductor)
SW: Here

tsection
move down_ hgt
line to SW - (0,hgt)
.PE