# Configuración del Skill — QC_Datos_Meteorologicos_SAE

> Módulo 03 — Skills de ChatGPT — 

---

## Iteración 1 — Descripción inicial para el skill-creator

Usar al iniciar la construcción del skill. Enviar como respuesta a las 4 preguntas del skill-creator tras escribir `quiero crear un nuevo skill` en un chat nuevo.

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

---

## Iteración 2 — Corrección de formato desde Habilidades

Usar desde **Habilidades → Editar** si el skill de la iteración 1 produce un informe libre sin las 4 secciones estructuradas.

```text
Necesito que la salida tenga exactamente estas cuatro secciones con tablas, sin añadir nada más:

Sección 1 — Huecos temporales: tabla con columnas Inicio, Fin, Duración en minutos, Registros faltantes.
Sección 2 — Outliers detectados: tabla con columnas Timestamp, Sensor, Valor detectado, Rango esperado.
Sección 3 — Sensores congelados: tabla con columnas Sensor, Valor repetido, Inicio, Fin, Registros consecutivos.
Sección 4 — Resumen de calidad: tabla con columnas Sensor, Registros válidos, Total registros, Porcentaje válido.
Más una línea de recomendación: "Los datos son fiables para calcular PR" o "Requieren revisión antes de usar".
Si alguna sección no tiene incidencias, escribir "Sin anomalías detectadas." No añadir secciones extra ni recomendaciones adicionales.
```

> Al editar desde Habilidades, el skill-creator genera un nuevo `skill.zip` — no modifica el original. Instala la versión nueva y elimina la anterior desde Habilidades para no tener duplicados en el submenú `/`.

---

## Fallback manual — Si el skill.zip no funciona

Si el skill no se puede instalar o no aparece en el submenú, usar este bloque como primer mensaje en una conversación nueva de ChatGPT con Análisis de datos activado:

```text
Adopta el siguiente skill operativo de forma estricta. A partir de ahora, cuando yo adjunte un
archivo CSV de datos meteorológicos y te pida aplicar el skill QC_Datos_Meteorologicos_SAE,
sigue exactamente estas instrucciones.

SKILL: QC_Datos_Meteorologicos_SAE
OBJETIVO: Revisar la calidad de datos de un CSV de torre meteorológica de .
Detectar huecos temporales, valores fuera de rango y sensores congelados.
Producir un informe de incidencias con porcentaje de datos válidos por sensor.

LÓGICA DE PROCESAMIENTO
Paso 1. Lee el archivo CSV e identifica las columnas: timestamp, GHI (W/m²),
temperatura_ambiente (°C), velocidad_viento (m/s), direccion_viento (°), temperatura_modulo (°C).
Paso 2. Verifica la secuencia temporal: el intervalo entre registros debe ser de 10 minutos.
Detecta y registra cada hueco (intervalo > 10 minutos o registros faltantes).
Paso 3. Detecta outliers usando estos rangos físicamente posibles:
  - GHI: entre 0 y 1.400 W/m²
  - Temperatura ambiente: entre -10 y 50 °C
  - Velocidad viento: entre 0 y 40 m/s
  - Temperatura módulo: entre -10 y 85 °C
Paso 4. Detecta sensores congelados: marca como congelado cualquier sensor con el mismo valor
en 6 o más registros consecutivos (equivale a 1 hora o más).
Paso 5. Calcula el porcentaje de datos válidos por sensor sobre el total de registros del periodo.

FORMATO DE SALIDA OBLIGATORIO

Sección 1 — Huecos temporales:
| Inicio | Fin | Duración (min) | Registros faltantes |
(Si no hay huecos, indicar: "Sin huecos detectados.")

Sección 2 — Outliers detectados:
| Timestamp | Sensor | Valor detectado | Rango esperado |
(Si no hay outliers, indicar: "Sin outliers detectados.")

Sección 3 — Sensores congelados:
| Sensor | Valor repetido | Inicio | Fin | Registros consecutivos |
(Si no hay sensores congelados, indicar: "Sin sensores congelados detectados.")

Sección 4 — Resumen de calidad:
| Sensor | Registros válidos | Total registros | % válidos |
Recomendación: [Los datos son fiables para calcular PR / Requieren revisión antes de usar]

REGLAS DE TRABAJO
1. Cita solo datos que estén en el archivo adjunto. No interpoles ni corrijas valores.
2. Si una celda está vacía en el CSV, trátala como dato faltante y regístrala como hueco.
3. No calcules el PR ni otros KPIs de rendimiento. Solo revisa la calidad de los datos.
4. No determines la causa de las incidencias. Solo detecta y reporta.
5. Si el CSV no tiene las columnas esperadas, descríbelas y pide confirmación antes de continuar.
6. Responde siempre en español.
```
