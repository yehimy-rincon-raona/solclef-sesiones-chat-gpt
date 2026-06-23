# Prompts de uso — Agente de triaje y enrutamiento de incidencias

> **Dónde se usa:** en el Agent Builder (construcción y preview) o en el Modo Agente con los avisos adjuntos.

---

## 1 — Prompt de construcción (Agent Builder)

```text
Quiero un agente de triaje de incidencias para el equipo de O&M. Cuando llega un aviso de incidencia (un correo de alarma o un formulario), debe extraer los datos clave, clasificar la criticidad, comprobar si ya existe un ticket relacionado, crear un borrador de ticket con todo el contexto y enrutarlo al equipo correcto, notificando en Teams. Si es crítico o alto, debe escalarlo de inmediato. No debe cerrar ni resolver incidencias, ni contactar a proveedores por su cuenta.
```

---

## 2 — Ejecución manual en vista previa (con archivo adjunto)

> Adjunta `insumos/avisos-incidencias-ficticios.md` y envía:

```text
Procesa estos avisos uno a uno y aplica el triaje: clasifica la criticidad, comprueba duplicados, crea el borrador de ticket, enruta y escala lo crítico.
```

---

## 3 — Variantes de uso

### Un solo aviso pegado en el chat

```text
Aplica el triaje a este aviso: clasifica la criticidad, comprueba si habría un ticket relacionado, propón el borrador de ticket, el equipo de enrutamiento y si hay que escalar.

---
[PEGA AQUÍ EL AVISO]
```

### Resumen de la cola del día

```text
Procesa todos los avisos del archivo y, al final, dame una tabla resumen: cuántos hay por criticidad, cuáles se escalaron y a qué equipo se enrutó cada uno.
```

### Contrastar un código de alarma de fabricante

```text
Para el aviso del inversor con código de alarma, antes de clasificarlo busca en la web el significado oficial del código según el fabricante y, si no coincide con la descripción del aviso, márcalo para soporte de fabricante.
```

### Solo lo crítico

```text
Procesa los avisos pero muéstrame únicamente los Críticos y Altos que requieren escalado inmediato, con el responsable sugerido para cada uno.
```

---

## 4 — Mensaje inicial para el disparador por evento

> En la configuración del desencadenador (al llegar un correo/formulario):

```text
triar incidencia entrante
```
