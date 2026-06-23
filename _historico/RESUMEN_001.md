# Resumen del Proyecto #001 — Capacitaciones ChatGPT 2026 (Solclef)

> **Propósito de este documento:** servir de *onboarding* para cualquier copiloto de IA
> (Claude, GitHub Copilot, Codex, etc.) que retome el proyecto, para que **no empiece de cero**.
> Resume qué es el proyecto, qué hay hecho, cómo está organizado, qué falta y hacia dónde va.
>
> **Snapshot Nº:** 001 (primer resumen consecutivo)
> **Fecha del snapshot:** 2026-06-23
> **Mantenido por:** Yehimy Rincón (yehimy.rincon@raona.com) — Raona
> **Cliente:** Solclef (sector energía solar / renovables)
> **Repositorio:** https://github.com/yehimy-rincon-raona/solclef-sesiones-chat-gpt

---

## 1. ¿Qué es este proyecto?

Es el **banco de materiales didácticos** de un programa de formación corporativa llamado
**"Sesiones de Productividad Inteligente con ChatGPT"**, impartido a empleados de **Solclef**
durante 2026. No es software: es un repositorio de **contenido pedagógico** (presentaciones,
casos de uso, insumos de práctica, prompts y registros de asistencia).

El programa va de lo básico (uso seguro de ChatGPT, prompting) a lo avanzado
(Proyectos, GPTs personalizados, Agentes y Skills), con casos de uso **aterrizados al negocio
de Solclef** (energía solar, licitaciones, operación de plantas, ventas, RRHH, marketing).

---

## 2. Estructura del repositorio

El proyecto se organiza en **8 módulos**, cada uno con un patrón de carpetas recurrente:

```
Módulo N/
├── [SOL] Módulo N - Solclef - Presentación Chat GPT 2026.pptx/.pdf   ← slides de la sesión
├── ModN-Casos_de_uso/     ← ejercicios prácticos que se hacen en vivo (CU1, CU2, …)
├── ModN-Insumos/          ← archivos de apoyo para los casos (PDFs, xlsx, imágenes, correos)
└── Trazabilidad/          ← asistencia por grupo (CSV) + seguimiento (xlsx)
```

> ⚠️ **Inconsistencia de nombres a tener en cuenta:** la mayoría usa "Módulo N" (con tilde),
> pero **"Modulo 7"** va **sin tilde**. Respetar el nombre exacto al referenciar rutas.

### Carpetas en la raíz
- `Módulo 1` … `Módulo 8` y `Modulo 7` — contenido por módulo.
- `_historico/` — este resumen y futura documentación histórica.
- `img/` — recursos gráficos compartidos.
- `Grabaciones Grupo 02/` — subcarpetas por sesión del Grupo 02 + `asistentes_por_sesiones.md`.
- `Grabaciones sin subir a SharePoint/` — videos pendientes de subir al SharePoint oficial.
- `.claude/` — configuración de Claude Code para el proyecto.
- `Material para descargar (Módulos capacitaciones).docx` — índice/material entregable.
- `.gitignore` — **excluye videos y archivos pesados** (ver sección 6).

---

## 3. Contenido por módulo (qué enseña cada uno)

| Módulo | Tema | Estado del material | Notas |
|---|---|---|---|
| **1** | Uso seguro de IA: anonimización de datos (PII), prompt injection, casos por área (Marketing, RRHH, Ventas, Operaciones, Líderes) | ✅ Completo (9 CU + insumos + pptx/pdf) | Base de "higiene de datos" antes de usar IA |
| **2** | Fundamentos de prompting: resumen ejecutivo, zero-shot vs few-shot, XML, grounding, plantillas. Incluye **~19 "Casos al margen"** extra | ✅ Muy completo (pptx + CU en .md y .txt) | El módulo con más material complementario |
| **3** | Prompting aplicado/avanzado: prompt chaining, flujos controlados, conciliación de nómina, análisis de reportes, atención al cliente | ✅ Completo (CU9–CU18 + insumos reales: xlsx, pdf, tickets) | Casos con datos tipo-negocio |
| **4** | Funciones de ChatGPT: Deep Research, personalización, configuración, memoria, programaciones (tareas) | ✅ Completo (CU0–CU5 + pptx) | Menos insumos; foco en la herramienta |
| **5** | Funciones avanzadas: Canvas, Notion, voz/micrófono, generación de imágenes, modo Web/Agente, **Proyectos** | ⚠️ Sin pptx (solo CU + insumos) | Insumos ricos (ventas, pipeline, políticas) |
| **6** | **Crear GPTs personalizados** (GPT Builder): metodología "North Star", guion docente, fases de clase, casos de GPTs Solclef (plantillas, creador de GPTs, API meteo-energética con Actions) | ⚠️ Sin pptx; incluye material docente detallado y varias versiones `_deprecado_` | El más metodológico; reutiliza nomenclatura "Mod7GPT" en una subcarpeta |
| **7** (`Modulo 7`) | **Proyectos complejos end-to-end**: (a) Lanzamiento de marketing, (b) Radar de licitaciones (con casos reales tipo IFAD y WHO) | ⚠️ Sin pptx; estructura paso-a-paso + prompts + insumos `.docx` | Casos largos, multi-paso, con prompts versionados |
| **8** | **Agentes y Skills de ChatGPT**: casos de agentes (reporte diario, triaje de incidencias), casos de skills (BOQs, torres meteorológicas, alarmas SMA, termografía), proyecto planeador de viajes, base de conocimiento sobre agentes/skills | ✅ Completo (pptx/pdf + mucho material) | El módulo más extenso; carpetas `_knowledge_*` con teoría |

