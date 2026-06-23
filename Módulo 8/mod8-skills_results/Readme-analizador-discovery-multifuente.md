# Analizador de Discovery Multifuente

## Estado de la documentación

**Versión lista para prueba**

**Justificación:**  
El Skill ya cuenta con estructura funcional en el `.zip`, incluyendo `SKILL.md`, metadatos de interfaz, recursos metodológicos, plantilla de salida, criterios de priorización, checklist de calidad, taxonomías, ejemplo y pruebas de aceptación.

**Por validar:**  
La documentación todavía no puede considerarse “versión validada” porque no hay evidencia de pruebas ejecutadas con casos reales de discovery, ni retroalimentación de usuarios internos.

---

## Propósito

El Skill **Analizador de Discovery Multifuente** analiza insumos diversos de discovery para convertirlos en un análisis interno accionable.

Resuelve el problema de tener información dispersa, desordenada o proveniente de múltiples fuentes, como transcripciones, notas, correos, minutas, formularios, fragmentos de entrevistas o requerimientos preliminares, y transformarla en:

- Resumen ejecutivo interno.
- Información normalizada.
- Hallazgos clave.
- Matriz de oportunidades priorizadas.
- Riesgos, vacíos y preguntas pendientes.
- Recomendación de próximos pasos internos.

El Skill está diseñado para separar evidencia explícita, citas textuales, inferencias, supuestos y pendientes por validar, evitando conclusiones sin soporte.

---

## Usuario objetivo

**Usuario principal:**  
Consultores, equipos de preventa, investigadores UX/UI, consultores de producto digital, equipos de transformación digital e innovación que analizan información de discovery empresarial.

**Usuarios secundarios:**  

- Equipos funcionales que preparan diagnósticos internos.
- Equipos comerciales que necesitan entender oportunidades antes de una propuesta.
- Equipos de producto que convierten levantamientos en oportunidades accionables.
- Equipos técnicos que necesitan detectar riesgos, vacíos o dependencias tempranas.

**Por validar:**  
Roles específicos dentro de la organización que usarán el Skill de forma recurrente, por ejemplo: consultor UX/UI, consultor funcional, preventa, líder técnico, product owner o consultor de transformación digital.

---

## Contexto de uso

El Skill se activa cuando el usuario entrega uno o varios insumos de discovery y necesita convertirlos en una lectura interna estructurada para análisis, preparación de reuniones, diagnóstico preliminar, priorización de oportunidades o toma de decisiones antes de avanzar a una propuesta, backlog o documento funcional.

Está pensado para contextos de:

- Preventa consultiva.
- Discovery UX/UI.
- Diagnóstico empresarial.
- Transformación digital.
- Producto digital.
- Automatización.
- IA aplicada.
- Integraciones.
- BI, datos y analítica.
- Mejora de procesos.

---

## Cuándo usar este Skill

- Cuando el usuario entregue transcripciones, notas, correos, minutas, formularios o fragmentos de discovery y necesite consolidarlos.
- Cuando exista información mezclada de varias fuentes y se necesite normalizarla antes de interpretarla.
- Cuando se necesiten identificar hallazgos, insights, oportunidades, riesgos y vacíos de información.
- Cuando el equipo interno necesite priorizar oportunidades digitales, de automatización, IA, integración, UX/UI, BI, datos, producto digital o mejora de procesos.
- Cuando se requiera diferenciar evidencia explícita, inferencias, supuestos y pendientes.
- Cuando se necesite preparar una siguiente reunión, diagnóstico interno o insumo previo a una propuesta.

---

## Cuándo no usar este Skill

- No usarlo para redactar una propuesta comercial final para cliente.
- No usarlo para crear un informe externo listo para entregar al cliente.
- No usarlo cuando solo se necesita resumir un texto simple sin análisis de oportunidades.
- No usarlo para recomendar soluciones tecnológicas sin evidencia suficiente.
- No usarlo para sustituir validaciones técnicas, legales, presupuestales o funcionales.
- No usarlo para convertir cualquier dolor en una solución de IA.
- No usarlo cuando el material sea tan escaso que no permita identificar contexto, objetivo o problema mínimo; en ese caso debe pedir información adicional.

---

## Objetivo operativo

