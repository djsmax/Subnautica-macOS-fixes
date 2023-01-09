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
28	0076	switch	[30 (00D9), 32 (00DF), 34 (00E5), 68 (014B), 68 (014B), 68 (014B), 68 (014B), 36 (00EB), 38 (00F1), 40 (00F7), 42 (00FD), 44 (0103), 46 (0109), 48 (010F), 50 (0115), 52 (011B), 54 (0121), 56 (0127), 58 (012D), 60 (0133), 62 (0139), 64 (013F), 66 (0145)]
29	00D7	br.s	68 (014B) ldarga.s keyCode (0)
30	00D9	ldstr	"MouseButtonLeft"
31	00DE	ret
32	00DF	ldstr	"MouseButtonRight"
33	00E4	ret
34	00E5	ldstr	"MouseButtonMiddle"
35	00EA	ret
36	00EB	ldstr	"ControllerButtonA"
37	00F0	ret
38	00F1	ldstr	"ControllerButtonB"
39	00F6	ret
40	00F7	ldstr	"JoystickButton2"
41	00FC	ret
42	00FD	ldstr	"ControllerButtonX"
43	0102	ret
44	0103	ldstr	"ControllerButtonY"
45	0108	ret
46	0109	ldstr	"JoystickButton5"
47	010E	ret
48	010F	ldstr	"ControllerButtonLeftBumper"
49	0114	ret
50	0115	ldstr	"ControllerButtonRightBumper"
51	011A	ret
52	011B	ldstr	"JoystickButton8"
53	0120	ret
54	0121	ldstr	"JoystickButton9"
55	0126	ret
56	0127	ldstr	"ControllerButtonBack"
57	012C	ret
58	012D	ldstr	"ControllerButtonHome"
59	0132	ret
60	0133	ldstr	"ControllerButtonBack"
61	0138	ret
62	0139	ldstr	"ControllerButtonLeftStick"
63	013E	ret
64	013F	ldstr	"ControllerButtonRightStick"
65	0144	ret
66	0145	ldstr	"ControllerRecordButton"
67	014A	ret
68	014B	ldarga.s	keyCode (0)
69	014D	constrained.	[UnityEngine.CoreModule]UnityEngine.KeyCode
70	0153	callvirt	instance string [mscorlib]System.Object::ToString()
71	0158	ret
