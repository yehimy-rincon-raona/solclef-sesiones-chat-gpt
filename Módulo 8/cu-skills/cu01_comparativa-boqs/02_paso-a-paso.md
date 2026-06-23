# CU01 — Paso a paso — Construcción del Skill de Revisión de BOQs SAE

> Módulo 03 — Skills de ChatGPT — 

---

## Archivos necesarios

| Archivo | Uso |
|---------|-----|
| `insumos/boq-oferta-ficticia-sae.md` | BOQ ficticio para la prueba del skill — se adjunta en el chat |
| `prompts/prompts-de-uso.md` | Prompts listos para invocar el skill y probar variantes |

---

## Flujo de ejecución

### Paso 1 — Acceder a ChatGPT

1. Ve a chatgpt.com e inicia sesión (cuenta Plus, Teams o Enterprise).
2. Inicia una conversación nueva.
3. Confirma que el ícono de adjuntar archivo está disponible en la barra de entrada.

---

### Paso 2 — Activar el Skill Creator

1. En el campo de texto escribe `/` — aparece un submenú con herramientas disponibles.
2. Selecciona **@skill-creator** del submenú.
3. Escribe en lenguaje natural qué debe hacer el skill. Usa este texto:

```text
Quiero un skill que me ayude a revisar las ofertas de licitación que recibimos de los proveedores para trabajos en nuestras plantas solares. Normalmente recibimos un archivo Excel con una lista de partidas y los precios de cada proveedor en columnas separadas. Necesito que detecte automáticamente cuando algún proveedor ha puesto precio 0, ha omitido una partida, o cuando hay una diferencia de precio muy grande entre proveedores para la misma partida. Al final quiero una tabla con todas las alertas ordenadas por gravedad y un resumen que me diga cuántos problemas tiene cada proveedor, para saber qué hay que aclarar antes de decidir a quién adjudicar el trabajo.
```

---

### Paso 3 — Responder las preguntas del Skill Creator

El @skill-creator hace preguntas para cerrar los criterios operativos del skill. Respóndelas en este orden:

**Pregunta 1 — Formato del Excel:**

```text
Sí, la estructura suele ser siempre similar. El archivo tiene una columna con el código de partida, otra con la descripción, una con la unidad de medida, una con la cantidad, y luego una columna por proveedor con el precio unitario de cada uno. Los encabezados de esas columnas de precio son los nombres o identificadores de los proveedores.
```

> 💡 En este punto puedes adjuntar un archivo Excel de ejemplo para que el @skill-creator entienda exactamente la estructura antes de construir el skill.

**Pregunta 2 — Umbrales y salida:**

```text
Confirmo los criterios por defecto con un ajuste en el umbral:
- Crítica: precio 0 o celda vacía.
- Alta: el precio de un proveedor se desvía más del 30% respecto a la mediana de los demás proveedores en esa partida.
- Media: la diferencia entre el precio mínimo y máximo de la partida supera el 50%.

Para la salida, quiero primero la tabla de alertas ordenada por gravedad y el resumen por proveedor. El Excel de salida con pestañas lo incluyes también si es posible sin complicar el skill.
```

> **Nota:** El @skill-creator puede hacer las preguntas en distintos turnos o agruparlas de formas diferentes según la conversación. Si aparece una pregunta no listada aquí, consulta el **Banco de respuestas** al final de este documento.

---

### Paso 4 — Descargar e instalar el skill

ChatGPT genera el skill como **skill.zip** y ofrece un enlace de descarga. El skill queda nombrado automáticamente (en este ejercicio: **solar-tender-review**) con una descripción de cuándo usarlo.

1. Descarga el archivo `skill.zip` desde el enlace que aparece en el chat.
2. Instálalo siguiendo el proceso que indica ChatGPT.

---

### Paso 5 — Verificar que el skill está instalado

1. En una conversación nueva, escribe `/` en el campo de texto.
2. Comprueba que **solar-tender-review** aparece en el submenú.

Si el skill no aparece, repite la instalación desde el paso 4.

---

### Paso 6 — Ejecutar el análisis con el BOQ de prueba

1. Escribe `/` y selecciona **@solar-tender-review** del submenú, o escríbelo directamente en el chat.
2. Adjunta el archivo `insumos/boq-oferta-ficticia-sae.md`.
3. Envía este prompt:

```text
Analiza las ofertas de los tres licitadores — Electrosolar Ibérica, SunTech Instalaciones y Renovables del Sur — y devuelve la tabla de alertas completa ordenada por gravedad, seguida del resumen por proveedor y la lista de partidas que requieren aclaración.
```

> **Señal de confirmación:** antes de ejecutar, ChatGPT muestra debajo del campo de texto su interpretación del skill — cómo va a tratar los precios 0 y las desviaciones. Si ese texto no aparece o no menciona los criterios de alerta, el skill no se activó correctamente. Vuelve al paso 5.

---

### Paso 7 — Validar el resultado

Comprueba que la respuesta incluya:

- Tabla de alertas con columnas: Gravedad · Licitador · Código · Partida / condición · Evidencia.
- Filas ordenadas: Crítica → Alta → Media → Baja.
- Resumen por proveedor con total ofertado y evaluación preliminar.
- Lista numerada de partidas que requieren aclaración antes de adjudicar.

