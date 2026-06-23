# Paso a paso para ejecutar el ejemplo en ChatGPT

Este archivo sirve como guia rapida para usar el caso en una capacitacion.

## Preparacion

1. En ChatGPT, crea un Proyecto nuevo.
2. Nombre sugerido: `Mi viaje ideal`.
3. Copia en las instrucciones del Proyecto el contenido de:

```text
config/01-instrucciones_del_proyecto.md
```

4. Carga como archivos de apoyo:

```text
templates/template-perfil_del_viaje.md
templates/template-comparacion_destinos.md
templates/template-matriz_decision.md
templates/template-planeacion_inicial.md
templates/template-preguntas_con_opciones.md
templates/template-aclaraciones_para_perfil.md
insumos/checklist-datos_para_descubrimiento.md
```

5. Para demo rapida, carga tambien:

```text
insumos/ejemplo-respuestas_viajero.md
```

## Ejecucion guiada

### Paso 1 - Descubrimiento

Abre y copia:

```text
prompts/01-iniciar_descubrimiento.md
```

Objetivo: que ChatGPT haga preguntas antes de recomendar destinos.

Las preguntas deben venir con opciones de respuesta. Puedes usar como referencia:

```text
templates/template-preguntas_con_opciones.md
```

### Paso 2 - Perfil

Abre y copia:

```text
prompts/02-crear_perfil_del_viaje.md
```

Objetivo: convertir respuestas sueltas en un perfil organizado.

### Paso 3 - Comparacion

Abre y copia:

```text
prompts/03-comparar_destinos.md
```

Objetivo: comparar entre 3 y 5 destinos posibles.

### Paso 4 - Decision

Abre y copia:

```text
prompts/04-matriz_de_decision.md
```

Objetivo: evaluar opciones con criterios simples.

### Paso 5 - Cierre

Abre y copia:

```text
prompts/05-elegir_destino_y_siguiente_paso.md
```

Objetivo: elegir destino y dejar listo el siguiente chat para itinerario o presupuesto.

## Demo rapida

Si no quieres responder preguntas durante la clase, usa:

```text
prompts/06-demo_con_insumo_de_ejemplo.md
```

Este prompt ejecuta el caso usando el insumo de ejemplo.

## Mensaje clave para explicar el ejercicio

Este Proyecto muestra como ChatGPT puede pasar de una idea abierta, como "quiero viajar", a una decision estructurada, usando instrucciones permanentes, archivos de apoyo, prompts por fases y plantillas de salida.
