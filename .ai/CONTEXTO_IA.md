<!-- FUENTE DE VERDAD. No edites CLAUDE.md, AGENTS.md ni .github/copilot-instructions.md a mano:
     edita ESTE archivo y ejecuta `.ai/sincronizar.ps1` para regenerarlos todos. -->

> Este archivo da el **contexto y los lineamientos del proyecto** a cualquier asistente de IA
> (Claude, GitHub Copilot, Codex, etc.). El objetivo es que **ningún chat nuevo empiece desde cero**.

---

## ⭐ Lo primero que debes hacer en un chat nuevo

**Antes de responder cualquier cosa, LEE el resumen más reciente del proyecto:**

> 📄 `_historico/RESUMEN_NNN.md` → abre **el de número más alto** (es el estado más actual).
> A la fecha, el último es **`_historico/RESUMEN_001.md`**.

Ese archivo contiene: qué es el proyecto, su estructura, el estado de cada módulo, la logística
(grupos, calendario, trazabilidad), el estado de los videos y la lista de pendientes. Con eso ya
tienes el contexto completo para trabajar.

---

## 🔑 Qué es este proyecto (en una línea)

Banco de **materiales didácticos** del programa de formación *"Sesiones de Productividad
Inteligente con ChatGPT"* para el cliente **Solclef** (energía solar), organizado en **8 módulos**.
No es software: es contenido pedagógico (presentaciones, casos de uso, insumos, prompts, asistencia).

---

## 📌 LINEAMIENTO: el comando "resumen"

**Cuando el usuario diga la palabra `resumen` (o "haz resumen" / "haz un resumen"), el trigger es:**

1. **Crear un NUEVO archivo consecutivo** en `_historico/` con nombre `RESUMEN_NNN.md`, donde
   `NNN` = el siguiente número correlativo (mirar el más alto existente y sumar 1).
   - Ej.: si el último es `RESUMEN_001.md`, el nuevo es `RESUMEN_002.md`.
   - **Nunca sobrescribir** un resumen anterior: cada uno es una "foto" del estado en su fecha.
2. **Usar la misma estructura** del `RESUMEN_001.md` (es la plantilla): propósito · qué es ·
   estructura del repo · contenido por módulo · logística · estado de grabaciones · Git y
   exclusiones · qué falta/proyección · guía de trabajo.
3. **Actualizar el contenido al estado real de ese momento**: explorar el proyecto, detectar
   cambios desde el resumen anterior y reflejarlos. En el encabezado poner el `Snapshot Nº` y la
   `Fecha del snapshot`.
4. Añadir una línea al índice `_historico/INDICE.md` apuntando al nuevo resumen.
5. Si la configuración de IA cambió, **re-sincronizar** (ver sección de sincronización).
6. (Si el repo lo permite) ofrecer hacer commit del nuevo resumen.

> En resumen: **"resumen" = generar el siguiente snapshot numerado, sin borrar los anteriores.**

---

## 🧭 Reglas de trabajo en el proyecto

1. **Idioma**: todo en **español**, con tono didáctico/operativo.
2. **Aterrizaje al negocio**: ejemplos ambientados en Solclef (energía solar, plantas,
   licitaciones, ventas, RRHH, marketing). Mantener coherencia sectorial al crear material.
3. **Datos siempre ficticios o anonimizados** (regla de PII del Módulo 1). Nunca exponer datos reales.
4. **Respetar la estructura y nomenclatura** de módulos y casos de uso (ver el resumen).
   Ojo: la carpeta **"Modulo 7" va sin tilde**; el resto es "Módulo N".
5. **Nada de archivos pesados al repo**: videos/audio/binarios grandes quedan fuera de Git
   (ya cubiertos por `.gitignore`). Las grabaciones van a **SharePoint**.
6. **Rutas con caracteres especiales**: la raíz contiene `[`, `]`, espacios y tildes.
   En PowerShell usar siempre `-LiteralPath` y rutas absolutas.

---

## 🔄 Sincronización de la configuración de IA (importante)

Para que **cualquier asistente** tenga el mismo contexto, hay un único origen y varias copias:

- **Fuente de verdad (editar solo aquí):** `.ai/CONTEXTO_IA.md`
- **Archivos generados (NO editar a mano):**
  - `CLAUDE.md` → lo carga **Claude Code** automáticamente.
  - `.github/copilot-instructions.md` → lo carga **GitHub Copilot** automáticamente.
  - `AGENTS.md` → estándar que cargan **Codex / OpenAI** y varias herramientas.
- **Para re-sincronizar tras cualquier cambio:** ejecutar `.ai/sincronizar.ps1`
  (regenera los tres archivos a partir de la fuente). Mantén todo bajo control de versiones.

> Si editas la configuración, **edita `.ai/CONTEXTO_IA.md` y ejecuta el script**. Nunca edites las copias.

---

## 🗂️ Referencias rápidas

- **Resúmenes históricos / onboarding**: `_historico/RESUMEN_NNN.md` (leer el más alto).
- **Índice de resúmenes**: `_historico/INDICE.md`.
- **Repositorio**: https://github.com/yehimy-rincon-raona/solclef-sesiones-chat-gpt (rama `main`).
- **Exclusiones de Git**: `.gitignore` (videos, audio, comprimidos, temporales).