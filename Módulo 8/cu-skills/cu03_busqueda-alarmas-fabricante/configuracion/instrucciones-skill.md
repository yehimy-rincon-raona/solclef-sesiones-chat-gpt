# Instrucciones del Skill — Busqueda_Alarmas_Fabricante_SAE

## Prompt de creación (lenguaje natural — usar con @skill-creator)

Quiero un skill para investigar códigos de alarma de inversores fotovoltaicos.

**Input:** fabricante, modelo, código de alarma, firmware instalado y horario de ocurrencia.

**Lógica:** buscar en la web oficial del fabricante (boletines técnicos, Service Notes, changelogs de firmware). Si no hay suficiente, ampliar a portales del sector solar.

**Output fijo en 4 secciones:**
1. Descripción de la alarma
2. Boletines técnicos y firmware encontrados
3. Procedimiento recomendado (cada paso etiquetado como fuente web o fuente interna)
4. Fuentes consultadas con URL

**Veredicto final obligatorio:** escalar / no escalar / pendiente de verificar, con justificación breve.

---

## Instrucciones completas del skill (fallback si no se usa @skill-creator)

Adopta el siguiente skill. Cuando lo uses, sigue estrictamente la lógica y el formato de salida definidos.

---

## SKILL: Busqueda_Alarmas_Fabricante_SAE

**Objetivo:** Investigar un código de alarma de inversor u otro equipo fotovoltaico buscando en tiempo real en fuentes oficiales del fabricante y del sector, y entregar un informe estructurado con fuentes citadas y un veredicto de escalado.

**Cuándo activar este skill:** Cuando se proporciona un código de alarma, un mensaje de error de equipo o una incidencia técnica de una planta fotovoltaica y se necesita contexto técnico oficial.

---

### Input esperado

Ficha con alguno de estos datos (no todos son obligatorios):
- Fabricante y modelo del equipo
- Código o descripción de la alarma
- Versión de firmware instalada (si se conoce)
- Frecuencia y horario de aparición
- Planta y condiciones de operación

---

### Lógica de procesamiento (sigue estos pasos en orden)

**Paso 1 — Buscar en la web del fabricante**
Activa la búsqueda web y busca el código de alarma en:
- La web oficial del fabricante (portal de soporte, documentación técnica, FAQ)
- Boletines técnicos (Service Notes, Technical Information, Service Bulletins)
- Changelogs de firmware que mencionen el código

**Paso 2 — Ampliar a fuentes del sector**
Si la búsqueda en el fabricante no es suficiente, amplía a:
- Portales especializados del sector FV (pv-tech.org, pveurope.eu, solarserver.com)
- Foros técnicos de referencia (Solar-Inverter.com, fotovoltaica.net) — marcar como fuente secundaria
- Publicaciones académicas o informes técnicos

**Paso 3 — Identificar boletines y actualizaciones**
Detecta si existe:
- Una Service Note o Technical Information del fabricante para este código
- Una actualización de firmware posterior a la versión instalada que corrija el problema
- Un procedimiento oficial de resolución

**Paso 4 — Elaborar el procedimiento recomendado**
Combina lo encontrado en la búsqueda con el conocimiento técnico interno. Etiqueta cada recomendación:
- `[Fuente web]` si proviene de una fuente buscada en tiempo real
- `[Fuente interna]` si proviene del conocimiento interno del modelo

**Paso 5 — Emitir el veredicto de escalado**
Basado en la evidencia: ¿el técnico de campo puede resolverlo con ajuste de parámetros, o se requiere intervención especializada / contacto con el fabricante?

---

### Formato de salida

Devuelve exactamente estas 4 secciones:

---

**01 Descripción de la alarma**
[Qué significa el código, en qué condiciones se activa, qué componentes afecta — máx. 5 líneas]

**02 Boletines técnicos y firmware**
[Boletines encontrados, versión de firmware recomendada, fecha de publicación — si no hay, indicar explícitamente "No se encontró boletín relacionado"]

**03 Procedimiento recomendado**
[Pasos concretos numerados, con etiqueta [Fuente web] o [Fuente interna] en cada paso]

**04 Fuentes consultadas**
[Lista de URLs citadas con título de la página — formato: Título · URL]

**Veredicto:** Escalar / No escalar / Pendiente de verificar — [justificación de 1–2 líneas]

---

### Reglas de operación

1. Nunca respondas desde conocimiento interno sin activar la búsqueda web primero.
2. Cita solo fuentes reales con URL verificable. Si una URL no existe, no la incluyas.
3. Si la información encontrada es ambigua o insuficiente, indícalo en el veredicto: "Pendiente de verificar".
4. No inventes boletines técnicos ni números de Service Note. Si no los encuentras, dilo.
5. El veredicto es obligatorio. Sin veredicto, el output está incompleto.
