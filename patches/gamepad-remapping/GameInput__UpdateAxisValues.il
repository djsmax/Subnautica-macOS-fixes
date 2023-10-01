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
17	001F	brfalse	363 (053E) ldarg.1 
18	0024	call	bool GameInput::GetUseOculusInputManager()
19	0029	brfalse	91 (011D) call valuetype GameInput/ControllerLayout GameInput::GetControllerLayout()
20	002E	ldc.i4.1
21	002F	ldc.i4	-0x80000000
22	0034	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis2D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
23	0039	stloc.s	vector (7)
24	003B	ldloca.s	vector2 (1)
25	003D	ldloc.s	vector (7)
26	003F	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
27	0044	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
28	0049	ldloca.s	vector2 (1)
29	004B	ldloc.s	vector (7)
30	004D	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
31	0052	neg
32	0053	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
33	0058	ldc.i4.2
34	0059	ldc.i4	-0x80000000
35	005E	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 ['Assembly-CSharp-firstpass']OVRInput::Get(valuetype ['Assembly-CSharp-firstpass']OVRInput/RawAxis2D, valuetype ['Assembly-CSharp-firstpass']OVRInput/Controller)
36	0063	stloc.s	vector3 (8)
37	0065	ldloca.s	vector4 (2)
38	0067	ldloc.s	vector3 (8)
39	0069	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
40	006E	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
41	0073	ldloca.s	vector4 (2)
42	0075	ldloc.s	vector3 (8)
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
85	0109	brfalse	305 (0489) ldloc.1 
86	010E	ldloc.s	num4 (6)
87	0110	ldc.r4	1
88	0115	add
89	0116	stloc.s	num4 (6)
90	0118	br	305 (0489) ldloc.1 
91	011D	call	valuetype GameInput/ControllerLayout GameInput::GetControllerLayout()
92	0122	stloc.s	controllerLayout (9)
93	0124	ldloc.s	controllerLayout (9)
94	0126	ldc.i4.1
95	0127	sub
96	0128	switch	[98 (014A), 128 (01C3), 158 (023C), 195 (02CC), 229 (0359), 262 (03E5)]
97	0145	br	299 (0472) ldstr "{0} ControllerLayout support is not implemented!"
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
122	01AF	stloc.s	num3 (5)
123	01B1	ldstr	"ControllerAxis8"
124	01B6	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
125	01BB	neg
126	01BC	stloc.s	num4 (6)
127	01BE	br	305 (0489) ldloc.1 
128	01C3	ldloca.s	vector2 (1)
129	01C5	ldstr	"ControllerAxis1"
130	01CA	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
131	01CF	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
132	01D4	ldloca.s	vector2 (1)
133	01D6	ldstr	"ControllerAxis2"
134	01DB	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
135	01E0	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
136	01E5	ldloca.s	vector4 (2)
137	01E7	ldstr	"ControllerAxis3"
138	01EC	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
139	01F1	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
140	01F6	ldloca.s	vector4 (2)
141	01F8	ldstr	"ControllerAxis4"
142	01FD	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
143	0202	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
144	0207	ldstr	"ControllerAxis5"
145	020C	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
146	0211	stloc.3
147	0212	ldstr	"ControllerAxis6"
148	0217	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
149	021C	stloc.s	num2 (4)
150	021E	ldstr	"ControllerAxis7"
151	0223	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
152	0228	stloc.s	num3 (5)
153	022A	ldstr	"ControllerAxis8"
154	022F	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
155	0234	neg
156	0235	stloc.s	num4 (6)
157	0237	br	305 (0489) ldloc.1 
158	023C	ldloca.s	vector2 (1)
159	023E	ldstr	"ControllerAxis1"
160	0243	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
161	0248	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
162	024D	ldloca.s	vector2 (1)
163	024F	ldstr	"ControllerAxis2"
164	0254	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
165	0259	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
166	025E	ldloca.s	vector4 (2)
167	0260	ldstr	"ControllerAxis3"
168	0265	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
169	026A	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
170	026F	ldloca.s	vector4 (2)
171	0271	ldstr	"ControllerAxis6"
172	0276	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
173	027B	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
174	0280	ldstr	"ControllerAxis4"
175	0285	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
176	028A	ldc.r4	0,5
177	028F	mul
178	0290	ldc.r4	0,5
179	0295	add
180	0296	stloc.3
181	0297	ldstr	"ControllerAxis5"
182	029C	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
183	02A1	ldc.r4	0,5
184	02A6	mul
185	02A7	ldc.r4	0,5
186	02AC	add
187	02AD	stloc.s	num2 (4)
188	02AF	ldstr	"ControllerAxis7"
189	02B4	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
190	02B9	stloc.s	num3 (5)
191	02BB	ldstr	"ControllerAxis8"
192	02C0	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
193	02C5	stloc.s	num4 (6)
194	02C7	br	305 (0489) ldloc.1 
195	02CC	ldloca.s	vector2 (1)
196	02CE	ldstr	"ControllerAxis1"
197	02D3	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
198	02D8	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
199	02DD	ldloca.s	vector2 (1)
200	02DF	ldstr	"ControllerAxis2"
201	02E4	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
202	02E9	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
203	02EE	ldloca.s	vector4 (2)
204	02F0	ldstr	"ControllerAxis4"
205	02F5	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
206	02FA	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
207	02FF	ldloca.s	vector4 (2)
208	0301	ldstr	"ControllerAxis5"
209	0306	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
210	030B	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
211	0310	ldstr	"ControllerAxis3"
212	0315	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
213	031A	ldc.r4	0
214	031F	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Max(float32, float32)
215	0324	stloc.3
216	0325	ldstr	"ControllerAxis3"
217	032A	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
218	032F	neg
219	0330	ldc.r4	0
220	0335	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Max(float32, float32)
221	033A	stloc.s	num2 (4)
222	033C	ldstr	"ControllerAxis6"
223	0341	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
224	0346	stloc.s	num3 (5)
225	0348	ldstr	"ControllerAxis7"
226	034D	call	float32 [PlatformInputDefault]Platform.Utils.InputUtils::GetAxis(string)
227	0352	stloc.s	num4 (6)
228	0354	br	305 (0489) ldloc.1 
229	0359	ldloca.s	vector2 (1)
230	035B	ldstr	"ControllerAxis1"
231	0360	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
232	0365	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
233	036A	ldloca.s	vector2 (1)
234	036C	ldstr	"ControllerAxis2"
235	0371	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
236	0376	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
237	037B	ldloca.s	vector4 (2)
238	037D	ldstr	"ControllerAxis4"
239	0382	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
240	0387	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
241	038C	ldloca.s	vector4 (2)
242	038E	ldstr	"ControllerAxis5"
243	0393	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
244	0398	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
245	039D	ldstr	"ControllerAxis9"
246	03A2	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
247	03A7	ldc.r4	0
248	03AC	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Max(float32, float32)
249	03B1	stloc.3
250	03B2	ldstr	"ControllerAxis10"
251	03B7	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
252	03BC	ldc.r4	0
253	03C1	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Max(float32, float32)
254	03C6	stloc.s	num2 (4)
255	03C8	ldstr	"ControllerAxis6"
256	03CD	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
257	03D2	stloc.s	num3 (5)
258	03D4	ldstr	"ControllerAxis7"
259	03D9	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
260	03DE	stloc.s	num4 (6)
261	03E0	br	305 (0489) ldloc.1 
262	03E5	ldloca.s	vector2 (1)
263	03E7	ldstr	"ControllerAxis1"
264	03EC	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
265	03F1	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
266	03F6	ldloca.s	vector2 (1)
267	03F8	ldstr	"ControllerAxis2"
268	03FD	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
269	0402	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
270	0407	ldloca.s	vector4 (2)
271	0409	ldstr	"ControllerAxis3"
272	040E	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
273	0413	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
274	0418	ldloca.s	vector4 (2)
275	041A	ldstr	"ControllerAxis6"
276	041F	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
277	0424	stfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
278	0429	ldstr	"ControllerAxis4"
279	042E	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
280	0433	ldc.r4	0,5
281	0438	mul
282	0439	ldc.r4	0,5
283	043E	add
284	043F	stloc.3
285	0440	ldstr	"ControllerAxis5"
286	0445	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
287	044A	ldc.r4	0,5
288	044F	mul
289	0450	ldc.r4	0,5
290	0455	add
291	0456	stloc.s	num2 (4)
292	0458	ldstr	"ControllerAxis7"
293	045D	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
294	0462	stloc.s	num3 (5)
295	0464	ldstr	"ControllerAxis8"
296	0469	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
297	046E	stloc.s	num4 (6)
298	0470	br.s	305 (0489) ldloc.1 
299	0472	ldstr	"{0} ControllerLayout support is not implemented!"
300	0477	ldloc.s	controllerLayout (9)
301	0479	box	GameInput/ControllerLayout
302	047E	call	string [mscorlib]System.String::Format(string, object)
303	0483	newobj	instance void [mscorlib]System.NotImplementedException::.ctor(string)
304	0488	throw
305	0489	ldloc.1
306	048A	ldc.r4	0,2
307	048F	ldc.r4	1
308	0494	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 GameInput::Resample(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2, float32, float32)
309	0499	stloc.1
310	049A	ldsfld	float32[] GameInput::axisValues
311	049F	ldc.i4.2
312	04A0	ldloc.1
313	04A1	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
314	04A6	stelem.r4
315	04A7	ldsfld	float32[] GameInput::axisValues
316	04AC	ldc.i4.3
317	04AD	ldloc.1
318	04AE	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
319	04B3	stelem.r4
320	04B4	ldloc.2
321	04B5	ldc.r4	0,2
322	04BA	ldc.r4	1
323	04BF	call	valuetype [UnityEngine.CoreModule]UnityEngine.Vector2 GameInput::Resample(valuetype [UnityEngine.CoreModule]UnityEngine.Vector2, float32, float32)
324	04C4	stloc.2
325	04C5	ldsfld	float32[] GameInput::axisValues
326	04CA	ldc.i4.0
327	04CB	ldloc.2
328	04CC	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::x
329	04D1	stelem.r4
330	04D2	ldsfld	float32[] GameInput::axisValues
331	04D7	ldc.i4.1
332	04D8	ldloc.2
333	04D9	ldfld	float32 [UnityEngine.CoreModule]UnityEngine.Vector2::y
334	04DE	stelem.r4
335	04DF	ldsfld	float32[] GameInput::axisValues
336	04E4	ldc.i4.4
337	04E5	ldloc.3
338	04E6	ldc.r4	0,001
339	04EB	ldc.r4	1
340	04F0	call	float32 GameInput::Resample(float32, float32, float32)
341	04F5	stelem.r4
342	04F6	ldsfld	float32[] GameInput::axisValues
343	04FB	ldc.i4.5
344	04FC	ldloc.s	num2 (4)
345	04FE	ldc.r4	0,001
346	0503	ldc.r4	1
347	0508	call	float32 GameInput::Resample(float32, float32, float32)
348	050D	stelem.r4
349	050E	ldsfld	float32[] GameInput::axisValues
350	0513	ldc.i4.6
351	0514	ldloc.s	num3 (5)
352	0516	ldc.r4	0,001
353	051B	ldc.r4	1
354	0520	call	float32 GameInput::Resample(float32, float32, float32)
355	0525	stelem.r4
356	0526	ldsfld	float32[] GameInput::axisValues
357	052B	ldc.i4.7
358	052C	ldloc.s	num4 (6)
359	052E	ldc.r4	0,001
360	0533	ldc.r4	1
361	0538	call	float32 GameInput::Resample(float32, float32, float32)
362	053D	stelem.r4
363	053E	ldarg.1
364	053F	brfalse.s	380 (0576) ldc.i4.0 
365	0541	ldsfld	float32[] GameInput::axisValues
366	0546	ldc.i4.s	10
367	0548	ldstr	"Mouse ScrollWheel"
368	054D	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxis(string)
369	0552	stelem.r4
370	0553	ldsfld	float32[] GameInput::axisValues
371	0558	ldc.i4.8
372	0559	ldstr	"Mouse X"
373	055E	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxisRaw(string)
374	0563	stelem.r4
375	0564	ldsfld	float32[] GameInput::axisValues
376	0569	ldc.i4.s	9
377	056B	ldstr	"Mouse Y"
378	0570	call	float32 [UnityEngine.InputLegacyModule]UnityEngine.Input::GetAxisRaw(string)
379	0575	stelem.r4
380	0576	ldc.i4.0
381	0577	stloc.s	j (10)
382	0579	br.s	423 (05E3) ldloc.s j (10)
383	057B	ldloc.s	j (10)
384	057D	stloc.s	analogAxis (11)
385	057F	ldarg.0
386	0580	ldloc.s	analogAxis (11)
387	0582	call	instance valuetype GameInput/Device GameInput::GetDeviceForAxis(valuetype GameInput/AnalogAxis)
388	0587	stloc.s	deviceForAxis (12)
389	0589	ldsfld	float32[] GameInput::lastAxisValues
390	058E	ldloc.s	j (10)
391	0590	ldelem.r4
392	0591	ldsfld	float32[] GameInput::axisValues
393	0596	ldloc.s	j (10)
394	0598	ldelem.r4
395	0599	sub
396	059A	stloc.s	num5 (13)
397	059C	ldsfld	float32[] GameInput::lastAxisValues
398	05A1	ldloc.s	j (10)
399	05A3	ldsfld	float32[] GameInput::axisValues
400	05A8	ldloc.s	j (10)
401	05AA	ldelem.r4
402	05AB	stelem.r4
403	05AC	ldloc.s	deviceForAxis (12)
404	05AE	ldsfld	valuetype GameInput/Device GameInput::lastDevice
405	05B3	beq.s	419 (05DD) ldloc.s j (10)
406	05B5	ldc.r4	0,1
407	05BA	stloc.s	num6 (14)
408	05BC	ldloc.s	num5 (13)
409	05BE	call	float32 [UnityEngine.CoreModule]UnityEngine.Mathf::Abs(float32)
410	05C3	ldloc.s	num6 (14)
411	05C5	ble.un.s	415 (05D0) ldsfld float32[] GameInput::axisValues
412	05C7	ldloc.s	deviceForAxis (12)
413	05C9	stsfld	valuetype GameInput/Device GameInput::lastDevice
414	05CE	br.s	419 (05DD) ldloc.s j (10)
415	05D0	ldsfld	float32[] GameInput::axisValues
416	05D5	ldloc.s	j (10)
417	05D7	ldc.r4	0
418	05DC	stelem.r4
419	05DD	ldloc.s	j (10)
420	05DF	ldc.i4.1
421	05E0	add
422	05E1	stloc.s	j (10)
423	05E3	ldloc.s	j (10)
424	05E5	ldsfld	float32[] GameInput::axisValues
425	05EA	ldlen
426	05EB	conv.i4
427	05EC	blt.s	383 (057B) ldloc.s j (10)
428	05EE	ret