El Skill debe ayudar a **consultores, investigadores UX/UI, equipos de preventa, producto digital y transformación digital** a **analizar insumos multifuente de discovery** usando **transcripciones, notas, correos, minutas, formularios, requerimientos preliminares o fragmentos mixtos** para generar **un análisis interno en Markdown con resumen ejecutivo, información normalizada, hallazgos, matriz de oportunidades priorizadas, riesgos, vacíos y próximos pasos**, diferenciando evidencia, citas, inferencias, supuestos y pendientes por validar.

---

## Entradas esperadas

### Entradas obligatorias

- Uno o más insumos de discovery, como:
  - Transcripciones completas o parciales.
  - Notas de reuniones.
  - Correos copiados.
  - Minutas.
  - Formularios de levantamiento.
  - Requerimientos preliminares.
  - Fragmentos de chat o conversación.
  - Observaciones internas.
  - Mezclas de los formatos anteriores.

- Contenido suficiente para identificar al menos:
  - Contexto mínimo.
  - Problema, necesidad o situación analizada.
  - Área, proceso, usuario, stakeholder o fuente involucrada.

### Entradas opcionales

- Nombre del cliente o proyecto.
- Área o proceso analizado.
- Objetivo del discovery.
- Participantes o stakeholders.
- Fecha o etapa del proceso.
- Restricciones de tiempo, presupuesto, tecnología, licencias o alcance.
- Sistemas y herramientas mencionadas.
- Resultado esperado por el equipo interno.
- Criterios específicos de priorización solicitados por el usuario.
- Nivel de profundidad deseado: rápido, estándar o detallado.

---

## Salidas esperadas

### Salida principal

- **Análisis interno de discovery en Markdown**, estructurado para uso del equipo interno.

### Salidas secundarias

- Clasificación de fuentes.
- Información normalizada del levantamiento.
- Hallazgos clave con evidencia.
- Insights accionables.
- Matriz de oportunidades priorizadas.
- Riesgos identificados.
- Vacíos de información.
- Contradicciones detectadas.
- Preguntas sugeridas para validación.
- Recomendación de próximos pasos internos.
- Nivel de confianza del análisis.

### Formato de salida

La salida debe entregarse en **Markdown**, usando la estructura definida en `references/output-template.md`.

Formato base esperado:

```markdown
# Análisis interno de discovery

## 1. Resumen ejecutivo interno
## 2. Información normalizada del levantamiento
## 3. Hallazgos clave
## 4. Matriz de oportunidades priorizadas
## 5. Riesgos, vacíos y preguntas pendientes
## 6. Recomendación de próximos pasos internos
```

Debe usar tablas cuando ayuden a comparar, priorizar o revisar información.

---

## Flujo de trabajo

1. **Recibir los insumos**
   - Leer todos los materiales entregados por el usuario antes de concluir.

2. **Clasificar fuentes**
   - Identificar si el material corresponde a transcripción, nota libre, correo, minuta, formulario, requerimiento preliminar, observación interna, fragmento mixto o fuente no identificada.

3. **Normalizar información**
   - Organizar el contenido en bloques comunes:
     - Contexto.
     - Objetivo.
     - Problema o necesidad.
     - Usuarios o stakeholders.
     - Procesos involucrados.
     - Sistemas o herramientas.
     - Datos o integraciones.
     - Restricciones.
     - Riesgos.
     - Pendientes.

4. **Extraer observaciones explícitas**
   - Identificar información presente directamente en los insumos.
   - Incluir citas textuales breves cuando existan fragmentos útiles.

5. **Formular hallazgos**
   - Interpretar observaciones para explicar qué está ocurriendo y por qué importa.
   - No formular hallazgos sin evidencia, fuente, cita, supuesto o pendiente declarado.

6. **Identificar insights**
   - Explicar la implicación accionable de los hallazgos para negocio, operación, experiencia, tecnología, datos o proceso.

7. **Detectar oportunidades**
   - Convertir hallazgos en oportunidades accionables.
   - Clasificarlas como IA, automatización, integración, UX/UI, BI o analítica, datos, producto digital, proceso, gestión del cambio o por validar.

8. **Priorizar oportunidades**
   - Evaluar cada oportunidad usando criterios como evidencia, impacto, urgencia, viabilidad funcional, viabilidad técnica, esfuerzo, riesgo, alineación estratégica y madurez del contexto.

9. **Generar salida**
   - Usar la plantilla de salida definida en el Skill.
   - Mantener el resultado como análisis interno.

10. **Validar calidad**
    - Revisar el resultado con el checklist de calidad antes de entregarlo.

11. **Entregar resultado final**
    - Presentar el análisis en Markdown, claro, trazable y accionable.

