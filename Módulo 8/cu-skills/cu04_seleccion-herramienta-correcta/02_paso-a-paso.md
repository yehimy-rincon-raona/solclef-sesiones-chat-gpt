# Paso a Paso — CU04: Análisis Termográfico con Visión

## Antes de comenzar

Verifica que tienes ChatGPT Plus activo. Ten a mano la imagen térmica del ejercicio (`insumos/thermal-image.png`) y el template de formato (`insumos/template-informe-termografico.md`).

---

## Paso 1 — Crear el skill con @skill-creator

Abre ChatGPT → escribe `/` en el campo de texto → selecciona **@skill-creator** del submenú.

Pega este prompt:

```
Quiero un skill que analice imágenes térmicas de paneles solares tomadas con dron.
Le paso una imagen o un PDF con la imagen dentro y me dice qué anomalía térmica ve,
qué tan grave es y qué debe hacer el equipo de mantenimiento.
El formato de salida está definido en el archivo template-informe-termografico.md
que adjuntaré al editar el skill.
```

**Respuesta esperada:** @skill-creator genera el skill `analisis-termografico-fotovoltaico` sin hacer preguntas adicionales.

> **Nota :** Si @skill-creator hace preguntas antes de generar el skill, usar estas respuestas:
> - **Nivel de diagnóstico:** Preinforme O&M no vinculante — diagnósticos directos con lenguaje como "diagnóstico probable", "estimado visualmente" y "requiere validación en campo". Primer filtro para decidir si enviar al equipo, no diagnóstico de técnico certificado.
> - **Criterios de gravedad (ΔT):** Baja < 10 °C · Media 10–20 °C · Alta > 20 °C (estándar IEC 62446-3).
> - **Entradas adicionales:** El usuario puede aportar planta, string, inversor, fecha de vuelo, irradiancia y temperatura ambiente — todos opcionales. Si no los aporta, el skill marca esos campos como "no disponible / estimado visualmente". Único campo obligatorio: la imagen.

---

## Paso 2 — Editar el skill y vincular el template

Sin salir de la conversación con @skill-creator, selecciona la opción **Editar** en el skill recién creado.

En la pantalla de edición, adjunta el archivo `insumos/template-informe-termografico.md`.

Guarda el skill con el template vinculado.

**Por qué este paso importa:** @skill-creator acepta el nombre del archivo como referencia en el prompt de creación, pero el template solo queda accesible al modelo cuando se adjunta directamente en la edición. Este paso garantiza que el skill pueda seguir el formato de las 6 secciones y el veredicto final.

> **Nota:** Mostrar la diferencia entre mencionar el archivo en el prompt (referencia) y adjuntarlo en la edición (acceso real al contenido). Es un ejemplo concreto de cómo los LLMs solo pueden aplicar un formato si realmente lo ven, no si se les dice que existe.

---

## Paso 3 — Instalar el skill

@skill-creator genera un archivo `skill.zip`. Descárgalo e instálalo desde la misma interfaz.

Una vez instalado, el skill aparece disponible en el submenú `/` de cualquier chat.

> **Nota:** A diferencia de algunos skills más simples, este genera ZIP para instalar porque @skill-creator lo empaqueta directamente al ser un skill con archivo de referencia adjunto.

---

## Paso 4 — Ejecutar el análisis

Abre un chat nuevo → adjunta la imagen `insumos/thermal-image.png` → pega este prompt:

```
Planta P-07 — Almería Sur (4,8 MWp) · Inspección con dron · 19 de junio de 2026 · 13:42 h
Fila 4, string S-04 · Inversor asociado: INV-P07-08

Analiza esta imagen térmica e indica qué anomalía detectas, qué tan grave es
y qué debe hacer el equipo de mantenimiento.
```

**Respuesta esperada:** El skill identifica un hot spot severo en un módulo individual de la fila 4, string S-04 con las 6 secciones del template y veredicto CORRECTIVO URGENTE.

---

## Paso 5 — Verificar el formato e interpretar los resultados

Lee la respuesta y compárala con `insumos/template-informe-termografico.md`.

**Si el formato sigue el template:** el skill funciona correctamente con el archivo adjunto. Analiza con el grupo los resultados: diagnóstico, ΔT estimado, evaluación de riesgo y veredicto.

**Si el formato no sigue exactamente el template:** es el comportamiento ocasional de @skill-creator. Usa el prompt de corrección del archivo `prompts/prompts-de-uso.md` para reformatear sin perder el contenido. El análisis técnico (diagnóstico, ΔT, recomendaciones) siempre es correcto aunque el formato varíe.

> **Nota:** Si el formato no sigue el template, convertirlo en un momento pedagógico: preguntar al grupo cuál es la diferencia entre el contenido (siempre correcto) y la estructura (dependiente de cómo el modelo leyó el template). Mostrar que el prompt de corrección resuelve el problema en segundos.

---

## Resultado de referencia

| Elemento | Resultado esperado |
|----------|-------------------|
| **Anomalía detectada** | Hot spot severo en módulo individual, fila 4, string S-04 |
| **Diagnóstico probable** | Fallo de diodo bypass o daño interno del módulo |
| **ΔT estimado** | +20 a +35 °C respecto a paneles sanos |
| **Criticidad** | Alta |
| **Veredicto** | CORRECTIVO URGENTE — intervención eléctrica y física prioritaria; probable sustitución del módulo |

---

## Errores frecuentes y soluciones

| Error | Causa probable | Solución |
|-------|---------------|----------|
| @skill-creator no aparece en el submenú `/` | Plan Free o herramientas no activas | Verificar plan Plus en ajustes de cuenta |
| No aparece la opción Editar tras generar el skill | Interfaz actualizada o skill en estado de revisión | Recargar la página y buscarlo en la lista de skills |
| El skill no analiza la imagen y pide texto | La imagen no se adjuntó correctamente | Adjuntar de nuevo y reenviar el prompt |
| El formato no sigue el template | El template adjunto no se aplicó o el modelo no lo leyó completamente | Usar el prompt de corrección de `prompts/prompts-de-uso.md` |
| El veredicto no aparece o no está en mayúsculas | El skill omitió esa sección | Añadir al final del prompt: "Incluye el veredicto final en mayúsculas al final de tu respuesta" |
| El skill no reconoce el tipo de anomalía | Imagen de baja resolución o ángulo poco claro | Indicar en el prompt qué zona de la imagen enfocar |
