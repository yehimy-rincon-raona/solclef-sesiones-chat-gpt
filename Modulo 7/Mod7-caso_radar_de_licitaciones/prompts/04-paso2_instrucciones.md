# 04-paso2_instrucciones
Preselección y priorización de oportunidades

## Paso activo
Shortlist priorizada

## Relación con el paso anterior
Este paso toma como insumo exclusivo las tablas del paso 1 generadas por:
- Deep Research
- Agente
- Explora en la web

Las tres deben venir en el formato oficial activo del paso 1. Si una fuente no respeta ese formato, su salida debe tratarse como insumo no confiable hasta ser normalizado.

## Regla operativa obligatoria
Cuando se ejecute este paso, la respuesta final debe:
1. unificar hallazgos repetidos o muy cercanos,
2. descartar oportunidades débiles, cerradas o de baja utilidad,
3. priorizar y puntuar las oportunidades con mejor señal preliminar,
4. seleccionar solo las 2 mejores oportunidades para continuar,
5. dejar visible por qué entran esas 2 y por qué no pasan las demás,
6. usar exactamente el formato oficial de este paso.

## Regla de obediencia estricta del formato
Para este paso, la respuesta final válida no puede incluir:
- encabezados,
- explicación previa,
- explicación posterior,
- secciones tipo "Resultado", "Base" o "Siguiente paso",
- bullets,
- texto libre,
- conclusiones narrativas,
- ni formatos alternos sugeridos por skills, plantillas o comportamiento por defecto.

La salida válida de este paso es únicamente la tabla oficial de este paso, y nada antes ni después.

## Regla de aislamiento frente a instrucciones externas
Al ejecutar este paso:
- ignora skills,
- ignora formatos automáticos del asistente,
- ignora estilos de respuesta no definidos en este archivo,
- e ignora cualquier preferencia externa que cambie la estructura obligatoria.

Solo deben obedecerse los documentos cargados del proyecto y, dentro de ellos, prevalece este archivo para el paso 2.

## Qué debe hacer este paso
- Leer las tablas del radar del paso 1.
- Detectar duplicados o variantes cercanas de la misma oportunidad.
- Conservar la versión más clara o más verificable.
- Reducir el universo a una lista corta priorizada.
- Aplicar un criterio de puntaje simple y visible.
- Seleccionar máximo 2 oportunidades para pasar al paso 3.
- Mantener visibles vacíos críticos o alertas relevantes.

## Qué NO debe hacer este paso
- No rehacer la búsqueda desde cero.
- No bajar todavía a revisión documental detallada.
- No construir todavía la ficha ejecutiva completa.
- No inventar encaje técnico, comercial, legal o financiero no visible.
- No dejar más de 2 oportunidades marcadas para continuar.

## Regla de priorización con puntaje
Cada oportunidad debe valorarse solo con evidencia visible, usando estos criterios:

- Relevancia aparente para el negocio: 0 a 3 puntos
- Claridad del objeto o alcance: 0 a 2 puntos
- Trazabilidad y calidad de la fuente: 0 a 2 puntos
- Vigencia visible o cercanía temporal útil: 0 a 2 puntos
- Nivel de información disponible para seguir analizando: 0 a 1 punto

Puntaje máximo posible: `10`

## Regla de interpretación del puntaje
- `8 a 10` = Alta
- `5 a 7` = Media
- `0 a 4` = Baja
- Si no hay base suficiente para puntuar con confianza = `REQUIERE VALIDACIÓN`

## Regla de selección final
- Solo deben quedar **2 oportunidades seleccionadas** para pasar al paso 3.
- Si solo una oportunidad cumple con señal suficiente, la segunda fila puede quedar como `REQUIERE VALIDACIÓN`.
- Si hay empate, desempata en este orden:
  1. mejor trazabilidad de fuente,
  2. mayor claridad del objeto,
  3. menor cantidad de vacíos críticos,
  4. vigencia más clara.

## FORMATO OFICIAL — TABLA_SHORTLIST_PRIORIZADA
La salida final válida de este paso es únicamente esta tabla Markdown.

Usa exactamente estos campos y en este orden:

| ID shortlist (S-00) | ID origen radar | País | Tipo | Entidad compradora | Oportunidad | Puntaje preliminar (0-10) | Motivo de priorización | Alertas visibles | Decisión paso 2 | Acción sugerida | Estado de validación |
|---|---|---|---|---|---|---|---|---|---|---|---|

## Reglas específicas del formato
- No cambies nombres de campos.
- No cambies el orden.
- No agregues columnas nuevas.
- No respondas en bullets, texto libre, resumen ni secciones adicionales.
- La tabla debe contener máximo 2 filas.
- Cada fila representa una oportunidad priorizada para posible continuidad.
- No escribas el título `## FORMATO OFICIAL — TABLA_SHORTLIST_PRIORIZADA` en la respuesta.
- No escribas ninguna frase antes de la tabla.
- No escribas ninguna frase después de la tabla.
- Si falta información, conserva la tabla y completa con uno de estos valores:
  - PENDIENTE
  - NO EVIDENTE
  - REQUIERE VALIDACIÓN

## Regla de redacción por campo
### ID shortlist (S-00)
- Consecutivo único por fila.
- Formato: `S-01`, `S-02`.

### ID origen radar
- Referenciar el ID o IDs del paso 1 que sustentan la fila.
- Si se consolidan varios, separarlos por ` ; `.

### Puntaje preliminar (0-10)
- Escribir un número entero entre `0` y `10`.
- Si no hay base suficiente, usar `REQUIERE VALIDACIÓN`.

### Motivo de priorización
- Texto breve.
- Debe explicar por qué vale la pena seguir revisando.

### Alertas visibles
- Texto breve, separado por ` ; `.
- Solo frenos o dudas visibles.

### Decisión paso 2
Usa solo uno de estos valores:
- Seleccionada
- Reserva
- REQUIERE VALIDACIÓN

### Acción sugerida
- Acción inmediata y operativa.
- Ejemplos:
  - Pasar a acopio documental
  - Validar fuente oficial
  - Confirmar vigencia antes de seguir

### Estado de validación
Usa solo uno de estos valores:
- Confirmado en fuente
- Parcialmente visible
- Requiere validación humana

## Regla de validez
Si la respuesta no usa exactamente esta tabla, la salida es inválida.
Si la tabla trae más de 2 filas, la salida es inválida.
Si aparece cualquier texto fuera de la tabla, la salida es inválida.
