# CU-Agentes — Casos de uso de Workspace Agents en ChatGPT (Solclef)

> **Módulo 8 — Agentes de ChatGPT — Solclef**
> Casos de uso de **agentes de espacio de trabajo (Workspace Agents)** diseñados para la sesión práctica de agentes. Misma estructura metodológica que los casos de Skills.

---

## Casos incluidos

| Caso | Nombre | Patrón | Desencadenador |
|------|--------|--------|----------------|
| **cu01** | Agente de reporte diario de rendimiento de planta | Monitor + Análisis | Programado (cada mañana) |
| **cu02** | Agente de triaje y enrutamiento de incidencias | Triaje y enrutamiento | Por evento (correo/formulario) |

---

## Estructura de cada caso

| Ruta | Contenido |
|------|-----------|
| `00_ficha.md` | Contexto, escenario, alcance del agente y valor esperado |
| `01_ejercicio.md` | Guía del ejercicio para el participante + resultado de referencia |
| `02_paso-a-paso.md` | Construcción del agente en el Agent Builder, prompts listos y banco de respuestas |
| `configuracion/` | Instrucciones del agente (prompt de construcción + bloque de instrucciones) |
| `insumos/` | Datos ficticios para probar el agente en la demo |
| `prompts/` | Prompts de uso e invocación del agente y sus variantes |

---

## Requisitos para la sesión

- **Plan:** ChatGPT **Business / Enterprise** con **Workspace Agents habilitados** por el administrador (control por roles, RBAC).
- **Conectores:** los ejemplos asumen **Microsoft 365 (Outlook / Teams / SharePoint)**. Si el workspace usa Google/Slack, sustituye los conectores equivalentes.
- **Fallback de demo:** si los conectores o los disparadores programados no están disponibles en la sesión, ejecuta el agente en modo **vista previa (preview) manual** adjuntando los archivos de `insumos/`. La lógica y el formato de salida son los mismos.

> **Datos ficticios.** Todos los nombres de planta, equipos y valores son inventados para formación. Adapta los nombres a la nomenclatura real de Solclef antes de un uso productivo.
