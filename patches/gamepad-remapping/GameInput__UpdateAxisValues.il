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
17	001F	brfalse	471 (0684) ldarg.1 
18	0024	call	bool GameInput::GetUseOculusInputManager()
19	0029	brfalse	91 (011D) call valuetype GameInput/ControllerLayout GameInput::GetControllerLayout()
20	002E	ldc.i4.1
21	002F	ldc.i4	-0x80000000
22	0034	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis2D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
23	0039	stloc.s	vector (11)
24	003B	ldloca.s	vector2 (1)
25	003D	ldloc.s	vector (11)
26	003F	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
27	0044	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
28	0049	ldloca.s	vector2 (1)
29	004B	ldloc.s	vector (11)
30	004D	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
31	0052	neg
32	0053	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
33	0058	ldc.i4.2
34	0059	ldc.i4	-0x80000000
35	005E	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis2D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
36	0063	stloc.s	vector3 (12)
37	0065	ldloca.s	vector4 (2)
38	0067	ldloc.s	vector3 (12)
39	0069	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
40	006E	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
41	0073	ldloca.s	vector4 (2)
42	0075	ldloc.s	vector3 (12)
43	0077	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
44	007C	neg
45	007D	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
46	0082	ldc.i4.1
47	0083	ldc.i4	-0x80000000
48	0088	call	float32 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis1D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
49	008D	stloc.3
50	008E	ldc.i4.2
51	008F	ldc.i4	-0x80000000
52	0094	call	float32 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis1D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
53	0099	stloc.s	num2 (4)
54	009B	ldc.r4	0
55	00A0	stloc.s	num3 (5)
56	00A2	ldc.i4	0x40000
57	00A7	ldc.i4	-0x80000000
58	00AC	call	bool ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawButton, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
59	00B1	brfalse.s	64 (00BD) ldc.i4 0x80000
60	00B3	ldloc.s	num3 (5)
61	00B5	ldc.r4	1
62	00BA	sub
63	00BB	stloc.s	num3 (5)
64	00BD	ldc.i4	0x80000
65	00C2	ldc.i4	-0x80000000
66	00C7	call	bool ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawButton, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
67	00CC	brfalse.s	72 (00D8) ldc.r4 0
68	00CE	ldloc.s	num3 (5)
69	00D0	ldc.r4	1
70	00D5	add
71	00D6	stloc.s	num3 (5)
72	00D8	ldc.r4	0
73	00DD	stloc.s	num4 (6)
74	00DF	ldc.i4	0x20000
75	00E4	ldc.i4	-0x80000000
76	00E9	call	bool ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawButton, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
77	00EE	brfalse.s	82 (00FA) ldc.i4 0x10000
78	00F0	ldloc.s	num4 (6)
79	00F2	ldc.r4	1
80	00F7	sub
81	00F8	stloc.s	num4 (6)
82	00FA	ldc.i4	0x10000
83	00FF	ldc.i4	-0x80000000
84	0104	call	bool ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawButton, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
85	0109	brfalse	413 (05CF) ldloc.1 
86	010E	ldloc.s	num4 (6)
87	0110	ldc.r4	1
88	0115	add
89	0116	stloc.s	num4 (6)
90	0118	br	413 (05CF) ldloc.1 
91	011D	call	valuetype GameInput/ControllerLayout GameInput::GetControllerLayout()
92	0122	stloc.s	controllerLayout (13)
93	0124	ldloc.s	controllerLayout (13)
94	0126	ldc.i4.1
95	0127	sub
96	0128	switch	[98 (014A), 182 (0266), 266 (0382), 303 (0412), 337 (049F), 370 (052B)]
97	0145	br	407 (05B8) ldstr "{0} ControllerLayout support is not implemented!"
98	014A	ldloca.s	vector2 (1)
99	014C	ldstr	"ControllerAxis1"
100	0151	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
101	0156	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
102	015B	ldloca.s	vector2 (1)
103	015D	ldstr	"ControllerAxis2"
104	0162	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
105	0167	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
106	016C	ldloca.s	vector4 (2)
107	016E	ldstr	"ControllerAxis3"
108	0173	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
109	0178	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
110	017D	ldloca.s	vector4 (2)
111	017F	ldstr	"ControllerAxis4"
112	0184	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
113	0189	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
114	018E	ldstr	"ControllerAxis5"
115	0193	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
116	0198	stloc.3
117	0199	ldstr	"ControllerAxis6"
118	019E	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
119	01A3	stloc.s	num2 (4)
120	01A5	ldstr	"ControllerAxis7"
121	01AA	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
122	01AF	stloc.s	axis (7)
123	01B1	ldstr	"ControllerAxis8"
124	01B6	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
125	01BB	stloc.s	axis2 (8)
126	01BD	ldc.r4	0
127	01C2	stloc.s	dpadX (9)
128	01C4	ldc.r4	0
129	01C9	stloc.s	dpadY (10)
130	01CB	ldloc.s	axis (7)
131	01CD	ldc.r4	0
132	01D2	beq.s	136 (01DD) ldloc.s axis (7)
133	01D4	ldloc.s	axis2 (8)
134	01D6	ldc.r4	0
135	01DB	bne.un.s	142 (01EF) ldloc.s axis2 (8)
136	01DD	ldloc.s	axis (7)
137	01DF	ldc.r4	0
138	01E4	beq.s	177 (0259) ldloc.s dpadX (9)
139	01E6	ldloc.s	axis2 (8)
140	01E8	ldc.r4	-1
141	01ED	beq.s	177 (0259) ldloc.s dpadX (9)
142	01EF	ldloc.s	axis2 (8)
143	01F1	ldc.r4	-1
144	01F6	bne.un.s	151 (020A) ldloc.s axis2 (8)
145	01F8	ldloc.s	axis (7)
146	01FA	ldc.r4	1
147	01FF	bne.un.s	151 (020A) ldloc.s axis2 (8)
148	0201	ldc.r4	1
149	0206	stloc.s	dpadY (10)
150	0208	br.s	177 (0259) ldloc.s dpadX (9)
151	020A	ldloc.s	axis2 (8)
152	020C	ldc.r4	1
153	0211	bne.un.s	160 (0225) ldloc.s axis2 (8)
154	0213	ldloc.s	axis (7)
155	0215	ldc.r4	-1
156	021A	bne.un.s	160 (0225) ldloc.s axis2 (8)
157	021C	ldc.r4	-1
158	0221	stloc.s	dpadY (10)
159	0223	br.s	177 (0259) ldloc.s dpadX (9)
160	0225	ldloc.s	axis2 (8)
161	0227	ldc.r4	1
162	022C	bne.un.s	169 (0240) ldloc.s axis2 (8)
163	022E	ldloc.s	axis (7)
164	0230	ldc.r4	1
165	0235	bne.un.s	169 (0240) ldloc.s axis2 (8)
166	0237	ldc.r4	1
167	023C	stloc.s	dpadX (9)
168	023E	br.s	177 (0259) ldloc.s dpadX (9)
169	0240	ldloc.s	axis2 (8)
170	0242	ldc.r4	-1
171	0247	bne.un.s	177 (0259) ldloc.s dpadX (9)
172	0249	ldloc.s	axis (7)
173	024B	ldc.r4	-1
174	0250	bne.un.s	177 (0259) ldloc.s dpadX (9)
175	0252	ldc.r4	-1
176	0257	stloc.s	dpadX (9)
177	0259	ldloc.s	dpadX (9)
178	025B	stloc.s	num3 (5)
179	025D	ldloc.s	dpadY (10)
180	025F	stloc.s	num4 (6)
181	0261	br	413 (05CF) ldloc.1 
182	0266	ldloca.s	vector2 (1)
183	0268	ldstr	"ControllerAxis1"
184	026D	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
185	0272	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
186	0277	ldloca.s	vector2 (1)
187	0279	ldstr	"ControllerAxis2"
188	027E	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
189	0283	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
190	0288	ldloca.s	vector4 (2)
191	028A	ldstr	"ControllerAxis3"
192	028F	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
193	0294	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
194	0299	ldloca.s	vector4 (2)
195	029B	ldstr	"ControllerAxis4"
196	02A0	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
197	02A5	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
198	02AA	ldstr	"ControllerAxis5"
199	02AF	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
200	02B4	stloc.3
201	02B5	ldstr	"ControllerAxis6"
202	02BA	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
203	02BF	stloc.s	num2 (4)
204	02C1	ldstr	"ControllerAxis7"
205	02C6	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
206	02CB	stloc.s	axis (7)
207	02CD	ldstr	"ControllerAxis8"
208	02D2	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
209	02D7	stloc.s	axis2 (8)
210	02D9	ldc.r4	0
211	02DE	stloc.s	dpadX (9)
212	02E0	ldc.r4	0
213	02E5	stloc.s	dpadY (10)
214	02E7	ldloc.s	axis (7)
215	02E9	ldc.r4	0
216	02EE	beq.s	220 (02F9) ldloc.s axis (7)
217	02F0	ldloc.s	axis2 (8)
218	02F2	ldc.r4	0
219	02F7	bne.un.s	226 (030B) ldloc.s axis2 (8)
220	02F9	ldloc.s	axis (7)
221	02FB	ldc.r4	0
222	0300	beq.s	261 (0375) ldloc.s dpadX (9)
223	0302	ldloc.s	axis2 (8)
224	0304	ldc.r4	-1
225	0309	beq.s	261 (0375) ldloc.s dpadX (9)
226	030B	ldloc.s	axis2 (8)
227	030D	ldc.r4	-1
228	0312	bne.un.s	235 (0326) ldloc.s axis2 (8)
229	0314	ldloc.s	axis (7)
230	0316	ldc.r4	1
231	031B	bne.un.s	235 (0326) ldloc.s axis2 (8)
232	031D	ldc.r4	1
233	0322	stloc.s	dpadY (10)
234	0324	br.s	261 (0375) ldloc.s dpadX (9)
235	0326	ldloc.s	axis2 (8)
236	0328	ldc.r4	1
237	032D	bne.un.s	244 (0341) ldloc.s axis2 (8)
238	032F	ldloc.s	axis (7)
239	0331	ldc.r4	-1
240	0336	bne.un.s	244 (0341) ldloc.s axis2 (8)
241	0338	ldc.r4	-1
242	033D	stloc.s	dpadY (10)
243	033F	br.s	261 (0375) ldloc.s dpadX (9)
244	0341	ldloc.s	axis2 (8)
245	0343	ldc.r4	1
246	0348	bne.un.s	253 (035C) ldloc.s axis2 (8)
247	034A	ldloc.s	axis (7)
248	034C	ldc.r4	1
249	0351	bne.un.s	253 (035C) ldloc.s axis2 (8)
250	0353	ldc.r4	1
251	0358	stloc.s	dpadX (9)
252	035A	br.s	261 (0375) ldloc.s dpadX (9)
253	035C	ldloc.s	axis2 (8)
254	035E	ldc.r4	-1
255	0363	bne.un.s	261 (0375) ldloc.s dpadX (9)
256	0365	ldloc.s	axis (7)
257	0367	ldc.r4	-1
258	036C	bne.un.s	261 (0375) ldloc.s dpadX (9)
259	036E	ldc.r4	-1
260	0373	stloc.s	dpadX (9)
261	0375	ldloc.s	dpadX (9)
262	0377	stloc.s	num3 (5)
263	0379	ldloc.s	dpadY (10)
264	037B	stloc.s	num4 (6)
265	037D	br	413 (05CF) ldloc.1 
266	0382	ldloca.s	vector2 (1)
267	0384	ldstr	"ControllerAxis1"
268	0389	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
269	038E	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
270	0393	ldloca.s	vector2 (1)
271	0395	ldstr	"ControllerAxis2"
272	039A	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
273	039F	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
274	03A4	ldloca.s	vector4 (2)
275	03A6	ldstr	"ControllerAxis3"
276	03AB	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
277	03B0	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
278	03B5	ldloca.s	vector4 (2)
279	03B7	ldstr	"ControllerAxis6"
280	03BC	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
281	03C1	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
282	03C6	ldstr	"ControllerAxis4"
283	03CB	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
284	03D0	ldc.r4	0,5
285	03D5	mul
286	03D6	ldc.r4	0,5
287	03DB	add
288	03DC	stloc.3
289	03DD	ldstr	"ControllerAxis5"
290	03E2	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
291	03E7	ldc.r4	0,5
292	03EC	mul
293	03ED	ldc.r4	0,5
294	03F2	add
295	03F3	stloc.s	num2 (4)
296	03F5	ldstr	"ControllerAxis7"
297	03FA	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
298	03FF	stloc.s	num3 (5)
299	0401	ldstr	"ControllerAxis8"
300	0406	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
301	040B	stloc.s	num4 (6)
302	040D	br	413 (05CF) ldloc.1 
303	0412	ldloca.s	vector2 (1)
304	0414	ldstr	"ControllerAxis1"
305	0419	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
306	041E	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
307	0423	ldloca.s	vector2 (1)
308	0425	ldstr	"ControllerAxis2"
309	042A	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
310	042F	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
311	0434	ldloca.s	vector4 (2)
312	0436	ldstr	"ControllerAxis4"
313	043B	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
314	0440	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
315	0445	ldloca.s	vector4 (2)
316	0447	ldstr	"ControllerAxis5"
317	044C	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
318	0451	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
319	0456	ldstr	"ControllerAxis3"
320	045B	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
321	0460	ldc.r4	0
322	0465	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Max(float32, float32)
323	046A	stloc.3
324	046B	ldstr	"ControllerAxis3"
325	0470	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
326	0475	neg
327	0476	ldc.r4	0
328	047B	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Max(float32, float32)
329	0480	stloc.s	num2 (4)
330	0482	ldstr	"ControllerAxis6"
331	0487	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
332	048C	stloc.s	num3 (5)
333	048E	ldstr	"ControllerAxis7"
334	0493	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
335	0498	stloc.s	num4 (6)
336	049A	br	413 (05CF) ldloc.1 
337	049F	ldloca.s	vector2 (1)
338	04A1	ldstr	"ControllerAxis1"
339	04A6	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
340	04AB	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
341	04B0	ldloca.s	vector2 (1)
342	04B2	ldstr	"ControllerAxis2"
343	04B7	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
344	04BC	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
345	04C1	ldloca.s	vector4 (2)
346	04C3	ldstr	"ControllerAxis4"
347	04C8	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
348	04CD	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
349	04D2	ldloca.s	vector4 (2)
350	04D4	ldstr	"ControllerAxis5"
351	04D9	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
352	04DE	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
353	04E3	ldstr	"ControllerAxis9"
354	04E8	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
355	04ED	ldc.r4	0
356	04F2	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Max(float32, float32)
357	04F7	stloc.3
358	04F8	ldstr	"ControllerAxis10"
359	04FD	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
360	0502	ldc.r4	0
361	0507	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Max(float32, float32)
362	050C	stloc.s	num2 (4)
363	050E	ldstr	"ControllerAxis6"
364	0513	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
365	0518	stloc.s	num3 (5)
366	051A	ldstr	"ControllerAxis7"
367	051F	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
368	0524	stloc.s	num4 (6)
369	0526	br	413 (05CF) ldloc.1 
370	052B	ldloca.s	vector2 (1)
371	052D	ldstr	"ControllerAxis1"
372	0532	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
373	0537	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
374	053C	ldloca.s	vector2 (1)
375	053E	ldstr	"ControllerAxis2"
376	0543	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
377	0548	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
378	054D	ldloca.s	vector4 (2)
379	054F	ldstr	"ControllerAxis3"
380	0554	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
381	0559	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
382	055E	ldloca.s	vector4 (2)
383	0560	ldstr	"ControllerAxis6"
384	0565	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
385	056A	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
386	056F	ldstr	"ControllerAxis4"
387	0574	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
388	0579	ldc.r4	0,5
389	057E	mul
390	057F	ldc.r4	0,5
391	0584	add
392	0585	stloc.3
393	0586	ldstr	"ControllerAxis5"
394	058B	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
395	0590	ldc.r4	0,5
396	0595	mul
397	0596	ldc.r4	0,5
398	059B	add
399	059C	stloc.s	num2 (4)
400	059E	ldstr	"ControllerAxis7"
401	05A3	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
402	05A8	stloc.s	num3 (5)
403	05AA	ldstr	"ControllerAxis8"
404	05AF	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
405	05B4	stloc.s	num4 (6)
406	05B6	br.s	413 (05CF) ldloc.1 
407	05B8	ldstr	"{0} ControllerLayout support is not implemented!"
408	05BD	ldloc.s	controllerLayout (13)
409	05BF	box	GameInput/ControllerLayout
410	05C4	call	string [mscorlib]System.String::Format(string, object)
411	05C9	newobj	instance void [mscorlib]System.NotImplementedException::.ctor(string)
412	05CE	throw
413	05CF	ldloc.1
414	05D0	ldc.r4	0,2
415	05D5	ldc.r4	1
416	05DA	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 GameInput::Resample(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2, float32, float32)
417	05DF	stloc.1
418	05E0	ldsfld	float32[] GameInput::axisValues
419	05E5	ldc.i4.2
420	05E6	ldloc.1
421	05E7	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
422	05EC	stelem.r4
423	05ED	ldsfld	float32[] GameInput::axisValues
424	05F2	ldc.i4.3
425	05F3	ldloc.1
426	05F4	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
427	05F9	stelem.r4
428	05FA	ldloc.2
429	05FB	ldc.r4	0,2
430	0600	ldc.r4	1
431	0605	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 GameInput::Resample(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2, float32, float32)
432	060A	stloc.2
433	060B	ldsfld	float32[] GameInput::axisValues
434	0610	ldc.i4.0
435	0611	ldloc.2
436	0612	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
437	0617	stelem.r4
438	0618	ldsfld	float32[] GameInput::axisValues
439	061D	ldc.i4.1
440	061E	ldloc.2
441	061F	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
442	0624	stelem.r4
443	0625	ldsfld	float32[] GameInput::axisValues
444	062A	ldc.i4.4
445	062B	ldloc.3
446	062C	ldc.r4	0,001
447	0631	ldc.r4	1
448	0636	call	float32 GameInput::Resample(float32, float32, float32)
449	063B	stelem.r4
450	063C	ldsfld	float32[] GameInput::axisValues
451	0641	ldc.i4.5
452	0642	ldloc.s	num2 (4)
453	0644	ldc.r4	0,001
454	0649	ldc.r4	1
455	064E	call	float32 GameInput::Resample(float32, float32, float32)
456	0653	stelem.r4
457	0654	ldsfld	float32[] GameInput::axisValues
458	0659	ldc.i4.6
459	065A	ldloc.s	num3 (5)
460	065C	ldc.r4	0,001
461	0661	ldc.r4	1
462	0666	call	float32 GameInput::Resample(float32, float32, float32)
463	066B	stelem.r4
464	066C	ldsfld	float32[] GameInput::axisValues
465	0671	ldc.i4.7
466	0672	ldloc.s	num4 (6)
467	0674	ldc.r4	0,001
468	0679	ldc.r4	1
469	067E	call	float32 GameInput::Resample(float32, float32, float32)
470	0683	stelem.r4
471	0684	ldarg.1
472	0685	brfalse.s	488 (06BC) ldc.i4.0 
473	0687	ldsfld	float32[] GameInput::axisValues
474	068C	ldc.i4.s	10
475	068E	ldstr	"Mouse ScrollWheel"
476	0693	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
477	0698	stelem.r4
478	0699	ldsfld	float32[] GameInput::axisValues
479	069E	ldc.i4.8
480	069F	ldstr	"Mouse X"
481	06A4	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxisRaw(string)
482	06A9	stelem.r4
483	06AA	ldsfld	float32[] GameInput::axisValues
484	06AF	ldc.i4.s	9
485	06B1	ldstr	"Mouse Y"
486	06B6	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxisRaw(string)
487	06BB	stelem.r4
488	06BC	ldc.i4.0
489	06BD	stloc.s	j (14)
490	06BF	br.s	531 (0729) ldloc.s j (14)
491	06C1	ldloc.s	j (14)
492	06C3	stloc.s	analogAxis (15)
493	06C5	ldarg.0
494	06C6	ldloc.s	analogAxis (15)
495	06C8	call	instance valuetype GameInput/Device GameInput::GetDeviceForAxis(valuetype GameInput/AnalogAxis)
496	06CD	stloc.s	deviceForAxis (16)
497	06CF	ldsfld	float32[] GameInput::lastAxisValues
498	06D4	ldloc.s	j (14)
499	06D6	ldelem.r4
500	06D7	ldsfld	float32[] GameInput::axisValues
501	06DC	ldloc.s	j (14)
502	06DE	ldelem.r4
503	06DF	sub
504	06E0	stloc.s	num5 (17)
505	06E2	ldsfld	float32[] GameInput::lastAxisValues
506	06E7	ldloc.s	j (14)
507	06E9	ldsfld	float32[] GameInput::axisValues
508	06EE	ldloc.s	j (14)
509	06F0	ldelem.r4
510	06F1	stelem.r4
511	06F2	ldloc.s	deviceForAxis (16)
512	06F4	ldsfld	valuetype GameInput/Device GameInput::lastDevice
513	06F9	beq.s	527 (0723) ldloc.s j (14)
514	06FB	ldc.r4	0,1
515	0700	stloc.s	num6 (18)
516	0702	ldloc.s	num5 (17)
517	0704	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Abs(float32)
518	0709	ldloc.s	num6 (18)
519	070B	ble.un.s	523 (0716) ldsfld float32[] GameInput::axisValues
520	070D	ldloc.s	deviceForAxis (16)
521	070F	stsfld	valuetype GameInput/Device GameInput::lastDevice
522	0714	br.s	527 (0723) ldloc.s j (14)
523	0716	ldsfld	float32[] GameInput::axisValues
524	071B	ldloc.s	j (14)
525	071D	ldc.r4	0
526	0722	stelem.r4
527	0723	ldloc.s	j (14)
528	0725	ldc.i4.1
529	0726	add
530	0727	stloc.s	j (14)
531	0729	ldloc.s	j (14)
532	072B	ldsfld	float32[] GameInput::axisValues
533	0730	ldlen
534	0731	conv.i4
535	0732	blt.s	491 (06C1) ldloc.s j (14)
536	0734	ret
