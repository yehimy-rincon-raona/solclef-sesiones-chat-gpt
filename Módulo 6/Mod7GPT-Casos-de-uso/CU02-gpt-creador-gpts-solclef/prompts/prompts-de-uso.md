# Prompts de uso - Creacion guiada de GPTs

> **Donde se usa:** Conversacion con el ayudante creador de GPTs o vista previa del GPT creado.  
> **Importante:** Ajusta los corchetes antes de enviar el prompt.  
> Documento formativo ficticio.

---

## Opcion A - Crear un GPT desde una idea clara

```text
Quiero crear un GPT para Solclef que ayude a [DESCRIBIR NECESIDAD].

El GPT sera usado por [TIPO DE USUARIO].
Debe recibir como entrada [TIPO DE INFORMACION].
Debe entregar como salida [FORMATO ESPERADO].
Debe evitar [LIMITES O RIESGOS].

Ayudame a definir nombre, descripcion, instrucciones, iniciadores, capacidades recomendadas y una prueba inicial.
```

Ejemplo:

```text
Quiero crear un GPT para Solclef que ayude a convertir notas sueltas de reuniones operativas en minutas estructuradas.

El GPT sera usado por responsables de area y equipos de seguimiento.
Debe recibir como entrada notas sueltas o transcripciones breves de una reunion.
Debe entregar como salida una minuta con resumen, acuerdos, responsables, fechas y pendientes.
Debe evitar inventar acuerdos, responsables o fechas que no aparezcan en las notas.

Ayudame a definir nombre, descripcion, instrucciones, iniciadores, capacidades recomendadas y una prueba inicial.
```

---

## Opcion B - Explorar una idea poco definida

```text
Tengo esta idea inicial para crear un GPT:

[DESCRIBIR IDEA]

Ayudame a aclarar antes de configurarlo:
1. Problema que resuelve.
2. Usuario principal.
3. Informacion de entrada.
4. Salida esperada.
5. Limites del GPT.
6. Riesgos si se configura mal.
7. Version minima viable para probarlo.
```

Ejemplo:

```text
Tengo esta idea inicial para crear un GPT:

Un asistente que ayude a organizar informacion de proyectos internos.

Ayudame a aclarar antes de configurarlo:
1. Problema que resuelve.
2. Usuario principal.
3. Informacion de entrada.
4. Salida esperada.
5. Limites del GPT.
6. Riesgos si se configura mal.
7. Version minima viable para probarlo.
```

---

## Opcion C - Pedir instrucciones listas para configurar

```text
Con base en esta idea de GPT, redacta instrucciones completas para pegar en el campo Instrucciones del creador de GPTs.

Idea:
[DESCRIBIR IDEA]

Incluye:
- Rol del GPT.
- Tareas que debe hacer.
- Tareas que no debe hacer.
- Reglas para manejar informacion incompleta.
- Formato de respuesta.
- Tono.
- Limites.
```

---

## Opcion D - Revisar una configuracion propuesta

```text
Revisa esta configuracion de GPT y dime si tiene vacios o riesgos.

Nombre:
[NOMBRE]

Descripcion:
[DESCRIPCION]

Instrucciones:
[PEGAR INSTRUCCIONES]

Evalua:
1. Claridad del objetivo.
2. Usuario previsto.
3. Entradas esperadas.
4. Formato de salida.
5. Limites.
6. Riesgos de invencion o ambiguedad.
7. Ajustes recomendados.
```

---

## Opcion E - Mejorar iniciadores de conversacion

```text
Crea 5 iniciadores de conversacion para este GPT.

Objetivo del GPT:
[OBJETIVO]

Usuario previsto:
[USUARIO]

Los iniciadores deben ser concretos, faciles de probar y relacionados con situaciones reales de uso.
```

---

## Opcion F - Crear una prueba de validacion

```text
Crea una prueba inicial para validar este GPT.

Objetivo del GPT:
[OBJETIVO]

Entrada que deberia recibir:
[ENTRADA]

Salida esperada:
[SALIDA]

Limites importantes:
[LIMITES]

Devuelve:
1. Prompt de prueba.
2. Criterios de exito.
3. Senales de alerta si el GPT responde mal.
```

---

## Prompt de prueba para el GPT creado

Este prompt se usa en la vista previa del GPT cuando el caso elegido sea minutas de reunion:

```text
Tengo estas notas de reunion:
- Se reviso el avance del plan de acciones del mes.
- Marta debe consolidar los pendientes antes del viernes.
- El equipo debe validar el nuevo formato de seguimiento.
- Queda pendiente definir la fecha de la siguiente revision.
- No se definieron cambios de presupuesto.

Genera una minuta estructurada con resumen, acuerdos, responsables, fechas, pendientes y datos no especificados.
```

---

## Variantes de prueba

### Para un GPT de acciones pendientes

```text
Organiza estas notas en una tabla de acciones:
- Revisar formato de seguimiento.
- Carlos envia comentarios el miercoles.
- Falta definir responsable para consolidar indicadores.
- La proxima revision sera la semana entrante.
```

### Para un GPT de resumen ejecutivo

```text
Convierte este texto en un resumen ejecutivo con puntos clave, riesgos y proximos pasos:

[PEGAR TEXTO]
```

### Para un GPT de comunicaciones internas

```text
Ayudame a redactar una comunicacion interna para informar sobre [TEMA].
Audiencia: [AUDIENCIA].
Tono: profesional y claro.
Mensaje base: [MENSAJE].
```

---

## Checklist de validacion rapida

| Criterio | Si / No |
|----------|---------|
| El GPT entiende la tarea principal? |  |
| Pide aclaracion si faltan datos importantes? |  |
| Evita inventar informacion? |  |
| Devuelve una estructura facil de revisar? |  |
| Mantiene el tono definido? |  |
| Respeta los limites del caso? |  |

