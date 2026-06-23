# Capacitaciones ChatGPT 2026 — Solclef

Banco de **materiales didácticos** del programa de formación *"Sesiones de Productividad
Inteligente con ChatGPT"*, impartido a empleados de **Solclef** (sector energía solar) durante 2026.

No es un proyecto de software: es **contenido pedagógico** (presentaciones, casos de uso, insumos
de práctica, prompts y registros de asistencia), organizado en **8 módulos** que van desde el uso
seguro de ChatGPT hasta la creación de GPTs, Agentes y Skills, siempre con ejemplos aterrizados al
negocio de Solclef.

- **Mantenido por:** Yehimy Rincón (yehimy.rincon@raona.com) — Raona
- **Cliente:** Solclef
- **Repositorio:** https://github.com/yehimy-rincon-raona/solclef-sesiones-chat-gpt

---

## 🚀 Empezar aquí (para personas y para IAs)

**Si eres una persona o un asistente de IA que retoma el proyecto, lee primero el resumen más
reciente** para tener todo el contexto sin empezar de cero:

> 📄 **[`_historico/RESUMEN_001.md`](_historico/RESUMEN_001.md)** — o el de número más alto en
> [`_historico/`](_historico/) (siempre el último es el estado más actual).

Ahí está: qué es el proyecto, su estructura, el estado de cada módulo, la logística (grupos,
calendario, asistencia), el estado de los videos y la lista de pendientes.

---

## 📂 Estructura del repositorio

```
.
├── Módulo 1 … Módulo 8 / Modulo 7   ← contenido por módulo (ver tabla abajo)
├── _historico/                      ← resúmenes del proyecto (onboarding) + índice
├── .ai/                             ← configuración de IA (fuente de verdad + script de sync)
├── img/                             ← recursos gráficos compartidos
├── Grabaciones Grupo 02/            ← grabaciones por sesión del Grupo 02
├── Grabaciones sin subir a SharePoint/  ← videos pendientes de subir
├── CLAUDE.md / AGENTS.md            ← notas de contexto para asistentes de IA
├── .github/copilot-instructions.md  ← nota de contexto para GitHub Copilot
├── .gitignore                       ← excluye videos y archivos pesados
└── README.md                        ← este archivo
```

> ⚠️ **Ojo con los nombres:** la mayoría usa "Módulo N" (con tilde), pero **"Modulo 7" va sin tilde**.

### Patrón de cada módulo
```
Módulo N/
├── [SOL] Módulo N - Presentación.pptx/.pdf   ← slides de la sesión
├── ModN-Casos_de_uso/   ← ejercicios prácticos (CU1, CU2, …)
├── ModN-Insumos/        ← archivos de apoyo (PDFs, xlsx, imágenes, correos)
└── Trazabilidad/        ← asistencia por grupo (CSV) + seguimiento (xlsx)
```

---

## 📚 Contenido por módulo

| Módulo | Tema | Estado |
|---|---|---|
| **1** | Uso seguro de IA: anonimización (PII), prompt injection, casos por área | ✅ Completo |
| **2** | Fundamentos de prompting: zero/few-shot, XML, grounding, plantillas (+ "Casos al margen") | ✅ Muy completo |
| **3** | Prompting aplicado: chaining, flujos controlados, nómina, atención al cliente | ✅ Completo |
| **4** | Funciones de ChatGPT: Deep Research, personalización, memoria, programaciones | ✅ Completo |
| **5** | Funciones avanzadas: Canvas, Notion, voz, imágenes, modo Agente, **Proyectos** | ⚠️ Sin pptx |
| **6** | **Crear GPTs** (GPT Builder): metodología, guion docente, casos de GPTs Solclef | ⚠️ Sin pptx |
| **7** | **Proyectos complejos**: lanzamiento de marketing + radar de licitaciones | ⚠️ Sin pptx |
| **8** | **Agentes y Skills**: casos, planeador de viajes, base de conocimiento | ✅ Completo |

> Detalle completo de cada módulo, calendario y pendientes en el
> [resumen más reciente](_historico/RESUMEN_001.md).

---

## 🤖 Contexto automático para asistentes de IA

Para que **cualquier IA** (Claude, GitHub Copilot, Codex…) tenga el contexto del proyecto al
iniciar un chat nuevo —**sin explicárselo desde cero**— el repo incluye unas "notas de bienvenida"
que cada herramienta lee automáticamente:

| Asistente | Archivo que lee solo | 
|---|---|
| Claude Code | `CLAUDE.md` |
| GitHub Copilot | `.github/copilot-instructions.md` |
| Codex / OpenAI y otros | `AGENTS.md` |

Esos tres archivos contienen lo mismo y le indican a la IA que lea primero el resumen más reciente.

### Cómo se mantienen sincronizados
- **Se edita solo un archivo maestro:** [`.ai/CONTEXTO_IA.md`](.ai/CONTEXTO_IA.md)
- **Un script regenera las copias:** `.ai/sincronizar.ps1`
  ```powershell
  powershell -ExecutionPolicy Bypass -File ".\.ai\sincronizar.ps1"
  ```
- **Nunca edites** `CLAUDE.md`, `AGENTS.md` ni `copilot-instructions.md` a mano: se sobrescriben.

---

## 📝 Comando "resumen" (cómo actualizar el contexto)

Cuando le digas a la IA la palabra **`resumen`**, generará un **nuevo archivo numerado**
(`RESUMEN_002.md`, `RESUMEN_003.md`, …) en [`_historico/`](_historico/) con el estado actualizado
del proyecto. **No se borran los anteriores**: cada uno es una "foto" del proyecto en su fecha.

---

## 🎥 Videos y archivos pesados

Las grabaciones de las sesiones (`.mp4`, hasta ~550 MB c/u) **no se suben a Git** —están excluidas
en el [`.gitignore`](.gitignore) junto con audio y comprimidos. Las grabaciones se conservan en
**SharePoint** (las pendientes están en `Grabaciones sin subir a SharePoint/`).

> ⚠️ GitHub limita los archivos a **100 MB**. Antes de añadir un nuevo tipo de archivo pesado,
> verifica que esté cubierto por `.gitignore`.

---

## 🧭 Reglas de trabajo

1. Todo el material en **español**, tono didáctico/operativo.
2. Ejemplos aterrizados a **Solclef** (energía solar, plantas, licitaciones, ventas, RRHH, marketing).
3. **Datos siempre ficticios o anonimizados** (regla de PII del Módulo 1).
4. Respetar la **estructura y nomenclatura** de módulos y casos de uso.
5. **Nada de archivos pesados** al repo (van a SharePoint).
6. En PowerShell, usar `-LiteralPath` y rutas absolutas (la ruta tiene `[`, `]`, espacios y tildes).