### Convención de los casos de uso (CU)
- Módulos 1–5: archivos sueltos `CUn-Nombre.md` (a veces también `.txt`).
- Módulos 6–8: cada CU es una **carpeta** con subestructura estándar:
  ```
  cuNN_nombre/
  ├── 00_ficha.md          ← resumen del caso
  ├── 01_ejercicio.md      ← enunciado para el alumno
  ├── 02_paso-a-paso.md    ← guía de ejecución
  ├── configuracion/       ← instrucciones del GPT/Agente/Skill
  ├── insumos/             ← datos ficticios de apoyo
  └── prompts/             ← prompts de uso
  ```
- Prefijo `_deprecado_` = versiones antiguas conservadas como historial (no usar en clase).

---

## 4. Logística del programa (grupos, calendario, trazabilidad)

- **5 grupos** de alumnos (Grupo 01 a Grupo 05), identificados en los CSV de asistencia.
- El programa arrancó en **marzo de 2026**:
  - Módulo 1 ≈ semana del 2–6 de marzo
  - Módulo 2 ≈ 9–13 de marzo
  - Módulo 3 ≈ 16–20 de marzo
  - Módulo 4 ≈ 24–25 de marzo
- El **Grupo 02 continúa activo** con módulos avanzados hasta **junio de 2026**
  (sesiones 02 a 08; la Sesión 08 es del **23-06-26**, fecha de esta actualización).
- **Trazabilidad**: cada módulo guarda los `Informe de asistencia *.csv` por grupo y un
  `Asistencias y seguimiento.xlsx` consolidado.

---

## 5. Estado de las grabaciones (videos)

- Cada sesión se graba en **`.mp4`** (≈ 60–550 MB cada uno; ~25 videos, varios GB en total).
- **Los videos NO están en Git** (ver sección 6). Viven en el sistema de archivos local /
  OneDrive y deben subirse a **SharePoint** como repositorio oficial de grabaciones.
- `Grabaciones sin subir a SharePoint/` contiene videos **pendientes de subir** (p. ej. Grupo 02
  Sesiones 03 y 04 de mayo) — **tarea operativa pendiente**.

---

## 6. Git y exclusiones (importante para cualquier copiloto)

- Repo Git inicializado; rama principal **`main`**; remoto **`origin`** = el repositorio de GitHub.
- El **commit inicial** subió **428 archivos** de contenido (sin videos).
- El **`.gitignore`** excluye deliberadamente lo pesado:
  - **Videos**: `.mp4 .mov .avi .mkv .wmv .flv .webm .m4v .mpg .mpeg`
  - **Audio**: `.wav .flac .aac .m4a`
  - **Comprimidos/binarios**: `.zip .rar .7z .tar .gz .iso`
  - **Temporales** de Windows/macOS/Office (`Thumbs.db`, `.DS_Store`, `~$*`, etc.)
- ⚠️ **Regla**: GitHub limita archivos a **100 MB**. Antes de añadir un nuevo tipo de archivo
  pesado, verificar que esté cubierto por `.gitignore`.
- ⚠️ El proyecto vive dentro de **OneDrive**; evitar tocar `.git/` mientras OneDrive sincroniza.

---

## 7. Qué falta / próximos pasos (proyección)

**Material pendiente o por homogeneizar:**
- [ ] **Presentaciones (`.pptx`) de los Módulos 5, 6 y 7** — actualmente no existen; el resto sí las tiene.
- [ ] Homogeneizar el nombre de **"Modulo 7"** (sin tilde) con el resto ("Módulo N").
- [ ] Limpiar/archivar las carpetas `_deprecado_*` del Módulo 6 si ya no se usan.
- [ ] Revisar duplicación de material del Módulo 6 entre `Mod6-Insumos/` y `Mod6-Build/04-insumos_builder/` (contenido casi idéntico).

**Operativo:**
- [ ] **Subir a SharePoint** los videos de `Grabaciones sin subir a SharePoint/`.
- [ ] Cerrar la trazabilidad del **Grupo 02** (en curso hasta junio 2026).
- [ ] Confirmar si los Grupos 01, 03, 04 y 05 cursarán los módulos avanzados (5–8) o solo el Grupo 02.

**Repositorio:**
- [ ] (Opcional) Crear `README.md` en la raíz con la descripción del proyecto.
- [ ] (Opcional) Añadir la descripción corta en el campo "Description" de GitHub.

---

## 8. Cómo trabajar en este proyecto (guía rápida para el copiloto)

1. **Idioma**: todo el material está en **español**; mantener ese idioma y el tono didáctico/operativo.
2. **Aterrizaje al negocio**: los ejemplos se ambientan en Solclef (energía solar, plantas,
   licitaciones, ventas). Al crear material nuevo, mantener esa coherencia sectorial.
3. **Respetar la estructura** de carpetas y la nomenclatura de CU (ver sección 3) para que el
   material sea consistente entre módulos.
4. **No exponer datos reales**: el Módulo 1 establece la regla de anonimización (PII). Todos los
   insumos deben ser **ficticios** o anonimizados.
5. **Nada de archivos pesados al repo**: si generas videos/audio/binarios grandes, déjalos fuera
   de Git (ya cubiertos por `.gitignore`) y, si son grabaciones, súbelos a SharePoint.
6. **Rutas con caracteres especiales**: la ruta raíz contiene `[`, `]`, espacios y tildes
   (`[1-SOL] Solclef - Capacitaciones Chat GPT 2026`). En PowerShell usar `Set-Location -LiteralPath`.

---

*Este documento es un punto de partida vivo. Si retomas el proyecto y detectas que algo cambió,
actualiza este archivo dentro de `_historico/` para que el siguiente copiloto siga teniendo una
imagen fiel del estado real.*