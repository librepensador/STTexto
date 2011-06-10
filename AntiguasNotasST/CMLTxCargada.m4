include(/home/librepensador/opt/circuit_macros/pgf.m4)
include(/home/librepensador/opt/circuit_macros/libcct.m4)
.PS
cct_init
loopwid =1; loopht = 0.75; leng = elen_*2; 
	source(up_ loopht,AC); llabel(,V_g,)
	R1: resistor(right_ loopwid/2,,E); llabel(,Z_g,);
	G1: gap(down_ loopht);
	line <-> from 1/8 < G1.start , G1.end > to 7/8 < G1.start , G1.end > "$V(-L)$" ljust
	move to G1.start
	linewid = linewid*5;
	tline(right_ 3,0.1)
	linewid = linewid/5;
	G2: gap(down_ loopht);
	line <-> from 1/8 < G2.start , G2.end > to 7/8 < G2.start , G2.end > "$V(0)$" rjust
	move to G2.start
	line right_ loopwid/4
	resistor(down_ loopht,,E); llabel(,Z_l,)
	line left_ loopwid/4
	dot
	move left_ 6*linewid # por una razón que no entiendo hay que moverse una vez más de las 5.
	linewid = linewid*5;
	tline(right_ 3,0.1)
	linewid = linewid/5;
	move left_ 6*linewid
	line left_ loopwid/2
	arrow <- down 0.3 from G1.end chop 0.05; "$x=-L$" below
	arrow <- down 0.3 from G2.end chop 0.05; "$x=0$" below
	
	

.PE
