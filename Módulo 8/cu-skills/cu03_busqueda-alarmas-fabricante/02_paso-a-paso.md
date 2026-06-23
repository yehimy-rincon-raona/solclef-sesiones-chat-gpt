# Paso a Paso — CU03: Búsqueda de Alarmas de Fabricante

## Antes de comenzar

Verifica que tienes ChatGPT Plus activo. Este ejercicio requiere @skill-creator para crear el skill y búsqueda web para ejecutarlo — ambas funciones requieren plan Plus o superior.

---

## Paso 1 — Crear el skill con @skill-creator

Abre ChatGPT → escribe `/` en el campo de texto → selecciona **@skill-creator** del submenú de herramientas.

Pega el **Prompt de creación** que está en `configuracion/instrucciones-skill.md` (sección "Prompt de creación") y envíalo.

**Respuesta esperada:** @skill-creator confirma que va a generar el skill e indica las características que incorporará: búsqueda web obligatoria, prioridad a fuentes del fabricante, salida en 4 secciones y veredicto de escalado. A continuación genera el skill directamente sin hacer preguntas adicionales.

**Nombre del skill generado:** `inverter-alarm-research`

**Error frecuente:** @skill-creator no aparece en el submenú `/`. Causa probable: plan Free o sesión sin herramientas activas. Solución: verificar el plan en los ajustes de la cuenta.

---

## Paso 2 — Probar el skill sin instalarlo

Una vez generado el skill, aparece el botón **"Probar skill"** en la interfaz. Úsalo directamente — no es necesario descargar el zip ni instalarlo para el ejercicio.

Al pulsar "Probar skill" aparecerá un prompt de ejemplo por defecto en el campo de texto. **Ignóralo y bórralo.**

---

## Paso 3 — Ejecutar el análisis con el prompt optimizado

Pega la **Variante A** de `prompts/prompts-de-uso.md` en el campo de texto y envíala.

**Respuesta esperada:** El skill muestra el indicador de búsqueda web en proceso (icono giratorio o texto "Buscando…") antes de responder. Esto confirma que está consultando fuentes externas, no respondiendo solo desde su conocimiento interno.

**Si el skill responde sin activar la búsqueda:** Escribe `"Activa la búsqueda web antes de responder y cita las fuentes que encuentres."` para forzar la búsqueda.

---

## Paso 4 — Interpretar el hallazgo principal

Lee con atención la sección del análisis donde el skill describe qué significa el código 3501 según la documentación de SMA.

**Hallazgo esperado:** El código 3501 en SMA corresponde a **fallo de aislamiento** ("Insulation resistance > Check generator"), no a una alarma de frecuencia. Las alarmas de frecuencia en SMA se registran bajo los códigos 501 y 701.

**Implicación:** El SCADA está etiquetando el código 3501 como "Grid Fault: Frequency too high", pero esa descripción no coincide con la documentación oficial del fabricante. Esto no significa que el SCADA esté roto — puede haber un problema de mapeo en el driver Modbus o en la configuración del sistema de monitorización.

**Por qué es relevante para el ejercicio:** Sin la búsqueda en fuentes primarias, el técnico habría investigado un problema de frecuencia de red que en realidad apunta a un posible fallo de aislamiento incipiente — dos diagnósticos y dos intervenciones completamente distintas.

---

## Paso 5 — Leer el veredicto de escalado

Al final del output debe aparecer el veredicto con su justificación.

**Veredicto esperado:** Escalar a SMA — pero con el expediente técnico bien preparado antes de contactar al fabricante.

**Pasos previos al escalado que el skill debe identificar:**
1. Descargar el log nativo del inversor (Sunny Portal o Sunny Explorer) y confirmar si el código registrado es realmente 3501 o si es 501/701.
2. Verificar el mapeo SCADA/Modbus: hay alta probabilidad de que la descripción "Frequency too high" sea una etiqueta incorrecta asignada al código 3501.
3. Si el código real es 3501, ejecutar el procedimiento oficial SMA de aislamiento: medir tensión entre positivo–PE, negativo–PE y positivo–negativo por string.
4. Solo escalar si el log confirma el código 3501 y las pruebas de aislamiento no son concluyentes.

---

## Banco de respuestas

> En este ejercicio @skill-creator generó el skill sin hacer preguntas. Si en otra ejecución sí las hace, estas son las respuestas correctas.

| Pregunta probable del @skill-creator | Respuesta |
|--------------------------------------|-----------|
| ¿Qué tipo de archivo recibe el skill como input? | No hay archivo adjunto — el técnico escribe la información del equipo y la alarma directamente en el prompt |
| ¿Qué fuentes debe priorizar? | Web oficial del fabricante primero; portales del sector FV si no hay suficiente información del fabricante |
| ¿Qué formato tiene el output? | 4 secciones fijas: descripción de alarma, boletines/firmware, procedimiento recomendado, fuentes consultadas. Más veredicto de escalado obligatorio |
| ¿Debe etiquetar las fuentes? | Sí — cada recomendación del procedimiento se etiqueta como [Fuente web] o [Fuente interna] |

---

## Errores frecuentes y soluciones

| Error | Causa probable | Solución |
|-------|---------------|----------|
| @skill-creator no aparece en el submenú `/` | Plan Free o herramientas no activas | Verificar plan Plus en ajustes de cuenta |
| El skill responde sin activar la búsqueda web | Búsqueda no habilitada en la sesión | Escribir: "Activa la búsqueda web antes de responder" |
| El skill describe la alarma como problema de frecuencia sin cuestionarlo | No consultó fuentes primarias o las ignoró | Pedir: "Contrasta el significado del código 3501 con la documentación oficial de SMA antes de responder" |
| El veredicto dice "No escalar" sin revisar el mapeo SCADA | El skill asumió que la descripción del SCADA es correcta | Añadir al prompt: "Verifica si la descripción del SCADA coincide con el código en la documentación oficial del fabricante" |
| URLs rotas o inventadas | Alucinación del modelo | Abrir el enlace manualmente; si es inválido, pedir: "Busca de nuevo y cita solo fuentes con URL verificable" |
