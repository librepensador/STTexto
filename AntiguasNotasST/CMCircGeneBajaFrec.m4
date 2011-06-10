include(/home/librepensador/opt/circuit_macros/pgf.m4)
include(/home/librepensador/opt/circuit_macros/libcct.m4)
.PS
cct_init
loopwid =1; loopht = 0.75; leng = elen_*2;
	source(up_ loopht,AC); llabel(,V_g,)
	resistor(right_ loopwid,,E); llabel(,Z_g,)
	G1: gap(down_ loopht);
	line <-> from 1/8 < G1.start , G1.end > to 7/8 < G1.start , G1.end > "$V_0$" rjust
	move to G1.start
	TxLu: tline(right_ loopwid)
	G2: gap(down_ loopht);
	line <-> from 1/8 < G2.start , G2.end > to 7/8 < G2.start , G2.end > "$V_l$" rjust
	move to G2.start
	line right_ loopwid/2
	resistor(down_ loopht,,E); llabel(,Z_l,)
	line left_ loopwid/2
	move left_ loopwid
	tline(right_ loopwid)
	move left_ loopwid
	line left_ loopwid
	dimension_(from TxLu.start to TxLu.end,0.25, $L$, 0.2)

.PE