**Resultado de referencia (prueba con el BOQ ficticio P-07):**

| Verificación | Resultado esperado |
|---|---|
| Anomalías críticas sembradas detectadas | 7 de 7 ✓ |
| Licitador con más alertas críticas | SunTech Instalaciones |
| Licitador más consistente técnicamente | Electrosolar Ibérica |
| Oferta más baja con mayor riesgo | SunTech Instalaciones — 47.960 € |
| Total partidas que requieren aclaración | 14 |

Si el skill detecta las 7 anomalías sembradas y entrega la tabla en el orden correcto, el skill funciona bien y el ejercicio es un éxito.

---

## Errores frecuentes

| Síntoma | Causa probable | Cómo resolverlo |
|---------|----------------|-----------------|
| El skill no aparece en el submenú `/` | No se instaló correctamente | Repite la descarga e instalación del skill.zip |
| ChatGPT no muestra la interpretación debajo del campo | El skill no se activó | Vuelve al paso 5 y verifica la instalación |
| La tabla no tiene las columnas definidas | El formato de salida no quedó especificado | Revisa `configuracion/instrucciones-skill.md` como alternativa de fallback |
| No detecta los precios en 0 | El criterio de alerta no está en la lógica del skill | Crea el skill de nuevo desde el paso 2, siendo más explícito en la respuesta a la pregunta de umbrales |
| Inventa datos de precios | El skill no tiene la regla de no interpolar | Añade en la descripción: "No estimes valores que no estén en el archivo" |
| El resultado varía entre ejecuciones | El formato de salida es ambiguo | Especifica columnas exactas al responder la pregunta de salida |

---

## Banco de respuestas

> Si el `@skill-creator` o ChatGPT hace preguntas inesperadas, aquí están las respuestas pre-decididas para cada decisión del skill.
> No es necesario leerla en orden — úsala para localizar rápidamente la respuesta que necesites.

---

### Sobre el archivo de entrada

**¿Qué formato tiene el Excel?**
Una fila por partida. Columnas fijas: código de partida, descripción, unidad, cantidad. Luego una columna por proveedor con el precio unitario de cada uno.

**¿Los nombres de los proveedores vienen como encabezados de columna?**
Sí. Los encabezados de las columnas de precio son los nombres o identificadores de los proveedores (ej.: Licitador A, Licitador B, Licitador C).

**¿Se puede subir un archivo de ejemplo o plantilla?**
Sí. Se puede adjuntar un Excel de referencia en este punto para que ChatGPT entienda exactamente la estructura del archivo antes de construir el skill.

---

### Sobre las reglas de alerta

**¿Precio 0 es siempre alerta crítica?**
Sí. Cualquier celda con valor 0 o vacía se registra como alerta crítica.

**¿Partida omitida es más grave que precio 0?**
Se tratan con la misma criticidad: ambas son alertas críticas.

**¿Qué umbral para desviaciones de precio?**
- **Alta:** el precio de un proveedor se desvía más del 30 % respecto a la mediana de los demás proveedores en esa partida.
- **Media:** la diferencia entre el precio mínimo y máximo de la partida supera el 50 %.

---

### Sobre los niveles de gravedad

| Nivel | Condición |
|-------|-----------|
| **Crítica** | Precio 0, celda vacía o partida ausente en uno o más proveedores |
| **Alta** | Precio de un proveedor se desvía > 30 % respecto a la mediana |
| **Media** | Diferencia entre precio mínimo y máximo de la partida > 50 % |
| **Baja** | Observaciones menores o inconsistencias no bloqueantes |

---

### Cómo invocar el skill una vez instalado

**Opción 1 — Llamada manual (recomendada para la sesión):**
Escribe `@solar-tender-review` en el chat y ChatGPT lo activa directamente.
También puedes escribir `/` y seleccionarlo del listado de skills disponibles.

**Opción 2 — Aparición automática:**
ChatGPT puede sugerirlo solo si detecta que el contexto encaja: por ejemplo, al adjuntar un Excel y mencionar palabras como "licitación", "proveedores" u "oferta". No es garantizado — depende de la descripción del skill.

> **Para la sesión en vivo:** enseña siempre la llamada con `@solar-tender-review` — es explícita y predecible. No dependas de que ChatGPT lo sugiera automáticamente.

---

### Sobre la salida del skill

**¿Qué debe entregar el skill?**
1. Tabla de alertas ordenada por nivel de gravedad (Crítica → Alta → Media → Baja).
2. Resumen por proveedor: total ofertado, fortalezas, riesgos y evaluación preliminar.
3. Lista de partidas que requieren aclaración antes de adjudicar.
4. Opcionalmente: archivo Excel de revisión con pestañas Alertas, Resumen por proveedor y Parámetros usados.

---

### Restricciones del skill

- No recomendar a qué proveedor adjudicar — solo presentar datos y alertas.
- No interpolar ni estimar valores faltantes — si el dato no está en el archivo, se registra como omitido.
- No interpretar condiciones contractuales ni cláusulas técnicas.
- Responder siempre en español.
- Si el archivo no tiene el formato esperado, describirlo y pedir confirmación antes de continuar.
