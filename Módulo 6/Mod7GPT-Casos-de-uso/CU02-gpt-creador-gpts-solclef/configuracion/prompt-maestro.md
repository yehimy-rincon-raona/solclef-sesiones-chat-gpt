# Prompt maestro - Creacion guiada de GPTs Solclef

> **Donde se usa:** Conversacion con el ayudante creador de GPTs.  
> **Objetivo:** Convertir una necesidad inicial en una propuesta de configuracion para un GPT personalizado.  
> **Documento formativo ficticio**

---

## Bloque principal para copiar

```text
Quiero crear un GPT que me ayude a [DESCRIBIR LA NECESIDAD].

El GPT sera usado por [TIPO DE USUARIO O EQUIPO].
Debe recibir como entrada [TIPO DE INFORMACION QUE ENTREGARA EL USUARIO].
Debe entregar como salida [FORMATO O RESULTADO ESPERADO].
Debe evitar [LIMITES, RIESGOS O COSAS QUE NO DEBE HACER].

El GPT debe responder en espanol, con lenguaje claro, profesional y orientado a negocio. No debe inventar informacion que el usuario no haya entregado. Cuando falten datos importantes, debe pedir aclaracion o marcar el dato como no especificado.

Ayudame a definir:
1. Nombre del GPT.
2. Descripcion breve.
3. Instrucciones completas para pegar en el campo Instrucciones.
4. Entre 3 y 5 iniciadores de conversacion.
5. Capacidades recomendadas.
6. Una prueba inicial para validar que el GPT funciona correctamente.
7. Una lista breve de limites que deberian mantenerse en la configuracion.
```

---

## Version de ejemplo completada

```text
Quiero crear un GPT que me ayude a preparar minutas de reuniones operativas y organizar acuerdos, responsables, fechas y pendientes.

El GPT sera usado por responsables de area y equipos de seguimiento.
Debe recibir como entrada notas sueltas de una reunion, transcripciones breves o apuntes escritos por los participantes.
Debe entregar como salida una minuta estructurada con resumen, acuerdos, responsables, fechas, pendientes y proximos pasos.
Debe evitar inventar acuerdos, asignar responsables no mencionados, crear fechas no indicadas o presentar la minuta como version oficial sin revision humana.

El GPT debe responder en espanol, con lenguaje claro, profesional y orientado a negocio. No debe inventar informacion que el usuario no haya entregado. Cuando falten datos importantes, debe pedir aclaracion o marcar el dato como no especificado.

Ayudame a definir:
1. Nombre del GPT.
2. Descripcion breve.
3. Instrucciones completas para pegar en el campo Instrucciones.
4. Entre 3 y 5 iniciadores de conversacion.
5. Capacidades recomendadas.
6. Una prueba inicial para validar que el GPT funciona correctamente.
7. Una lista breve de limites que deberian mantenerse en la configuracion.
```

---

## Campos que se deben completar

| Campo | Que debe incluir | Ejemplo |
|-------|------------------|---------|
| Necesidad | La tarea o problema que resolvera el GPT | Preparar minutas de reunion |
| Usuario | Quien usara el GPT | Responsables de area |
| Entrada | Informacion que recibira | Notas sueltas de una reunion |
| Salida | Resultado esperado | Minuta con acuerdos y pendientes |
| Limites | Cosas que no debe hacer | No inventar responsables ni fechas |

---

## Reglas para usar el prompt maestro

- Escribir la necesidad de forma concreta.
- Evitar ideas demasiado amplias como "un GPT para todo".
- Definir quien usara el GPT.
- Indicar que informacion recibira el GPT.
- Indicar el formato de respuesta esperado.
- Agregar limites desde el inicio.
- Revisar y ajustar la propuesta antes de guardarla.

---

## Variacion para ideas poco definidas

Usa esta version cuando la idea aun no este clara:

```text
Tengo una idea inicial para crear un GPT en Solclef, pero aun no esta completamente definida.

Idea inicial:
[DESCRIBIR IDEA EN 2 O 3 LINEAS]

Antes de proponer instrucciones finales, ayudame a aclarar:
1. Problema que resolveria.
2. Usuario principal.
3. Entradas necesarias.
4. Salida esperada.
5. Limites del GPT.
6. Riesgos de una mala configuracion.
7. Version minima viable del GPT para una primera prueba.

Responde en espanol, con preguntas concretas y recomendaciones practicas.
```

