# CU01 - Ficha del caso de uso - GPT Plantillas Operativas Solclef

> Módulo 07 - GPTs personalizados - Solclef  
> Documento formativo ficticio para practica de creacion de GPTs

---

## Nombre del caso de uso

**Biblioteca de formatos y plantillas operativas Solclef**

GPT personalizado para crear formatos internos simples, consistentes y reutilizables para actividades operativas, administrativas y de seguimiento.

---

## Escenario

Los equipos de una organizacion de energia renovable suelen preparar documentos recurrentes: minutas de reunion, checklists, formatos de seguimiento, reportes ejecutivos, fichas de actividad, planes de accion y matrices de compromisos.

Cuando cada persona crea estos documentos desde cero, los formatos pueden quedar distintos entre areas, con campos incompletos, estructuras poco claras o niveles de detalle inconsistentes.

El GPT propuesto ayuda a crear una primera version estructurada de formatos internos a partir de una necesidad expresada en lenguaje natural.

---

## Problema que resuelve

| Situacion actual | Impacto |
|------------------|---------|
| Cada equipo crea sus propios formatos desde cero | Menor consistencia documental |
| Las plantillas no siempre incluyen campos minimos | Mayor riesgo de informacion incompleta |
| Los documentos operativos pueden variar mucho entre usuarios | Dificultad para consolidar informacion |
| Preparar una plantilla toma tiempo | Mayor esfuerzo administrativo |
| No siempre queda claro como usar el formato | Menor adopcion por parte de los equipos |

El GPT no sustituye los procedimientos oficiales ni las plantillas corporativas aprobadas. Ayuda a preparar borradores iniciales de formatos que luego pueden ser revisados y ajustados por el equipo responsable.

---

## Objetivo del caso de uso

Construir un GPT personalizado que actue como asistente de creacion de plantillas operativas.

El GPT recibe una necesidad documental, por ejemplo: "necesito una plantilla para hacer seguimiento mensual de acciones", y devuelve un formato claro, simple y listo para copiar, revisar o adaptar.

El GPT debe trabajar con una estructura base para que todas las plantillas tengan un criterio comun.

---

## Alcance del GPT

### El GPT debe hacer

- Crear plantillas internas simples a partir de una necesidad del usuario.
- Proponer campos obligatorios y opcionales.
- Explicar brevemente cuando se debe usar cada formato.
- Mantener un lenguaje claro, profesional y facil de completar.
- Entregar formatos en tablas o bloques editables.
- Adaptar el nivel de detalle segun el tipo de plantilla solicitada.
- Usar como referencia los ejemplos cargados en su base de conocimiento.

### El GPT no debe hacer

- Crear documentos legales, contractuales o financieros definitivos.
- Aprobar formatos como oficiales.
- Inventar politicas internas, procesos obligatorios o responsables reales.
- Usar informacion confidencial no entregada por el usuario.
- Sustituir la revision de las areas responsables.
- Generar formatos excesivamente complejos si el usuario pide una version simple.

---

## Usuarios previstos

| Usuario | Uso esperado |
|---------|--------------|
| Equipos operativos | Crear formatos de seguimiento, registro o control |
| Responsables de area | Estandarizar minutas, reportes y planes de accion |
| Equipos ESG o sostenibilidad | Preparar formatos de seguimiento de iniciativas |
| Equipos de seguridad y medio ambiente | Crear checklists o registros preliminares |
| Equipos administrativos | Crear plantillas de coordinacion y reporte |

---

## Valor esperado

- Reducir el tiempo de preparacion de formatos internos.
- Mejorar la consistencia entre plantillas generadas por distintos usuarios.
- Facilitar que los documentos incluyan campos minimos de trazabilidad.
- Ayudar a convertir una necesidad informal en una estructura util.
- Promover formatos simples, claros y faciles de adoptar.

---

## Herramienta utilizada

GPT personalizado con:

- Instrucciones claras para generar formatos.
- Archivo de ejemplos cargado como conocimiento.
- Analisis de datos activado para estructurar tablas cuando sea necesario.
- Canvas activado para revisar o ajustar plantillas generadas.
- Busqueda web desactivada.
- Generacion de imagenes desactivada.
- Acciones sin configurar.

---

## Resultado esperado del ejercicio

Al finalizar, el participante debe tener:

1. Un GPT creado con nombre, descripcion e iniciadores configurados.
2. Un archivo de ejemplos cargado como conocimiento.
3. Las instrucciones del GPT copiadas desde `configuracion/instrucciones-gpt.md`.
4. Una plantilla operativa generada a partir de un prompt de prueba.
5. Una breve explicacion sobre que ajuste haria para mejorar la utilidad del GPT.

---

## Criterios de exito

| Criterio | Verificacion |
|----------|--------------|
| El GPT genera una plantilla clara y reutilizable | Si / No |
| La respuesta incluye objetivo, uso recomendado y campos minimos | Si / No |
| La salida es simple y facil de completar | Si / No |
| El GPT evita presentar el formato como oficial o aprobado | Si / No |
| El resultado puede copiarse y adaptarse rapidamente | Si / No |

---

## Nota formativa

Este caso de uso es ficticio y se utiliza con fines de aprendizaje. No representa documentacion oficial, procedimientos internos ni formatos aprobados por Solclef.
