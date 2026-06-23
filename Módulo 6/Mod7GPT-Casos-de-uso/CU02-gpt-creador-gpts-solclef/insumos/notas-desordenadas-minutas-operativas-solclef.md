# Notas desordenadas de reuniones para probar el GPT de minutas operativas - Solclef

> Documento ficticio creado con fines formativos.  
> Las situaciones, nombres, fechas y datos incluidos son simulados.  
> No representan información real ni documentación oficial de Solclef.

---

## Objetivo del archivo

Este archivo contiene notas desordenadas de reuniones internas simuladas.

Se usa para probar si el GPT creado en el caso de uso puede convertir apuntes informales en una minuta operativa clara.

El alumno no debe reescribir la estructura de la minuta en cada prueba.  
La estructura esperada ya debe estar definida en las instrucciones internas del GPT.

---

## Cómo usar este archivo

1. Selecciona una nota de reunión.
2. Copia el bloque completo.
3. Pégalo en el GPT creado para minutas operativas.
4. Usa un prompt corto, por ejemplo:

```text
Convierte estas notas en una minuta operativa:

[PEGAR AQUÍ LAS NOTAS]
```

También puede usarse:

```text
Organiza estas notas de reunión:

[PEGAR AQUÍ LAS NOTAS]
```

---

## Qué debe evaluar el alumno

El GPT funciona correctamente si:

- Identifica el objetivo de la reunión.
- Ordena los temas tratados.
- Separa acuerdos, pendientes y decisiones.
- Asocia responsables solo cuando aparecen en las notas.
- Asocia fechas o plazos solo cuando aparecen en las notas.
- Marca como "No especificado" lo que falte.
- No inventa participantes, fechas, responsables ni compromisos.
- Devuelve una minuta clara y reutilizable.

---

# Notas de prueba

## Nota 1 - Seguimiento mensual de operación

```text
Reunión seguimiento planta, lunes. Estaban Laura, Miguel y alguien de mantenimiento, creo que Carlos.

Se habló de que el reporte mensual está casi listo pero falta validar los datos de disponibilidad. Miguel dice que los datos de mayo ya están, pero junio todavía necesita revisión porque hubo una diferencia entre lo reportado por operación y lo que aparece en el consolidado.

Laura pidió que no se envíe el informe hasta revisar esa diferencia. Carlos va a revisar con mantenimiento si hubo alguna intervención que explique la variación.

También se comentó que el formato actual del reporte es muy largo y que dirección quiere algo más ejecutivo. Quedó pendiente proponer una versión resumida.

Próxima reunión podría ser la otra semana, pero no se cerró fecha.
```

---

## Nota 2 - Comité de acciones ESG

```text
Notas rápidas comité ESG.

Temas: indicadores, evidencias y seguimiento de acciones.

Ana comentó que varias áreas mandaron avances, pero algunos vienen sin evidencia. El equipo de personas envió información completa. Medio ambiente envió datos pero faltan anexos. Compliance todavía no ha enviado actualización.

Se acordó pedir a cada responsable que complete evidencias antes del viernes. No recuerdo si viernes 14 o 21, revisar calendario.

También se habló de crear una matriz única para consolidar acciones ESG. Javier puede ayudar con el formato, pero necesita que le compartan los campos mínimos.

Pendientes:
- Pedir evidencias faltantes.
- Revisar matriz.
- Confirmar fecha de entrega.
- Ver si se incluye resumen para dirección.
```

---

## Nota 3 - Reunión de comunicación interna

```text
Reunión sobre comunicado interno.

Objetivo: avisar al equipo sobre actualización de un procedimiento interno. No se quiere que suene alarmista ni demasiado legal. Debe ser claro, corto y explicar qué cambia, desde cuándo aplica y dónde consultar dudas.

Participaron Marta y Diego. Tal vez también estaba Paula, confirmar.

Diego dice que el comunicado debe salir esta semana. Marta quiere revisar el tono antes de enviarlo. Se mencionó que debe incluir enlace al documento actualizado, pero todavía no está la versión final.

Acuerdo: preparar borrador inicial. Responsable no quedó claro, quizá comunicaciones.

Pendiente definir canal: correo o intranet.
```

---

## Nota 4 - Revisión de pendientes de comité

```text
Comité de seguimiento.

Hay muchas acciones abiertas de reuniones anteriores. Se revisaron algunas:

1. Actualizar tablero de seguimiento. Lo tenía Andrés, pero no se sabe si ya lo terminó.
2. Consolidar comentarios de operación. Responsable: Patricia. Dijo que lo entrega mañana.
3. Preparar resumen ejecutivo para dirección. Falta definir quién lo hace.
4. Revisar indicadores que tienen datos inconsistentes. Operación y control de gestión deben revisarlo juntos.
5. Cerrar versión final del plan de trabajo. Fecha tentativa: fin de mes.

Se pidió priorizar lo que impacta el reporte mensual. No se tomaron decisiones sobre nuevas herramientas.
```

---