---

## Reglas de comportamiento

### Debe hacer

- Leer todos los insumos entregados antes de concluir.
- Analizar una o varias fuentes en el mismo flujo.
- Clasificar fuentes cuando sea posible.
- Marcar como `Fuente no identificada` cualquier bloque ambiguo.
- Unificar información duplicada sin borrar matices relevantes.
- Separar observación, hallazgo, insight, oportunidad y recomendación.
- Diferenciar evidencia explícita, cita textual, inferencia, supuesto y pendiente por validar.
- Incluir citas textuales breves cuando el usuario entregue transcripciones, correos o fragmentos textuales útiles.
- Identificar contradicciones entre fuentes cuando existan.
- Marcar nivel de evidencia en hallazgos y oportunidades.
- Priorizar oportunidades con los niveles `Alto`, `Medio`, `Bajo` y `Por validar`.
- Entregar una salida solo para uso interno.
- Señalar cuando una oportunidad requiere validación adicional.
- Justificar el nivel de confianza del análisis.
- Proponer próximos pasos internos accionables.

### No debe hacer

- No inventar información faltante.
- No inventar citas.
- No atribuir frases a fuentes no verificables.
- No presentar inferencias como hechos confirmados.
- No recomendar IA por defecto.
- No convertir cualquier dolor en solución tecnológica.
- No generar recomendaciones sin evidencia, cita, supuesto o pendiente asociado.
- No ocultar contradicciones, vacíos o riesgos relevantes.
- No entregar propuestas comerciales finales.
- No redactar informes externos listos para cliente.
- No omitir vacíos críticos solo para completar la matriz.
- No dar prioridad alta a oportunidades con evidencia baja.
- No dar prioridad alta a oportunidades con riesgo alto sin mitigación clara.

### Debe preguntar cuando

- El material no permite identificar objetivo, problema o contexto mínimo.
- La priorización solicitada depende de criterios no disponibles.
- Existen contradicciones que impiden formular una recomendación interna útil.
- La falta de información impide distinguir evidencia de inferencia.
- El usuario pide una salida para cliente, propuesta comercial o documento externo.
- El usuario solicita una escala numérica, pero no define criterios de puntuación.

### Puede asumir cuando

- La información faltante no cambia el análisis principal.
- El supuesto es razonable por el contexto.
- El supuesto queda marcado explícitamente como `Supuesto`.
- El usuario pide avanzar con una versión preliminar.
- El tipo de fuente puede inferirse razonablemente por su estructura, pero debe marcarse si existe duda.

---

## Criterios de calidad

- El análisis lee y considera todos los insumos entregados.
- Las fuentes quedan clasificadas o marcadas como no identificadas.
- La información se normaliza antes de formular conclusiones.
- Cada hallazgo relevante está conectado con evidencia, fuente, cita, inferencia, supuesto o pendiente.
- Las inferencias no se presentan como hechos.
- Las oportunidades se derivan de hallazgos o problemas asociados.
- La matriz usa niveles consistentes: `Alto`, `Medio`, `Bajo` y `Por validar`.
- La prioridad no contradice el nivel de evidencia.
- Las recomendaciones no proponen IA sin justificación.
- Se consideran alternativas como proceso, automatización, integración, UX/UI, BI, datos o gestión del cambio.
- Se identifican riesgos, vacíos y contradicciones cuando existan.
- El resultado se mantiene como análisis interno.
- El lenguaje es claro, accionable y útil para toma de decisiones internas.
- La salida está en Markdown.
- El resultado incluye próximos pasos internos.
- El nivel de confianza está justificado.

---

## Casos de uso

### Caso 1

**Entrada:**  
Una transcripción de entrevista con un stakeholder que describe un proceso manual, problemas de seguimiento y necesidades de visibilidad.

**Resultado esperado:**  
Resumen ejecutivo interno, información normalizada, hallazgos con citas breves, matriz de oportunidades, riesgos, vacíos y próximos pasos.

---

### Caso 2

**Entrada:**  
Notas libres, un correo copiado y una minuta técnica entregados en un mismo mensaje.

**Resultado esperado:**  
Fuentes clasificadas, información consolidada, contradicciones identificadas si existen, oportunidades priorizadas y preguntas pendientes.

---

### Caso 3

**Entrada:**  
Tres entrevistas con stakeholders diferentes sobre el mismo proceso o proyecto.

