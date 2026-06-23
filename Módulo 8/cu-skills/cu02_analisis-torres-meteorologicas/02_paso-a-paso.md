# CU02 — Paso a paso — Skill de QC de Datos Meteorológicos SAE

> Módulo 03 — Skills de ChatGPT — 

---

## Archivos necesarios

| Archivo | Uso |
|---------|-----|
| `insumos/csv-torre-meteorologica-ficticio.md` | Se adjunta en el chat para que el skill lo procese |
| `configuracion/instrucciones-skill.md` | Descripción del skill para el @skill-creator e instrucciones de fallback |
| `prompts/prompts-de-uso.md` | Prompts listos para invocar el skill y probar variantes |

---

## Flujo de construcción del skill

### Paso 1 — Iniciar la creación del skill

1. Ve a ChatGPT e inicia una conversación nueva.
2. Escribe: `quiero crear un nuevo skill`
3. El skill-creator responderá pidiendo 4 datos: tarea, input, output y fuentes o conectores.

---

### Paso 2 — Describir el skill en lenguaje natural

Responde con este texto:

```text
Quiero un skill que revise la calidad de los datos de una torre meteorológica de una planta solar.
Le voy a pasar un CSV con columnas de timestamp, irradiancia GHI en W/m², temperatura ambiente
en °C, velocidad del viento en m/s, dirección del viento en grados y temperatura del módulo en °C.

El skill tiene que detectar tres cosas: primero, si hay huecos en la serie temporal, o sea, si
falta algún registro o si entre dos registros hay más de 10 minutos de diferencia. Segundo, si
algún sensor tiene un valor que no tiene sentido físicamente, por ejemplo una irradiancia de
2000 W/m² o una temperatura de 200 °C. Y tercero, si algún sensor está "congelado", es decir,
reportando exactamente el mismo valor durante una hora o más seguida.

Al final quiero que me dé un informe con una tabla para cada tipo de problema y un resumen con
el porcentaje de datos válidos por sensor, más una conclusión de si los datos son fiables o
necesitan revisión antes de usarlos.
```

El skill-creator genera un `skill.zip`. Descárgalo.

---

### Paso 3 — Instalar el skill

1. En ChatGPT, ve a **Habilidades** y sube el `skill.zip` descargado.
2. Verifica la instalación: escribe `/` y comprueba que el skill aparece en el submenú.

---

### Paso 4 — Invocar el skill y adjuntar el CSV

1. Escribe `/` y selecciona el skill del submenú.
2. Adjunta `insumos/csv-torre-meteorologica-ficticio.md`.
3. Envía este prompt:

```text
Analiza el archivo adjunto. Son datos de la Torre T-07, planta P-07, mayo 2026.
```

---

### Paso 5 — Validar el resultado

Comprueba que el informe incluya exactamente estas 4 secciones:

| Sección | Qué debe contener |
|---------|------------------|
| Sección 1 — Huecos temporales | Tabla: Inicio · Fin · Duración en minutos · Registros faltantes |
| Sección 2 — Outliers detectados | Tabla: Timestamp · Sensor · Valor detectado · Rango esperado |
| Sección 3 — Sensores congelados | Tabla: Sensor · Valor repetido · Inicio · Fin · Registros consecutivos |
| Sección 4 — Resumen de calidad | Tabla: % válidos por sensor + recomendación de uso |

Contrasta con el **Resultado de referencia** al final de este documento.

---

### Paso 2b — Si el output no tiene el formato correcto

El skill-creator puede generar un skill que detecta bien las anomalías pero produce un informe libre sin las 4 secciones estructuradas. Esto es normal en la primera iteración. Si ocurre:

1. Ve a **Habilidades** → selecciona el skill → **Editar**.
2. Escribe la corrección en lenguaje natural:

```text
Necesito que la salida tenga exactamente estas cuatro secciones con tablas, sin añadir nada más:

Sección 1 — Huecos temporales: tabla con columnas Inicio, Fin, Duración en minutos, Registros faltantes.
Sección 2 — Outliers detectados: tabla con columnas Timestamp, Sensor, Valor detectado, Rango esperado.
Sección 3 — Sensores congelados: tabla con columnas Sensor, Valor repetido, Inicio, Fin, Registros consecutivos.
Sección 4 — Resumen de calidad: tabla con columnas Sensor, Registros válidos, Total registros, Porcentaje válido.
Más una línea de recomendación: "Los datos son fiables para calcular PR" o "Requieren revisión antes de usar".
Si alguna sección no tiene incidencias, escribir "Sin anomalías detectadas." No añadir secciones extra ni recomendaciones adicionales.
```

