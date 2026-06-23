# CU02 - Paso a paso - Creacion guiada de GPTs Solclef con prompt maestro

> Módulo 07 - GPTs personalizados - Solclef  
> Documento formativo ficticio

---

## Archivos necesarios

| Archivo | Uso |
|---------|-----|
| `configuracion/prompt-maestro.md` | Se copia y se completa para conversar con el ayudante creador de GPTs. |
| `insumos/ideas-gpts-solclef.md` | Contiene ideas de practica para seleccionar un caso. |
| `prompts/prompts-de-uso.md` | Contiene mensajes para probar y ajustar el GPT creado. |

---

## 1. Acceder al creador de GPTs

1. Ve a [chatgpt.com](https://chatgpt.com).
2. Inicia sesion con una cuenta que permita crear GPTs.
3. En el menu lateral, selecciona **Explorar GPTs**.
4. Selecciona **Crear**.
5. Mantente en la vista donde puedes conversar con el ayudante creador.

---

## 2. Elegir una idea de GPT

1. Abre `insumos/ideas-gpts-solclef.md`.
2. Escoge una idea de la lista.
3. Identifica estos elementos:

| Elemento | Pregunta guia |
|----------|---------------|
| Necesidad | Que problema resuelve el GPT? |
| Usuario | Quien lo usara? |
| Entrada | Que informacion recibira? |
| Salida | Que debe devolver? |
| Limites | Que no debe hacer? |

Ejemplo:

```text
Idea: GPT para preparar minutas de reuniones operativas.
Usuario: responsables de area o equipos de seguimiento.
Entrada: notas sueltas de una reunion.
Salida: minuta estructurada con acuerdos, responsables, fechas y pendientes.
Limite: no debe inventar acuerdos ni asignar responsables si no aparecen en las notas.
```

---

## 3. Completar el prompt maestro

1. Abre `configuracion/prompt-maestro.md`.
2. Copia el bloque principal.
3. Reemplaza los campos entre corchetes.
4. Revisa que la solicitud sea clara antes de enviarla.

Ejemplo de fragmento completado:

```text
Quiero crear un GPT para Solclef que ayude a preparar minutas de reuniones operativas.
El GPT sera usado por responsables de area y equipos de seguimiento.
Debe recibir como entrada notas sueltas de una reunion.
Debe entregar como salida una minuta estructurada con acuerdos, responsables, fechas y pendientes.
```

---

## 4. Enviar el prompt al ayudante creador

1. Pega el prompt maestro completado en la conversacion del creador de GPTs.
2. Espera la propuesta del ayudante.
3. Lee la respuesta completa.
4. Identifica que elementos propone.

La propuesta debe incluir como minimo:

- Nombre del GPT.
- Descripcion.
- Instrucciones.
- Iniciadores de conversacion.
- Capacidades recomendadas.
- Prueba inicial.

---

## 5. Revisar la configuracion propuesta

Usa esta lista de comprobacion:

| Revision | Debe verificarse |
|----------|------------------|
| Nombre | Es claro y especifico. |
| Descripcion | Explica que hace el GPT en una frase breve. |
| Rol | Indica como debe actuar el GPT. |
| Entradas | Explica que informacion debe recibir. |
| Salidas | Define el formato esperado. |
| Limites | Aclara que no debe hacer. |
| Preguntas | Pide aclaracion cuando falten datos importantes. |
| Prueba | Permite validar el comportamiento. |

Si algo falta, envia una instruccion de ajuste al ayudante.

Ejemplo:

```text
Ajusta las instrucciones para que el GPT no invente responsables, fechas ni acuerdos si no aparecen en las notas entregadas por el usuario.
```

---

## 6. Pasar a la pestana Configurar

Cuando la propuesta este lista:

1. Abre la pestana **Configurar**.
2. Copia el nombre propuesto en el campo **Nombre**.
3. Copia la descripcion en el campo **Descripcion**.
4. Copia las instrucciones revisadas en el campo **Instrucciones**.
5. Agrega los iniciadores de conversacion.

---

## 7. Configurar capacidades

Para este ejercicio se recomienda:

| Capacidad | Estado |
|-----------|--------|
| Busqueda web | Desactivada |
| Generacion de imagenes | Desactivada |
| Canvas | Activada |
| Analisis de datos | Activada |
| Acciones | Sin configurar |

El GPT debe trabajar con la informacion entregada por el usuario y con las reglas definidas en sus instrucciones.

---

## 8. Probar el GPT

En la vista previa, envia un mensaje de prueba relacionado con el caso elegido.

Ejemplo:

```text
Tengo estas notas de reunion:
- Se reviso el avance del plan de acciones.
- Marta debe consolidar los pendientes antes del viernes.
- El equipo debe validar el nuevo formato de seguimiento.
- Queda pendiente definir fecha para la siguiente revision.

Genera una minuta estructurada.
```

La respuesta debe respetar el alcance y el formato definidos en las instrucciones.

---

## 9. Ajustar despues de la prueba

Si el resultado no cumple el objetivo, ajusta la configuracion.

| Sintoma | Causa probable | Como resolverlo |
|---------|----------------|-----------------|
| El GPT responde muy generico | Las instrucciones no definen formato de salida | Agrega una estructura obligatoria |
| Invento informacion | Faltan limites sobre evidencia o datos faltantes | Indica que no debe inventar |
| La respuesta es demasiado larga | No se limito la extension | Pide respuestas breves y operativas |
| No pregunta cuando falta informacion | No hay regla de aclaracion | Agrega una regla para pedir datos minimos |
| El GPT intenta usar internet | Busqueda web activada o instrucciones ambiguas | Desactiva busqueda web y limita fuentes |

---

## 10. Guardar y documentar el ajuste

Antes de finalizar:

1. Guarda el GPT.
2. Copia un ejemplo de prueba exitosa.
3. Escribe una nota breve con el ajuste realizado.

Ejemplo de nota:

```text
Ajuste realizado: se agrego una regla para que el GPT marque como "dato no especificado" cualquier responsable, fecha o acuerdo que no aparezca en las notas entregadas por el usuario.
```

---

## Resultado esperado

Al finalizar, se debe contar con:

- Un GPT creado mediante prompt maestro.
- Una configuracion revisada y ajustada.
- Iniciadores de conversacion utiles.
- Una prueba inicial documentada.
- Una reflexion sobre los limites del metodo.

