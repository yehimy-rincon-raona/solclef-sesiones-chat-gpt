# CU02 — Agente de triaje y enrutamiento de incidencias

> **Módulo 8 — Agentes de ChatGPT — Solclef**

Este caso de uso contiene los materiales para construir y probar un **Workspace Agent** que procesa las incidencias y alarmas entrantes de O&M, las clasifica por criticidad, comprueba si ya existe un ticket relacionado, crea un borrador con el contexto y enruta/notifica al equipo correcto, escalando de inmediato lo crítico.

## Ruta recomendada

1. Lee `00_ficha.md` para entender el caso y el valor del agente.
2. Lee `01_ejercicio.md` para conocer los pasos y el resultado esperado.
3. Sigue `02_paso-a-paso.md` para construir el agente paso a paso con los prompts exactos.
4. Usa los archivos de `insumos/` cuando el paso a paso lo indique.
5. Consulta `prompts/prompts-de-uso.md` para invocar el agente y probar variantes.

## Contenido de la carpeta

| Ruta | Contenido |
|------|-----------|
| `00_ficha.md` | Contexto, escenario, alcance del agente y valor esperado |
| `01_ejercicio.md` | Guía del ejercicio para el participante + resultado de referencia |
| `02_paso-a-paso.md` | Construcción del agente en el Agent Builder + banco de respuestas |
| `insumos/` | Conjunto de avisos de incidencia ficticios (correos/formularios) |
| `prompts/` | Prompts para construir, ejecutar en preview y configurar el disparador |
| `configuracion/` | Instrucciones del agente como bloque listo para pegar |

## Orden de trabajo

Empieza por la ficha, continúa con el ejercicio y utiliza el paso a paso como guía operativa.
