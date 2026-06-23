# Ejercicio 002 - GPT Creador de GPTs Solclef

> **Módulo 07 - GPTs personalizados**  
> Duracion estimada: 60 minutos  
> Documento formativo ficticio

---

## Objetivo

Crear un GPT personalizado usando el ayudante creador de GPTs y un prompt maestro.

El ejercicio busca que el participante aprenda a convertir una necesidad inicial en una configuracion completa de GPT: nombre, descripcion, instrucciones, iniciadores, capacidades recomendadas y prueba de validacion.

---

## Contexto

En una organizacion de energia renovable pueden surgir varias ideas de GPTs internos: asistentes para minutas, reportes, seguimiento de acciones, resumen de documentos, control de compromisos, preparacion de comunicaciones o apoyo a procesos administrativos.

El reto no es solamente tener una idea. El reto es convertir esa idea en un GPT con una logica clara.

En este ejercicio se usara un prompt maestro para guiar al ayudante creador de GPTs y obtener una primera version del GPT.

Ejemplo de necesidad:

```text
Quiero crear un GPT que ayude a preparar minutas de reuniones operativas y a organizar acuerdos, responsables y proximos pasos.
```

---

## Archivos de trabajo

| Archivo | Que es | Donde encontrarlo |
|---------|--------|-------------------|
| `prompt-maestro.md` | Prompt base para conversar con el ayudante creador de GPTs | `configuracion/` |
| `ideas-gpts-solclef.md` | Lista de ideas posibles para practicar | `insumos/` |
| `prompts-de-uso.md` | Prompts listos para probar y ajustar el GPT creado | `prompts/` |

---

## Instrucciones del ejercicio

### Paso 1 - Seleccionar una idea de GPT

1. Abre el archivo `insumos/ideas-gpts-solclef.md`.
2. Selecciona una idea de GPT de la lista.
3. Lee el objetivo, usuarios, entradas y salida esperada de esa idea.
4. Ajusta la necesidad si el grupo quiere enfocarla en un area especifica.

Ejemplo de idea seleccionada:

```text
GPT para crear minutas de reuniones operativas con acuerdos, responsables y fechas de seguimiento.
```

---

### Paso 2 - Completar el prompt maestro

1. Abre el archivo `configuracion/prompt-maestro.md`.
2. Copia el bloque principal.
3. Reemplaza los campos entre corchetes con la idea seleccionada.
4. Verifica que el prompt incluya:

- Necesidad del GPT.
- Usuario previsto.
- Tipo de informacion de entrada.
- Formato de salida esperado.
- Limites o riesgos.
- Tono de respuesta.

---

### Paso 3 - Usar el ayudante creador de GPTs

1. Abre ChatGPT con una cuenta que permita crear GPTs.
2. Ve al menu lateral y selecciona **Explorar GPTs**.
3. Selecciona **Crear**.
4. En la conversacion del creador, pega el prompt maestro completado.
5. Revisa la propuesta generada por el ayudante.

El ayudante deberia proponer una configuracion inicial con nombre, descripcion, instrucciones e iniciadores.

---

### Paso 4 - Revisar la propuesta

Antes de guardar el GPT, revisa si la propuesta cumple estos puntos:

| Punto de revision | Pregunta de control |
|-------------------|---------------------|
| Objetivo | Esta claro para que sirve el GPT? |
| Usuario | Esta claro quien lo usara? |
| Entradas | Esta claro que debe entregar el usuario? |
| Salida | Esta claro que formato debe devolver el GPT? |
| Limites | Esta claro que no debe hacer? |
| Prueba | Hay un prompt para validar el comportamiento? |

Si falta alguno de estos puntos, pide al ayudante que ajuste la configuracion.

---

### Paso 5 - Configurar capacidades

Configura las capacidades del GPT segun la necesidad del caso.

Para este ejercicio base se recomienda:

| Capacidad | Estado recomendado |
|-----------|--------------------|
| Busqueda web | Desactivada |
| Generacion de imagenes | Desactivada |
| Canvas | Activada |
| Analisis de datos | Activada |
| Acciones | Sin configurar |

El objetivo de este caso es aprender a crear GPTs mediante prompt maestro. No se requiere integrar APIs ni buscar informacion externa.

---

### Paso 6 - Crear iniciadores de conversacion

Incluye entre 3 y 5 iniciadores que permitan probar el GPT.

Ejemplos:

```text
Ayudame a convertir esta idea en un GPT personalizado
```

```text
Revisa si esta configuracion de GPT tiene objetivo, alcance y limites claros
```

```text
Crea instrucciones para un GPT que organice minutas de reunion
```

```text
Define una prueba inicial para validar este GPT
```

---

### Paso 7 - Probar el GPT creado

En la vista previa del GPT, envia un mensaje relacionado con el caso elegido.

Ejemplo:

```text
Quiero crear un GPT para preparar minutas de reuniones operativas. Lo usaran responsables de area. Recibira notas sueltas de una reunion y debera devolver una minuta con acuerdos, responsables, fechas y pendientes.
```

La respuesta debe ayudar a estructurar el GPT o a generar la configuracion solicitada, sin inventar procesos internos ni presentar la propuesta como definitiva.

---

### Paso 8 - Ajustar y guardar

Despues de probar, realiza al menos un ajuste. Puede ser:

- Hacer mas claro el objetivo.
- Agregar limites.
- Simplificar el formato de salida.
- Mejorar los iniciadores.
- Anadir una regla para pedir aclaracion cuando falte informacion.

Guarda el GPT cuando la configuracion sea consistente.

---

## Entregable

Al finalizar el ejercicio se debe tener:

1. Una idea de GPT seleccionada o definida.
2. Un prompt maestro completado.
3. Un GPT creado con nombre, descripcion e instrucciones.
4. Entre 3 y 5 iniciadores de conversacion.
5. Una prueba inicial ejecutada.
6. Una breve nota con el ajuste realizado despues de revisar la primera propuesta.

---

## Criterios de exito

| Criterio | Verificacion |
|----------|--------------|
| El prompt maestro describe necesidad, usuario, entrada y salida | Si / No |
| El ayudante genera una configuracion inicial util | Si / No |
| La configuracion incluye limites claros | Si / No |
| El GPT creado responde segun el alcance definido | Si / No |
| Se realiza al menos un ajuste antes de guardar | Si / No |

---

## Reflexion final

Cuando termine el ejercicio, responde:

- Que parte de la creacion de GPTs se acelera con el prompt maestro?
- Que parte sigue requiriendo criterio humano?
- Que riesgos aparecen cuando se crea un GPT desde una idea demasiado amplia?

