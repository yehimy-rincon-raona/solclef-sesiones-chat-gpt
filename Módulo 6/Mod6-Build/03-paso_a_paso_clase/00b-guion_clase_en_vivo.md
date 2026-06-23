# Guion de clase en vivo

## Objetivo del guion

Este documento sirve para facilitar la sesion mientras el grupo trabaja al mismo tiempo con nosotros.

La idea es conducir la practica sin improvisar:

- que decir
- cuanto tiempo dar
- que deben hacer las personas
- que revisar antes de avanzar

## Duracion sugerida

Entre 35 y 45 minutos.

Si el grupo avanza rapido, se puede cerrar en 35 minutos.
Si necesita mas acompanamiento, se puede llevar a 45 minutos.

## Estructura general

1. Apertura y encuadre
2. Preparacion
3. Fase 1 - descubrimiento
4. Fase 2 - estructura
5. Fase 3 - configuracion
6. Cierre y aprendizajes

## Tramo 1. Apertura y encuadre

### Tiempo sugerido

5 minutos

### Que decir

Hoy vamos a construir un GPT, pero no vamos a empezar escribiendo instrucciones finales.
Vamos a trabajar como se deberia trabajar bien.
Primero vamos a definir el proyecto.
Esa definicion se llama `North Star`.
Y despues vamos a convertir ese `North Star` en un `System Prompt`.

### Que debe hacer el grupo

- abrir el material de la clase
- abrir ChatGPT
- prepararse para copiar y pegar los prompts del paso a paso

### Que validar antes de seguir

Pregunta en voz alta:

`Antes de seguir, quien puede repetir con sus palabras la diferencia entre North Star y System Prompt`

Si el grupo aun no lo ve claro, repite esta idea:

- `North Star` = mapa de definicion
- `System Prompt` = instrucciones derivadas de ese mapa

## Tramo 2. Preparacion

### Tiempo sugerido

5 minutos

### Archivo a seguir

`01-preparacion.md`

### Que decir

Ahora vamos a preparar el contexto minimo.
No queremos que ChatGPT improvise sin marco.
Queremos que trabaje dentro del caso que estamos construyendo.

### Instruccion para el grupo

Lean el paso de preparacion.
Copien el prompt de arranque.
Peguenlo en ChatGPT.
No sigan todavia al siguiente paso hasta que revisemos la salida.

### Tiempo de trabajo individual

2 minutos

### Que revisar en plenario

Pide que verifiquen si ChatGPT:

- entro en descubrimiento
- hizo preguntas utiles
- no intento redactar todavia el prompt final

### Frase de reconduccion si hace falta

Si a alguien ChatGPT ya le esta escribiendo instrucciones finales, respondan esto:

`Todavia no quiero el prompt final. Quiero trabajar solo en descubrimiento.`

## Tramo 3. Fase 1 - Descubrimiento

### Tiempo sugerido

10 minutos

### Archivo a seguir

`02-fase_1_descubrimiento.md`

### Que decir

En esta fase no estamos construyendo el GPT todavia.
Estamos entendiendo con precision que deberia hacer.
Si esta fase queda floja, todo lo demas queda flojo.

### Instruccion para el grupo

Copien el prompt de descubrimiento.
Respondan de forma concreta.
Si no saben algo, pidan opciones.
No inventen respuestas por llenar huecos.

### Tiempo de trabajo individual

5 minutos

### Preguntas de facilitacion para revisar

Haz estas preguntas al grupo:

- que problema resuelve su GPT
- para quien esta pensado
- que salida principal deberia entregar
- que informacion todavia les falta definir

### Que validar antes de pasar

No avanzar hasta que la mayoria tenga al menos:

- objetivo del GPT
- usuario principal
- problema que resuelve
- entradas iniciales
- salidas esperadas

### Frase docente clave

Si todavia no puedes explicar el caso con claridad, todavia no toca pasar a estructura.

## Tramo 4. Fase 2 - Estructura

### Tiempo sugerido

8 minutos

### Archivo a seguir

`03-fase_2_estructura.md`

### Que decir

Ahora ya no preguntamos que queremos construir.
Ahora definimos como se va a comportar el GPT para ayudarnos a construirlo bien.

### Instruccion para el grupo

Copien el prompt de estructura.
Revisen especialmente que ChatGPT les devuelva bloques concretos y no ideas sueltas.

### Tiempo de trabajo individual

4 minutos

### Que revisar en plenario

Pide que cada persona confirme si su estructura ya incluye:

- rol del GPT
- lo que si hace
- lo que no hace
- bloques del `North Star`
- reglas para no inventar

### Frase de apoyo

Si la salida se ve bonita pero no operativa, todavia no esta lista.
Necesitamos estructura que luego podamos convertir en configuracion.

## Tramo 5. Fase 3 - Configuracion

### Tiempo sugerido

8 minutos

### Archivo a seguir

`04-fase_3_configuracion.md`

### Que decir

Ahora si vamos a traducir lo ya definido en instrucciones de GPT.
Fijense en algo importante:
no estamos improvisando.
Estamos compilando.

### Instruccion para el grupo

Copien el prompt de configuracion.
Cuando salga la respuesta, revisen si el `System Prompt` depende de verdad del `North Star`.

### Tiempo de trabajo individual

4 minutos

### Que revisar en plenario

Pide que comprueben estas cuatro cosas:

- el GPT pregunta antes de asumir
- el `North Star` aparece antes que el `System Prompt`
- el `System Prompt` no es generico
- el lenguaje sigue siendo claro para negocio

### Frase docente clave

Un prompt final bueno se reconoce porque refleja decisiones previas, no porque suena sofisticado.

## Tramo 6. Cierre y aprendizajes

### Tiempo sugerido

5 a 9 minutos

### Archivo a seguir

`05-cierre_y_montaje.md`

### Que decir

Ya no estamos mirando solo un texto final.
Estamos mirando un proceso de construccion.
Eso es lo valioso de esta practica.

### Preguntas finales para el grupo

- que cambio cuando trabajaron por fases
- en que momento vieron mas claridad
- que diferencia notaron entre improvisar un prompt y construir un North Star

### Cierre sugerido

Hoy aprendimos que no se empieza por el prompt.
Se empieza por la definicion.
Y cuando la definicion es buena, el `System Prompt` sale con mucha mas coherencia y mucha mas utilidad.

## Plan B si el grupo se retrasa

Si ves que el grupo va lento:

- reduce el plenario de la fase 2
- da menos tiempo de compartir respuestas
- enfoca la revision en una sola evidencia por fase

## Evidencias minimas que deben salir de la clase

- una salida de descubrimiento guardada
- una estructura del `North Star`
- un borrador de configuracion del GPT
- una comprension clara de la logica `North Star -> System Prompt`
