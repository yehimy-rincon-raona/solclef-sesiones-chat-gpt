# Prompts de Uso — CU03: Búsqueda de Alarmas de Fabricante

## Variante A — Búsqueda completa (uso estándar · prompt optimizado)

```
**Equipo:** Inversor SMA Sunny Tripower 25000TL-30 · INV-P07-12 · Planta P-07 Almería (4,8 MWp) · Firmware 3.10.24.R (oct. 2024)

**Alarma:** Código 3501 — "Grid Fault: Frequency too high" · 7 eventos en 5 días · siempre entre 13:00–15:30 · duración 4–9 min · recuperación automática

**Contexto:** Red entre 49,95–50,04 Hz · frecuencia máxima configurada en inversor: 50,20 Hz (fábrica) · solo este inversor afectado (los otros 11 no tienen la alarma) · 4.200 h de operación · sin cambios de configuración en 6 meses · conexiones AC/DC sin anomalías · temperatura 58–63 °C (normal)

¿Existe boletín técnico de SMA o actualización de firmware para el código 3501 en este modelo? ¿Hay procedimiento oficial? ¿Se debe escalar al fabricante?
```

**Cuándo usar:** Primera investigación de una alarma. Devuelve el análisis completo con diagnóstico, fuentes y veredicto.

---

## Variante B — Solo boletines y firmware

```
Usando el skill inverter-alarm-research, busca únicamente boletines técnicos
y actualizaciones de firmware para el código 3501 en SMA Sunny Tripower 25000TL-30.
Muestra solo la sección de boletines/firmware y las fuentes consultadas.
```

**Cuándo usar:** Ya tienes el diagnóstico y solo necesitas verificar si hay firmware nuevo.

---

## Variante C — Ampliar búsqueda a normativa de red

```
El skill inverter-alarm-research detectó una posible alarma de frecuencia de red (código 3501).
Amplía la búsqueda para incluir:
- Normativa española vigente sobre límites de frecuencia para vertido a red (RD 647/2020 o posterior)
- Requisitos de ajuste de parámetros de frecuencia según el operador de red (REE)
Cita fuentes oficiales del BOE o de REE.
```

**Cuándo usar:** La alarma está relacionada con parámetros de red y el técnico necesita contexto normativo.

---

## Variante D — Comparar con otros fabricantes

```
Para una alarma de Grid Fault en un inversor de 25 kW, busca si fabricantes como Fronius,
Huawei o ABB tienen procedimientos similares documentados.
Úsalo para comparar si el comportamiento es estándar del sector o específico del equipo SMA.
```

**Cuándo usar:** Investigación más amplia cuando el equipo sospecha que el problema puede ser del sitio (red) y no del inversor.

---

## Tabla de variantes

| Variante | Caso de uso | Output | Tiempo estimado |
|----------|-------------|--------|-----------------|
| A — Búsqueda completa | Primera investigación de la alarma | Análisis + diagnóstico + veredicto | 2–3 min |
| B — Solo firmware | Verificación rápida de actualización | Solo boletines y fuentes | 1 min |
| C — Normativa de red | Alarma de parámetros de red/frecuencia | Informe + normativa citada | 3–4 min |
| D — Comparativa de fabricantes | Diagnóstico de causa raíz | Tabla comparativa + conclusión | 4–5 min |