**Resultado esperado:**  
Hallazgos individuales cuando aplique, patrones transversales, contradicciones, matriz consolidada de oportunidades y nivel de confianza del análisis.

---

### Caso 4

**Entrada:**  
Fragmento corto con pocas notas, sin objetivo claro y sin información técnica suficiente.

**Resultado esperado:**  
Análisis preliminar con `Supuesto`, `Pendiente` y `Por validar`, evitando conclusiones definitivas.

---

### Caso 5

**Entrada:**  
Discovery donde aparecen tareas manuales, datos dispersos y solicitudes de “usar IA”.

**Resultado esperado:**  
Evaluación equilibrada que considere primero proceso, datos, integración o automatización antes de recomendar IA, salvo que la evidencia justifique IA.

---

## Recursos necesarios

### Referencias

- `references/input-guide.md`
  Guía para recibir insumos desordenados o multiformato.

- `references/source-taxonomy.md`
  Taxonomía para clasificar tipos de fuentes.

- `references/methodology.md`
  Metodología completa para analizar discovery multifuente.

- `references/glossary.md`
  Definiciones de observación, hallazgo, insight, oportunidad, recomendación, evidencia, cita, supuesto y pendiente.

- `references/opportunity-taxonomy.md`
  Categorías de oportunidades y tipos de solución.

- `references/prioritization-criteria.md`
  Criterios para evaluar y priorizar oportunidades.

- `references/output-template.md`
  Estructura obligatoria de salida.

- `references/quality-checklist.md`
  Checklist de control antes de entregar.

- `references/example-analysis.md`
  Ejemplo breve de análisis multifuente.

- `references/acceptance-tests.md`
  Pruebas de aceptación para validar comportamiento.

### Plantillas

- Plantilla de salida para análisis interno de discovery incluida en `references/output-template.md`.

### Scripts

- **Pendiente:** No se identificaron scripts dentro del Skill revisado.
- **Supuesto:** El Skill opera principalmente mediante instrucciones, referencias y plantillas, no mediante automatización con código.

### Assets

- **Pendiente:** No se identificaron assets visuales, plantillas externas, logos o archivos adjuntos adicionales.

### Ejemplos

- Ejemplo breve de análisis multifuente incluido en `references/example-analysis.md`.

### Documentación técnica

- Metadatos de interfaz incluidos en `agents/openai.yaml`.
- Instrucciones principales incluidas en `SKILL.md`.

---

## Riesgos o ambigüedades

- El Skill puede producir análisis demasiado extensos si el usuario entrega muchos insumos y no especifica nivel de profundidad.
- El límite entre análisis interno y entregable para cliente puede confundirse si el usuario pide una versión “presentable”.
- Algunas oportunidades pueden quedar clasificadas como IA por expectativa del usuario, aunque la evidencia apunte a automatización, integración, proceso o datos.
- La priorización puede ser débil si faltan datos sobre impacto, urgencia, viabilidad técnica, esfuerzo, riesgo o madurez del cliente.
- Las citas textuales pueden no estar disponibles si el usuario entrega notas resumidas en lugar de transcripciones o correos.
- La identificación de patrones puede ser riesgosa si hay pocas fuentes o menciones aisladas.
- Las contradicciones pueden pasar desapercibidas si las fuentes no están claramente separadas.
- El Skill depende de que el usuario entregue contenido suficiente para analizar.
- **Por validar:** Si el Skill debe manejar archivos adjuntos largos, audios, PDFs o documentos de gran extensión, debe definirse cómo leerlos y qué limitaciones declarar.
- **Por validar:** Si debe adaptarse a un formato corporativo específico de salida, ese formato aún no está incluido como asset independiente.

---

## Supuestos y pendientes

### Supuestos

- **Supuesto:** El Skill está diseñado para uso interno en equipos de consultoría, preventa, UX/UI, producto digital y transformación digital.
- **Supuesto:** La salida debe mantenerse en Markdown.
- **Supuesto:** La escala por defecto debe ser `Alto`, `Medio`, `Bajo` y `Por validar`.
- **Supuesto:** El Skill no requiere scripts porque su tarea principal es análisis cualitativo, normalización, priorización y documentación.
- **Supuesto:** El usuario espera que el Skill priorice oportunidades sin inventar evidencia ni forzar soluciones tecnológicas.
- **Supuesto:** Las referencias incluidas son suficientes para una primera prueba controlada.

### Pendientes por validar

