0	0000	ldarg.0
1	0001	ldc.i4.s	0x30
2	0003	sub
3	0004	switch	[5 (0033), 7 (0039), 9 (003F), 11 (0045), 13 (004B), 15 (0051), 17 (0057), 19 (005D), 21 (0063), 23 (0069)]
4	0031	br.s	25 (006F) ldarg.0 
5	0033	ldstr	"0"
6	0038	ret
7	0039	ldstr	"1"
8	003E	ret
9	003F	ldstr	"2"
10	0044	ret
11	0045	ldstr	"3"
12	004A	ret
13	004B	ldstr	"4"
14	0050	ret
15	0051	ldstr	"5"
16	0056	ret
17	0057	ldstr	"6"
18	005C	ret
19	005D	ldstr	"7"
20	0062	ret
21	0063	ldstr	"8"
22	0068	ret
23	0069	ldstr	"9"
24	006E	ret
25	006F	ldarg.0
26	0070	ldc.i4	0x143
27	0075	sub
28	0076	switch	[30 (00C5), 32 (00CB), 34 (00D1), 56 (0113), 56 (0113), 56 (0113), 56 (0113), 56 (0113), 38 (00DD), 40 (00E3), 42 (00E9), 44 (00EF), 46 (00F5), 48 (00FB), 50 (0101), 36 (00D7), 52 (0107), 54 (010D)]
29	00C3	br.s	56 (0113) ldarga.s keyCode (0)
30	00C5	ldstr	"MouseButtonLeft"
31	00CA	ret
32	00CB	ldstr	"MouseButtonRight"
33	00D0	ret
34	00D1	ldstr	"MouseButtonMiddle"
35	00D6	ret
36	00D7	ldstr	"ControllerButtonHome"
37	00DC	ret
38	00DD	ldstr	"ControllerButtonA"
39	00E2	ret
40	00E3	ldstr	"ControllerButtonB"
41	00E8	ret
42	00E9	ldstr	"ControllerButtonX"
43	00EE	ret
44	00EF	ldstr	"ControllerButtonY"
45	00F4	ret
46	00F5	ldstr	"ControllerButtonLeftBumper"
47	00FA	ret
48	00FB	ldstr	"ControllerButtonRightBumper"
49	0100	ret
50	0101	ldstr	"ControllerButtonBack"
51	0106	ret
52	0107	ldstr	"ControllerButtonLeftStick"
53	010C	ret
54	010D	ldstr	"ControllerButtonRightStick"
55	0112	ret
56	0113	ldarga.s	keyCode (0)
57	0115	constrained.	[UnityEngine.CoreModule]UnityEngine.KeyCode
58	011B	callvirt	instance string [mscorlib]System.Object::ToString()
59	0120	ret