## Nota 5 - Taller de mejora de procesos

```text
Taller interno sobre mejora de procesos.

La conversación estuvo un poco mezclada. Se habló de que varias áreas usan formatos distintos para reportar avances. Eso genera reprocesos porque luego alguien tiene que unificar todo manualmente.

Ideas que salieron:
- Tener una plantilla común.
- Definir campos obligatorios.
- Usar una matriz de seguimiento.
- Evitar pedir información duplicada.
- Crear una guía corta de uso.

No hubo decisión final, pero sí consenso en que el problema principal es falta de estandarización.

Pendiente: levantar ejemplos de formatos actuales. María quedó en pedirlos a las áreas. No hay fecha.
```

---

## Nota 6 - Seguimiento de documentación

```text
Reunión documentación interna.

Se detectó que algunos procedimientos están actualizados pero los equipos siguen usando versiones anteriores. No está claro dónde están consultando los documentos.

Sergio dijo que hay documentos en carpetas compartidas, otros en correos y otros en enlaces antiguos. Se propuso hacer una revisión de documentos vigentes.

Acuerdo: crear listado de documentos críticos. Responsable: equipo de calidad. Fecha: próxima semana.

También se habló de enviar un recordatorio a las áreas, pero no se decidió todavía.

Riesgo mencionado: que se use un procedimiento vencido en una actividad sensible.
```

---

## Nota 7 - Preparación de reunión con dirección

```text
Preparación reunión dirección.

Se necesita llevar un resumen corto del avance de iniciativas. No más de una página. Incluir: qué se hizo, qué está pendiente, bloqueos y decisiones requeridas.

Carlos tiene información de operación. Ana tiene ESG. Juan tiene parte de tecnología. Falta consolidar todo.

Se acordó que cada uno envía sus puntos antes del miércoles. Luego alguien debe armar el resumen, pero no quedó responsable.

Dirección quiere foco en decisiones, no tanto detalle operativo.

Pendiente definir quién presenta.
```

---

## Nota 8 - Reunión sobre capacitación interna

```text
Reunión capacitación.

Tema: preparar sesión para equipos internos sobre uso de GPTs. Se quiere que sea práctica, no teórica. Duración tentativa 90 minutos.

Se propusieron tres ejercicios:
- Crear un GPT desde cero.
- Crear un GPT con prompt maestro.
- Conectar un GPT a una API pública.

Falta definir materiales, ejemplos y quién facilita cada bloque.

Yehimy puede liderar la estructura general. Otro equipo debe validar que los ejemplos sean adecuados para la empresa.

Fecha tentativa: próximo mes, sin día definido.
```

---

## Nota 9 - Revisión de propuesta de proveedor

```text
Reunión para revisar propuesta recibida.

La propuesta parece interesante, pero está muy general. No queda claro el alcance exacto ni qué entregables incluye. Fernando dijo que el precio está dentro de lo esperado, pero falta confirmar si incluye soporte posterior.

Se comentó que la propuesta menciona automatización de reportes, pero no explica fuentes de datos ni responsables de integración.

Acuerdo: pedir aclaraciones al proveedor antes de avanzar. No se aprobó la propuesta todavía.

Pendientes:
- Revisar alcance.
- Pedir detalle de entregables.
- Confirmar si hay soporte.
- Validar con tecnología si la integración es viable.

No se definió quién contacta al proveedor.
```

---

## Nota 10 - Priorización de iniciativas digitales

```text
Sesión de priorización.

Hay varias ideas sobre la mesa: automatizar reportes, crear plantillas estándar, usar GPTs para minutas, mejorar seguimiento de acciones y revisar documentación interna.

El grupo dijo que no todas pueden hacerse al tiempo. Se habló de empezar por algo simple y de alto impacto.

Automatizar reportes parece importante pero requiere datos y validaciones. Las minutas con GPT parecen más fáciles de probar. La documentación interna también duele, pero falta mapa de documentos.

No hubo votación final. Se acordó preparar una matriz simple de impacto/esfuerzo.

Responsable de la matriz: no definido. Fecha: antes del próximo comité, pero no se dijo cuándo es.
```

---

# Criterios de éxito de la prueba

Después de usar una nota de este archivo, la minuta generada por el GPT debe poder evaluarse con esta tabla:

| Criterio | Verificación |
|---|---|
| La minuta tiene título claro | Sí / No |
| Identifica participantes mencionados | Sí / No |
| Resume el contexto sin agregar información externa | Sí / No |
| Lista temas tratados | Sí / No |
| Separa acuerdos de pendientes | Sí / No |
| Incluye responsables solo si aparecen | Sí / No |
| Incluye fechas solo si aparecen | Sí / No |
| Marca vacíos como "No especificado" | Sí / No |
| No inventa decisiones | Sí / No |
| La salida es clara para compartir internamente | Sí / No |

---

# Nota final para alumnos

Estas notas están incompletas a propósito.  
El objetivo no es que el GPT adivine, sino que organice lo disponible y señale lo que falta.
