# Prompts de Uso — CU04: Análisis Termográfico con Visión

## Prompt 1 — Creación del skill (para @skill-creator)

```
Quiero un skill que analice imágenes térmicas de paneles solares tomadas con dron.
Le paso una imagen o un PDF con la imagen dentro y me dice qué anomalía térmica ve,
qué tan grave es y qué debe hacer el equipo de mantenimiento.
El formato de salida está definido en el archivo template-informe-termografico.md
que adjuntaré al editar el skill.
```

**Cuándo usar:** Al crear el skill por primera vez con @skill-creator. Adjuntar `insumos/template-informe-termografico.md` en el paso de edición posterior a la creación.

---

## Prompt 2 — Prueba con imagen (prompt de análisis)

Adjuntar `insumos/thermal-image.png` y pegar este prompt en un chat nuevo con el skill activado:

```
Planta P-07 — Almería Sur (4,8 MWp) · Inspección con dron · 19 de junio de 2026 · 13:42 h
Fila 4, string S-04 · Inversor asociado: INV-P07-08

Analiza esta imagen térmica e indica qué anomalía detectas, qué tan grave es
y qué debe hacer el equipo de mantenimiento.
```

**Resultado esperado:** Informe con las 6 secciones del template y veredicto CORRECTIVO URGENTE.

---

## Prompt 3 — Corrección de formato

Usar en el mismo chat si la respuesta del skill no sigue las secciones del template:

```
Reformatea tu respuesta usando exactamente estas secciones en este orden:
1. Resumen de la observación
2. Anomalía térmica detectada (tabla con: tipo, ubicación, temperatura zona afectada,
   temperatura paneles sanos, ΔT, módulos afectados)
3. Evidencia visual utilizada
4. Diagnóstico diferencial
5. Evaluación de riesgo (tabla con: criticidad, riesgo de pérdida energética,
   riesgo de seguridad, prioridad de intervención, responsable sugerido)
6. Acción recomendada para O&M
Veredicto final en mayúsculas: CORRECTIVO URGENTE, MANTENIMIENTO PREVENTIVO PROGRAMADO
o MONITORIZAR EN PRÓXIMA INSPECCIÓN, con justificación de 1-2 frases.
```

**Cuándo usar:** Cuando la primera respuesta del skill usa sus propios nombres de sección o no incluye las tablas estructuradas y el veredicto en mayúsculas.

---

## Tabla de prompts

| Prompt | Cuándo usar | Tiempo estimado |
|--------|-------------|-----------------|
| 1 — Creación | Una sola vez, al crear el skill con @skill-creator | 2–3 min |
| 2 — Prueba | Cada vez que se analiza una imagen térmica con el skill | 30 seg |
| 3 — Corrección | Cuando el formato de la respuesta no sigue el template | 15 seg |