- **Pendiente:** Validar el Skill con al menos 3 casos reales de discovery.
- **Pendiente:** Confirmar quién será el usuario principal dentro del flujo de trabajo real.
- **Pendiente:** Definir si habrá una versión resumida, estándar y detallada de la salida.
- **Pendiente:** Confirmar si el análisis debe incluir nombres de clientes, áreas, stakeholders o si deben anonimizarse.
- **Pendiente:** Definir si existe una plantilla corporativa adicional para oportunidades, discovery, preventa o diagnóstico.
- **Pendiente:** Confirmar si el Skill debe producir una segunda versión adaptada para cliente o si eso debe quedar fuera del alcance.
- **Pendiente:** Validar si los criterios de priorización actuales son suficientes para preventa, UX/UI, tecnología y negocio.
- **Pendiente:** Confirmar si debe incluir un sistema de scoring numérico opcional.
- **Pendiente:** Definir reglas de confidencialidad, anonimización o tratamiento de información sensible si se usa con datos reales de clientes.

---

## Pruebas de aceptación

| Prueba | Entrada | Resultado esperado | Criterio de éxito |
|---|---|---|---|
| Prueba 1: entrevista individual | Una transcripción de entrevista sobre un proceso manual. | Resumen ejecutivo interno, información normalizada, hallazgos, citas breves, matriz de oportunidades, riesgos y próximos pasos. | Identifica problemas, oportunidades y vacíos sin inventar información e incluye citas cuando el texto las permite. |
| Prueba 2: fuentes mixtas | Notas libres, correo copiado y minuta técnica en un mismo mensaje. | Fuentes clasificadas, información consolidada y oportunidades priorizadas. | Analiza todos los insumos y no trata cada fuente como caso separado salvo que sea necesario. |
| Prueba 3: múltiples entrevistas | Tres entrevistas con stakeholders diferentes. | Hallazgos individuales cuando aplique, patrones transversales, contradicciones y matriz consolidada. | No convierte menciones aisladas en patrones y marca recurrencias reales. |
| Prueba 4: evidencia insuficiente | Fragmento corto con pocas notas y sin objetivo claro. | Análisis preliminar con supuestos, pendientes y preguntas necesarias. | Evita conclusiones definitivas y marca `Por validar`. |
| Prueba 5: sesgo hacia IA | Caso con tareas manuales repetitivas y datos estructurados. | Oportunidades de proceso, automatización o integración antes que IA. | No recomienda IA salvo que la evidencia lo justifique. |
| Prueba 6: salida solo interna | Insumos de discovery y solicitud de análisis. | Salida interna, no propuesta comercial ni informe para cliente. | El lenguaje es útil para alineación del equipo y no parece un entregable externo. |

---

## Checklist de validación

- [x] Tiene objetivo claro.
- [x] Tiene entradas definidas.
- [x] Tiene salidas definidas.
- [x] Tiene flujo claro.
- [x] Tiene reglas de comportamiento.
- [x] Tiene criterios de calidad.
- [x] Tiene casos de uso.
- [x] Tiene límites claros.
- [x] Tiene riesgos identificados.
- [x] Tiene pruebas de aceptación.
- [x] Puede reutilizarse.
- [ ] Fue probado con casos reales.
- [ ] Tiene usuarios internos validados.
- [ ] Tiene criterios de priorización validados por el equipo.
- [ ] Tiene decisión confirmada sobre salida interna vs. salida para cliente.
- [ ] Tiene reglas de confidencialidad o anonimización, si aplica.

---

## Pendientes antes de validar el Skill

1. Probar el Skill con al menos 3 insumos reales o simulados de discovery:
   - Una entrevista individual.
   - Un caso multifuente.
   - Un caso con evidencia insuficiente.

2. Confirmar el usuario principal:
   - Consultor UX/UI.
   - Preventa.
   - Consultor funcional.
   - Product owner.
   - Transformación digital.
   - Otro.

3. Validar si la salida actual es suficientemente útil para el flujo interno de trabajo.

4. Definir si el Skill debe tener niveles de salida:
   - Resumen rápido.
   - Análisis estándar.
   - Análisis profundo.

5. Confirmar si se requiere una versión posterior para cliente o si eso debe manejarse con otro Skill.

6. Validar los criterios de priorización con el equipo que toma decisiones.

7. Definir reglas de confidencialidad, anonimización o manejo de información sensible.

8. Revisar si hace falta agregar un asset con plantilla corporativa o formato interno oficial.