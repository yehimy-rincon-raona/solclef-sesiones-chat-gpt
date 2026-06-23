# Ruta de trabajo con el metodo de GPTs

## Objetivo

Usar `metodo-gpts` para construir este GPT de practica por fases, manteniendo una logica clara y facil de explicar en sesion.

La secuencia central del caso es:

`idea del proyecto -> North Star -> System Prompt`

## Fase 1. Descubrimiento

En esta fase el GPT debe ayudar a descubrir y ordenar el proyecto antes de estructurarlo.

Debe resolver como minimo:

- que se quiere construir
- para que existe
- para quien esta pensado
- que problema resuelve
- que entradas necesita
- que salidas debe producir
- que limites tiene
- que riesgos o vacios existen

### Entregables de esta fase

- lectura resumida del caso
- objetivo del proyecto en una frase
- audiencia o usuario principal
- lista inicial de tareas esperadas
- alcance preliminar y fuera de alcance
- vacios criticos pendientes

### Criterio de cierre

No deberiamos pasar a la fase 2 si todavia falta claridad sobre:

- objetivo
- usuario
- entradas
- salidas
- limites basicos

## Fase 2. Estructura

En esta fase el GPT debe definir como guia la conversacion y como arma el `North Star`.

Debe quedar claro:

- rol del GPT
- que si hace
- que no hace
- como pregunta cuando faltan datos
- como propone opciones si el usuario no sabe
- como separa confirmado, supuesto y pendiente
- como organiza el `North Star`

### Entregables de esta fase

- arquitectura conversacional
- bloques del `North Star`
- reglas para no inventar
- flujo de preguntas por rondas cortas
- criterios para bajar ideas abstractas a decisiones concretas

### Criterio de cierre

No deberiamos pasar a la fase 3 si todavia no estan definidos:

- la estructura del `North Star`
- la logica de preguntas
- la separacion entre confirmado y pendiente
- la forma de salida final

## Fase 3. Configuracion

En esta fase el GPT debe convertir la estructura validada en una configuracion textual lista para montar en ChatGPT.

Debe traducirse en:

- mision del GPT
- instrucciones de comportamiento
- reglas de seguridad y no invencion
- formato de salida
- activadores de uso
- compilacion del `North Star` a `System Prompt`

### Entregables de esta fase

- borrador de instrucciones del GPT
- salida final en dos bloques
- activadores de trabajo por fase
- checklist de validacion

## Salida final que debe producir el GPT

La interfaz funcional del GPT debe quedar definida asi:

1. Bloque 1: `North Star`
2. Bloque 2: `System Prompt`

Reglas para esa salida:

- no mezclar ambos bloques
- no compilar si faltan datos criticos
- marcar `PENDIENTE` donde aplique
- indicar con claridad que partes estan confirmadas y cuales no

## Activadores alineados con el metodo

Para mantener coherencia con `metodo-gpts`, este frente usara estos activadores:

- `activar descubrimiento`
- `activar estructura`
- `activar configuracion`

## Casos de prueba sugeridos

Para validar la practica se deberian probar al menos estos escenarios:

1. Un proyecto de negocio con idea difusa.
2. Un caso donde el usuario no sabe responder varios campos.
3. Un caso donde se quiere disenar otro GPT.

El criterio de calidad es que el GPT no se precipite, no invente y logre que el `System Prompt` final refleje de verdad el `North Star`.