3. El skill-creator genera un nuevo `skill.zip`. Descárgalo e instálalo.
4. Elimina la versión anterior desde **Habilidades** para no tener dos skills duplicados en el submenú.
5. Repite el Paso 4 con el skill actualizado.

> **Nota:** construir un skill es un proceso iterativo. La primera versión suele detectar bien las anomalías; las siguientes afinan el formato del output. Cada iteración enseña a leer el resultado críticamente y a saber pedir exactamente lo que se necesita.

---

## Banco de respuestas — Preguntas adicionales del skill-creator

| Pregunta probable | Respuesta preparada |
|-------------------|---------------------|
| ¿Con qué frecuencia se recogen los datos? | Cada 10 minutos. Un intervalo mayor a 10 minutos entre dos registros consecutivos es un hueco. |
| ¿Qué rangos físicos deben tener los sensores? | GHI: 0–1400 W/m². Temperatura ambiente: -10 a 50 °C. Velocidad viento: 0–40 m/s. Temperatura módulo: -10 a 85 °C. |
| ¿Cuántos registros consecutivos con el mismo valor para considerar sensor congelado? | 6 o más registros consecutivos (equivale a 1 hora o más con datos cada 10 minutos). |
| ¿Quieres alertas de severidad (alta/media/baja)? | No es necesario. Solo detectar y reportar. |
| ¿El informe debe estar en algún idioma específico? | En español. |
| ¿El CSV tiene encabezado? | Sí, la primera fila contiene los nombres de las columnas. |
| ¿Qué hacer si el CSV no tiene las columnas esperadas? | Describir las columnas que encuentra y pedir confirmación antes de continuar. |
| ¿Quieres que el skill corrija o impute valores faltantes? | No. Solo detectar y reportar. No corregir ni interpolar. |
| ¿Necesitas conectores externos o fuentes adicionales? | No. Solo archivos CSV subidos al chat. |

---

## Resultado de referencia — Anomalías que el skill debe detectar

| Anomalía | Tipo | Detección esperada |
|----------|------|--------------------|
| 2026-05-02 · 07:00 → 08:30 | Hueco temporal | 90 minutos · 8 registros faltantes |
| 2026-05-01 · 16:30 · GHI = 1875 W/m² | Outlier físico | Supera el máximo de 1400 W/m² |
| 2026-05-03 · velocidad_viento = 4.1 · 73 registros | Sensor congelado | Mismo valor durante todo el día (06:00–18:00) |
| 2026-05-03 · direccion_viento = 225° · 73 registros | Sensor congelado | Mismo valor durante todo el día (06:00–18:00) |

**Anomalías que el skill NO detecta con esta configuración:**

Los valores GHI = 86 W/m² (2026-05-03 09:30) y GHI = 97 W/m² (2026-05-04 11:20) son outliers contextuales —anómalamente bajos para hora de máxima irradiancia— pero están dentro del rango físico (0–1400 W/m²). El skill solo revisa rangos físicos, no plausibilidad contextual. Son un buen punto de debate sobre los límites del control de calidad por rango.

---

## Errores frecuentes

| Síntoma | Causa | Cómo resolverlo |
|---------|-------|-----------------|
| El output es un informe libre sin las 4 secciones | El skill-creator no incluyó el formato obligatorio en la primera iteración | Seguir el Paso 2b — editar el skill y especificar el formato exacto |
| La Sección 1 incluye los silencios nocturnos (18:00 → 06:00 del día siguiente) como huecos | El skill no distingue entre silencio nocturno y hueco real | Comportamiento esperado en esta versión — señalarlo como punto de iteración futura si la planta necesita excluirlos |
| El % válidos de velocidad_viento es 100% aunque el sensor está congelado | Los valores 4.1 están dentro del rango físico — el % válidos mide rango, no calidad | Punto de aprendizaje: sensor congelado y % válidos son cheques independientes |
| El skill no aparece en el submenú `/` | La instalación no se completó | Repetir el Paso 3 desde Habilidades |
| Hay dos skills del mismo tipo en el submenú | Al editar desde Habilidades se crea una copia nueva, no se modifica el original | Ir a Habilidades y eliminar la versión anterior |
