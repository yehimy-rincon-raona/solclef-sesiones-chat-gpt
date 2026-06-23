# Prompt para replicar esta automatización en otro proyecto

Este es el prompt reutilizable que monta el sistema de **contexto automático para asistentes de
IA** (el mismo que tiene este proyecto). Cópialo y pégalo al inicio de un chat nuevo dentro del
proyecto donde lo quieras montar, rellenando lo que está entre `<corchetes>`.

> **Qué hace, en breve:** crea una *fuente de verdad* (`.ai/CONTEXTO_IA.md`) y un *script* que
> genera las copias que cada IA lee sola (`CLAUDE.md`, `AGENTS.md`, `.github/copilot-instructions.md`),
> más un resumen de onboarding en `_historico/` y un comando `resumen` para actualizarlo. Así ningún
> chat nuevo empieza desde cero y todo queda sincronizado.

---

## Prompt (copiar desde aquí)

````markdown
Quiero montar en este proyecto un sistema de **contexto automático para asistentes de IA**,
para que ningún chat nuevo (Claude, GitHub Copilot, Codex, etc.) empiece desde cero.
Configúralo tú creando los archivos y, si hay repo Git, haz commit. Datos del proyecto:

- Nombre del proyecto: <NOMBRE>
- De qué trata (1-2 líneas): <DESCRIPCIÓN>
- Responsable / contacto: <NOMBRE y EMAIL>
- Repositorio (si existe): <URL o "ninguno">
- Sistema operativo / shell: <ej. Windows + PowerShell / macOS + bash>

Haz lo siguiente:

1. EXPLORA el proyecto y crea un resumen de onboarding en `_historico/RESUMEN_001.md` con:
   propósito · qué es · estructura de carpetas · contenido/estado · logística · estado de
   archivos pesados · Git y exclusiones · qué falta (proyección) · reglas de trabajo.
   En el encabezado pon "Snapshot Nº" y "Fecha del snapshot". Crea también
   `_historico/INDICE.md` (tabla: Nº | archivo | fecha | hito) apuntando a ese resumen.

2. Crea una FUENTE DE VERDAD única en `.ai/CONTEXTO_IA.md` con los lineamientos del proyecto:
   - Instrucción "lo primero en un chat nuevo: lee el `_historico/RESUMEN_NNN.md` de número más alto".
   - Resumen del proyecto en una línea.
   - LINEAMIENTO del comando "resumen": cuando el usuario diga "resumen", crear el SIGUIENTE
     archivo consecutivo `RESUMEN_NNN.md` (nunca sobrescribir), actualizado al estado real, y
     añadir su línea al índice.
   - Reglas de trabajo del proyecto.
   - Sección de sincronización (explicada en el punto 3).

3. Crea un SCRIPT de sincronización (`.ai/sincronizar.<sh|ps1>` según mi SO) que tome
   `.ai/CONTEXTO_IA.md` como origen y REGENERE estas tres copias, cada una con un aviso
   "ARCHIVO GENERADO AUTOMÁTICAMENTE — NO EDITAR A MANO":
   - `CLAUDE.md`                       (lo lee Claude Code)
   - `AGENTS.md`                       (lo leen Codex / OpenAI y otras herramientas)
   - `.github/copilot-instructions.md` (lo lee GitHub Copilot)
   Ejecuta el script para generarlas. La regla es: solo se edita `.ai/CONTEXTO_IA.md` y se
   corre el script; nunca se editan las copias a mano.

4. Crea/actualiza un `README.md` en la raíz que consolide: descripción del proyecto, estructura,
   cómo funciona el contexto automático para IAs, el comando "resumen", y las reglas de trabajo.

5. Si hay archivos pesados (videos, binarios grandes), crea/ajusta `.gitignore` para excluirlos
   y avísame qué quedó fuera.

6. Si hay repo Git, haz commit (y push si hay remoto) de todo lo creado, con mensajes claros.

Al terminar, muéstrame un resumen de los archivos creados y cómo se usa el comando "resumen".
````

---

## Notas de uso

- **El "motor"** es la *fuente de verdad* + el *script*: eso evita repetir contexto y mantiene
  las copias sincronizadas.
- En **macOS/Linux** pide el script en `.sh` (bash); en **Windows** en `.ps1` (PowerShell).
- El prompt es **genérico**: sirve tanto para proyectos de código como de documentos.
- Tras montarlo, para actualizar el contexto basta con decir **`resumen`** en cualquier chat.