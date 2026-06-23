# CLAUDE.md — Lineamientos del proyecto

> Este archivo lo lee Claude Code **automáticamente al iniciar cada chat nuevo** en este
> proyecto. Su función es dar contexto inmediato y fijar las reglas de trabajo, para no
> empezar nunca desde cero.

---

## ⭐ Lo primero que debes hacer en un chat nuevo

**Antes de responder cualquier cosa, LEE el resumen más reciente del proyecto:**

> 📄 `_historico/RESUMEN_NNN.md` → abre **el de número más alto** (es el estado más actual).
> Hoy el último es **`_historico/RESUMEN_001.md`**.

Ese archivo contiene: qué es el proyecto, su estructura, el estado de cada módulo, la
logística (grupos, calendario, trazabilidad), el estado de los videos y la lista de
pendientes. Con eso ya tienes el contexto completo para empezar a trabajar.

---

## 🔑 Qué es este proyecto (resumen de una línea)

Banco de **materiales didácticos** del programa de formación *"Sesiones de Productividad
Inteligente con ChatGPT"* para el cliente **Solclef** (energía solar), organizado en **8 módulos**.
No es software: es contenido pedagógico (presentaciones, casos de uso, insumos, prompts, asistencia).

---

## 📌 LINEAMIENTO: el comando "resumen"

**Cuando el usuario diga la palabra `resumen` (o "haz resumen" / "haz un resumen"), el trigger es:**

1. **Crear un NUEVO archivo consecutivo** en `_historico/` con el nombre `RESUMEN_NNN.md`,
   donde `NNN` = el siguiente número correlativo (mirar el más alto existente y sumar 1).
   - Ej.: si el último es `RESUMEN_001.md`, el nuevo es `RESUMEN_002.md`.
   - **Nunca sobrescribir** un resumen anterior: cada uno es una "foto" del estado en su fecha.
2. **Usar la misma estructura** del `RESUMEN_001.md` (es la plantilla):
   propósito · qué es · estructura del repo · contenido por módulo · logística ·
   estado de grabaciones · Git y exclusiones · qué falta/proyección · guía de trabajo.
3. **Actualizar el contenido al estado real de ese momento**: explorar el proyecto, detectar
   cambios desde el resumen anterior y reflejarlos. En el encabezado poner el `Snapshot Nº` y
   la `Fecha del snapshot`.
4. Añadir una línea al índice `_historico/INDICE.md` apuntando al nuevo resumen.
5. (Si el repo lo permite) ofrecer hacer commit del nuevo resumen.

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
   En PowerShell usar siempre `Set-Location -LiteralPath` / `-LiteralPath` y rutas absolutas.

---

## 🗂️ Referencias rápidas

- **Resúmenes históricos / onboarding**: `_historico/RESUMEN_NNN.md` (leer el más alto).
- **Índice de resúmenes**: `_historico/INDICE.md`.
- **Repositorio**: https://github.com/yehimy-rincon-raona/solclef-sesiones-chat-gpt (rama `main`).
- **Exclusiones de Git**: `.gitignore` (videos, audio, comprimidos, temporales).