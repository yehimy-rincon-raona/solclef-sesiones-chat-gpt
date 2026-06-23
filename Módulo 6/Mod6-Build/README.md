# Tema 1 - GPT creador de North Star

Esta carpeta contiene el frente de trabajo del Tema 1 de la sesion: disenar un GPT que ayude a convertir la idea de cualquier proyecto en dos entregables conectados:

- un `North Star` claro y legible
- un `System Prompt` pegable derivado de ese North Star

La idea pedagogica central es esta:

- el `North Star` no es un documento decorativo
- el `North Star` es el mapa de definicion del proyecto
- ese mapa luego se compila en un `System Prompt` reusable

## Objetivo del frente

Construir un GPT de practica que sirva para:

- descubrir que se quiere construir
- bajar ideas ambiguas a decisiones concretas
- ordenar objetivo, audiencia, alcance, limites, entradas y salidas
- producir un `North Star` util para trabajar
- convertir ese `North Star` en un `System Prompt` listo para usar

## Audiencia prioritaria

La practica esta pensada principalmente para una audiencia generalista de negocio.

Por eso el GPT debe:

- usar lenguaje claro y poco tecnico
- hacer preguntas guiadas
- proponer opciones cuando el usuario no tenga una respuesta clara
- separar hechos confirmados de supuestos o pendientes

## Archivos del frente

- `00-caso_uso_y_sentido.md`
- `01-ruta_metodo_gpts.md`
- `02-borrador_configuracion_gpt.md`
- `03-paso_a_paso_clase/`
- `04-insumos_builder/`

## Relacion con el resto del repo

- `metodo-gpts/` aporta el metodo reusable por fases.
- `arquitectura_gpt_flujo_hibrido_v1/` aporta una referencia de trabajo estructurado y reusable.
- `referencias_locales/Creador de North Star - Copiloto/` aporta el antecedente practico de la logica `North Star -> System Prompt`.

## Resultado esperado

Al cerrar este frente deberiamos tener:

- un caso de uso explicable en sesion
- una ruta de trabajo por fases
- una configuracion base del GPT
- una guia de clase paso a paso para construirlo en ChatGPT
- un paquete de respaldo para cargar la configuracion en el builder
- una definicion clara de la salida final en dos bloques:
  - `North Star`
  - `System Prompt`

## Rama de trabajo

Este frente se esta trabajando en la rama:

- `features`
