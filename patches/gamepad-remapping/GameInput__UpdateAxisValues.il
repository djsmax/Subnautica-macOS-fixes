0	0000	ldc.i4.0
1	0001	stloc.0
2	0002	br.s	11 (0014) ldloc.0
3	0004	ldsfld	float32[] GameInput::axisValues
4	0009	ldloc.0
5	000A	ldc.r4	0
6	000F	stelem.r4
7	0010	ldloc.0
8	0011	ldc.i4.1
9	0012	add
10	0013	stloc.0
11	0014	ldloc.0
12	0015	ldsfld	float32[] GameInput::axisValues
13	001A	ldlen
14	001B	conv.i4
15	001C	blt.s	3 (0004) ldsfld float32[] GameInput::axisValues
16	001E	ldarg.2
17	001F	brfalse	227 (029C) ldarg.1
18	0024	call	bool GameInput::GetUseOculusInputManager()
19	0029	brfalse	119 (0154) call valuetype GameInput/ControllerLayout GameInput::GetControllerLayout()
20	002E	ldc.i4.1
21	002F	ldc.i4	-0x80000000
22	0034	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis2D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
23	0039	stloc.1
24	003A	ldsfld	float32[] GameInput::axisValues
25	003F	ldc.i4.2
26	0040	ldloc.1
27	0041	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
28	0046	stelem.r4
29	0047	ldsfld	float32[] GameInput::axisValues
30	004C	ldc.i4.3
31	004D	ldloc.1
32	004E	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
33	0053	neg
34	0054	stelem.r4
35	0055	ldc.i4.2
36	0056	ldc.i4	-0x80000000
37	005B	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis2D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
38	0060	stloc.2
39	0061	ldsfld	float32[] GameInput::axisValues
40	0066	ldc.i4.0
41	0067	ldloc.2
42	0068	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
43	006D	stelem.r4
44	006E	ldsfld	float32[] GameInput::axisValues
45	0073	ldc.i4.1
46	0074	ldloc.2
47	0075	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
48	007A	neg
49	007B	stelem.r4
50	007C	ldsfld	float32[] GameInput::axisValues
51	0081	ldc.i4.4
52	0082	ldc.i4.1
53	0083	ldc.i4	-0x80000000
54	0088	call	float32 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis1D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
55	008D	stelem.r4
56	008E	ldsfld	float32[] GameInput::axisValues
57	0093	ldc.i4.5
58	0094	ldc.i4.2
59	0095	ldc.i4	-0x80000000
60	009A	call	float32 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis1D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
61	009F	stelem.r4
62	00A0	ldsfld	float32[] GameInput::axisValues
63	00A5	ldc.i4.6
64	00A6	ldc.r4	0
65	00AB	stelem.r4
66	00AC	ldc.i4	0x40000
67	00B1	ldc.i4	-0x80000000
68	00B6	call	bool ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawButton, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
69	00BB	brfalse.s	78 (00D1) ldc.i4 0x80000
70	00BD	ldsfld	float32[] GameInput::axisValues
71	00C2	ldc.i4.6
72	00C3	ldelema	[mscorlib]System.Single
73	00C8	dup
74	00C9	ldind.r4
75	00CA	ldc.r4	1
76	00CF	sub
77	00D0	stind.r4
78	00D1	ldc.i4	0x80000
79	00D6	ldc.i4	-0x80000000
80	00DB	call	bool ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawButton, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
81	00E0	brfalse.s	90 (00F6) ldsfld float32[] GameInput::axisValues
82	00E2	ldsfld	float32[] GameInput::axisValues
83	00E7	ldc.i4.6
84	00E8	ldelema	[mscorlib]System.Single
85	00ED	dup
86	00EE	ldind.r4
87	00EF	ldc.r4	1
88	00F4	add
89	00F5	stind.r4
90	00F6	ldsfld	float32[] GameInput::axisValues
91	00FB	ldc.i4.7
92	00FC	ldc.r4	0
93	0101	stelem.r4
94	0102	ldc.i4	0x10000
95	0107	ldc.i4	-0x80000000
96	010C	call	bool ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawButton, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
97	0111	brfalse.s	106 (0127) ldc.i4 0x20000
98	0113	ldsfld	float32[] GameInput::axisValues
99	0118	ldc.i4.7
100	0119	ldelema	[mscorlib]System.Single
101	011E	dup
102	011F	ldind.r4
103	0120	ldc.r4	1
104	0125	add
105	0126	stind.r4
106	0127	ldc.i4	0x20000
107	012C	ldc.i4	-0x80000000
108	0131	call	bool ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawButton, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
109	0136	brfalse	227 (029C) ldarg.1
110	013B	ldsfld	float32[] GameInput::axisValues
111	0140	ldc.i4.7
112	0141	ldelema	[mscorlib]System.Single
113	0146	dup
114	0147	ldind.r4
115	0148	ldc.r4	1
116	014D	sub
117	014E	stind.r4
118	014F	br	227 (029C) ldarg.1
119	0154	call	valuetype GameInput/ControllerLayout GameInput::GetControllerLayout()
120	0159	stloc.3
121	015A	ldloc.3
122	015B	ldc.i4.1
123	015C	beq.s	132 (0170) ldsfld float32[] GameInput::axisValues
124	015E	ldloc.3
125	015F	ldc.i4.2
126	0160	beq.s	132 (0170) ldsfld float32[] GameInput::axisValues
127	0162	call	bool GameInput::IsPS4OrPS5Platform()
128	0167	brtrue.s	132 (0170) ldsfld float32[] GameInput::axisValues
129	0169	ldloc.3
130	016A	ldc.i4.5
131	016B	bne.un	227 (029C) ldarg.1
132	0170	ldsfld	float32[] GameInput::axisValues
133	0175	ldc.i4.0
134	0176	ldstr	"ControllerAxis3"
135	017B	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
136	0180	stelem.r4
137	0181	ldsfld	float32[] GameInput::axisValues
138	0186	ldc.i4.1
139	0187	ldstr	"ControllerAxis4"
140	018C	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
141	0191	stelem.r4
142	0192	ldsfld	float32[] GameInput::axisValues
143	0197	ldc.i4.2
144	0198	ldstr	"ControllerAxis1"
145	019D	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
146	01A2	stelem.r4
147	01A3	ldsfld	float32[] GameInput::axisValues
148	01A8	ldc.i4.3
149	01A9	ldstr	"ControllerAxis2"
150	01AE	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
151	01B3	stelem.r4
152	01B4	ldsfld	float32[] GameInput::axisValues
153	01B9	ldc.i4.4
154	01BA	ldstr	"ControllerAxis5"
155	01BF	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
156	01C4	stelem.r4
157	01C5	ldsfld	float32[] GameInput::axisValues
158	01CA	ldc.i4.5
159	01CB	ldstr	"ControllerAxis6"
160	01D0	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
161	01D5	stelem.r4
162	01D6	ldstr	"ControllerAxis7"
163	01DB	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
164	01E0	stloc.s	axis (4)
165	01E2	ldstr	"ControllerAxis8"
166	01E7	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
167	01EC	stloc.s	axis2 (5)
168	01EE	ldc.r4	0
169	01F3	stloc.s	num (6)
170	01F5	ldc.r4	0
171	01FA	stloc.s	num2 (7)
172	01FC	ldloc.s	axis (4)
173	01FE	ldc.r4	0
174	0203	beq.s	178 (020E) ldloc.s axis (4)
175	0205	ldloc.s	axis2 (5)
176	0207	ldc.r4	0
177	020C	bne.un.s	184 (0220) ldloc.s axis2 (5)
178	020E	ldloc.s	axis (4)
179	0210	ldc.r4	0
180	0215	beq.s	219 (028A) ldsfld float32[] GameInput::axisValues
181	0217	ldloc.s	axis2 (5)
182	0219	ldc.r4	-1
183	021E	beq.s	219 (028A) ldsfld float32[] GameInput::axisValues
184	0220	ldloc.s	axis2 (5)
185	0222	ldc.r4	-1
186	0227	bne.un.s	193 (023B) ldloc.s axis2 (5)
187	0229	ldloc.s	axis (4)
188	022B	ldc.r4	1
189	0230	bne.un.s	193 (023B) ldloc.s axis2 (5)
190	0232	ldc.r4	1
191	0237	stloc.s	num2 (7)
192	0239	br.s	219 (028A) ldsfld float32[] GameInput::axisValues
193	023B	ldloc.s	axis2 (5)
194	023D	ldc.r4	1
195	0242	bne.un.s	202 (0256) ldloc.s axis2 (5)
196	0244	ldloc.s	axis (4)
197	0246	ldc.r4	-1
198	024B	bne.un.s	202 (0256) ldloc.s axis2 (5)
199	024D	ldc.r4	-1
200	0252	stloc.s	num2 (7)
201	0254	br.s	219 (028A) ldsfld float32[] GameInput::axisValues
202	0256	ldloc.s	axis2 (5)
203	0258	ldc.r4	1
204	025D	bne.un.s	211 (0271) ldloc.s axis2 (5)
205	025F	ldloc.s	axis (4)
206	0261	ldc.r4	1
207	0266	bne.un.s	211 (0271) ldloc.s axis2 (5)
208	0268	ldc.r4	1
209	026D	stloc.s	num (6)
210	026F	br.s	219 (028A) ldsfld float32[] GameInput::axisValues
211	0271	ldloc.s	axis2 (5)
212	0273	ldc.r4	-1
213	0278	bne.un.s	219 (028A) ldsfld float32[] GameInput::axisValues
214	027A	ldloc.s	axis (4)
215	027C	ldc.r4	-1
216	0281	bne.un.s	219 (028A) ldsfld float32[] GameInput::axisValues
217	0283	ldc.r4	-1
218	0288	stloc.s	num (6)
219	028A	ldsfld	float32[] GameInput::axisValues
220	028F	ldc.i4.6
221	0290	ldloc.s	num (6)
222	0292	stelem.r4
223	0293	ldsfld	float32[] GameInput::axisValues
224	0298	ldc.i4.7
225	0299	ldloc.s	num2 (7)
226	029B	stelem.r4
227	029C	ldarg.1
228	029D	brfalse.s	244 (02D4) ldc.i4.0
229	029F	ldsfld	float32[] GameInput::axisValues
230	02A4	ldc.i4.s	10
231	02A6	ldstr	"Mouse ScrollWheel"
232	02AB	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
233	02B0	stelem.r4
234	02B1	ldsfld	float32[] GameInput::axisValues
235	02B6	ldc.i4.8
236	02B7	ldstr	"Mouse X"
237	02BC	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxisRaw(string)
238	02C1	stelem.r4
239	02C2	ldsfld	float32[] GameInput::axisValues
240	02C7	ldc.i4.s	9
241	02C9	ldstr	"Mouse Y"
242	02CE	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxisRaw(string)
243	02D3	stelem.r4
244	02D4	ldc.i4.0
245	02D5	stloc.s	j (8)
246	02D7	br.s	287 (0341) ldloc.s j (8)
247	02D9	ldloc.s	j (8)
248	02DB	stloc.s	analogAxis (9)
249	02DD	ldarg.0
250	02DE	ldloc.s	analogAxis (9)
251	02E0	call	instance valuetype GameInput/Device GameInput::GetDeviceForAxis(valuetype GameInput/AnalogAxis)
252	02E5	stloc.s	deviceForAxis (10)
253	02E7	ldsfld	float32[] GameInput::lastAxisValues
254	02EC	ldloc.s	j (8)
255	02EE	ldelem.r4
256	02EF	ldsfld	float32[] GameInput::axisValues
257	02F4	ldloc.s	j (8)
258	02F6	ldelem.r4
259	02F7	sub
260	02F8	stloc.s	num3 (11)
261	02FA	ldsfld	float32[] GameInput::lastAxisValues
262	02FF	ldloc.s	j (8)
263	0301	ldsfld	float32[] GameInput::axisValues
264	0306	ldloc.s	j (8)
265	0308	ldelem.r4
266	0309	stelem.r4
267	030A	ldloc.s	deviceForAxis (10)
268	030C	ldsfld	valuetype GameInput/Device GameInput::lastDevice
269	0311	beq.s	283 (033B) ldloc.s j (8)
270	0313	ldc.r4	0,1
271	0318	stloc.s	num4 (12)
272	031A	ldloc.s	num3 (11)
273	031C	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Abs(float32)
274	0321	ldloc.s	num4 (12)
275	0323	ble.un.s	279 (032E) ldsfld float32[] GameInput::axisValues
276	0325	ldloc.s	deviceForAxis (10)
277	0327	stsfld	valuetype GameInput/Device GameInput::lastDevice
278	032C	br.s	283 (033B) ldloc.s j (8)
279	032E	ldsfld	float32[] GameInput::axisValues
280	0333	ldloc.s	j (8)
281	0335	ldc.r4	0
282	033A	stelem.r4
283	033B	ldloc.s	j (8)
284	033D	ldc.i4.1
285	033E	add
286	033F	stloc.s	j (8)
287	0341	ldloc.s	j (8)
288	0343	ldsfld	float32[] GameInput::axisValues
289	0348	ldlen
290	0349	conv.i4
291	034A	blt.s	247 (02D9) ldloc.s j (8)
292	034C	ret
