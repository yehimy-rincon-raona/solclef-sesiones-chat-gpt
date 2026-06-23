# 05-paso3_instrucciones
Acopio documental mínimo

## Paso activo
Acopio documental

## Relación con el paso anterior
Este paso toma como insumo la shortlist priorizada del paso 2 y los documentos ya disponibles del proceso.

La shortlist ayuda a decidir qué oportunidades vale la pena trabajar. Este paso organiza el material mínimo necesario para poder hacer una ficha ejecutiva y, después, bajar a cumplimiento y riesgos con trazabilidad suficiente.

## Regla operativa obligatoria
Cuando se ejecute este paso, la respuesta final debe:
1. identificar qué documentos o fuentes mínimas ya están disponibles,
2. señalar qué documentos críticos faltan,
3. dejar claro para qué sirve cada insumo,
4. priorizar el acopio que habilita el análisis posterior,
5. usar exactamente el formato oficial de este paso.

## Qué debe hacer este paso
- Revisar la oportunidad priorizada y los archivos visibles del proyecto.
- Organizar los documentos por utilidad para el análisis.
- Distinguir entre documento disponible, parcial o faltante.
- Señalar si la fuente es oficial, interna o requiere validación.
- Dejar lista una base mínima para la ficha ejecutiva del paso 4.

## Qué NO debe hacer este paso
- No construir todavía la ficha ejecutiva completa.
- No crear una matriz de cumplimiento.
- No inventar documentos no cargados.
- No asumir que un documento existe solo porque suele existir en este tipo de procesos.

## FORMATO OFICIAL — TABLA_ACOPIO_DOCUMENTAL
La salida final válida de este paso es únicamente una tabla Markdown.

Usa exactamente estos campos y en este orden:

| ID documento (D-00) | Documento / fuente esperada | Tipo | Utilidad en el análisis | Estado de disponibilidad | Fuente / ubicación visible | Vacío crítico | Acción de acopio sugerida | Estado de validación |
|---|---|---|---|---|---|---|---|---|

## Reglas específicas del formato
- No cambies nombres de campos.
- No cambies el orden.
- No agregues columnas nuevas.
- No respondas en bullets, texto libre, resumen ni secciones adicionales.
- Cada fila representa un documento, fuente o insumo verificable.
- Si falta información, conserva la tabla y completa con uno de estos valores:
  - PENDIENTE
  - NO EVIDENTE
  - REQUIERE VALIDACIÓN

## Regla de redacción por campo
### ID documento (D-00)
- Consecutivo único por fila.
- Formato: `D-01`, `D-02`, `D-03`...

### Tipo
Usa una categoría breve. Valores sugeridos:
- Pliego
- Anexo técnico
- Anexo legal
- Cronograma
- Formato
- Adenda
- Fuente interna
- Portal
- REQUIERE VALIDACIÓN

### Utilidad en el análisis
- Explicar brevemente para qué sirve ese insumo.

### Estado de disponibilidad
Usa solo uno de estos valores:
- Disponible
- Parcial
- Faltante
- REQUIERE VALIDACIÓN

### Vacío crítico
- Señalar solo la falta o limitación que afecte el análisis posterior.
- Si no hay vacío visible, usar `NO EVIDENTE`.

### Acción de acopio sugerida
- Acción breve y concreta.

### Estado de validación
Usa solo uno de estos valores:
- Confirmado en fuente
- Parcialmente visible
- Requiere validación humana

## Regla de validez
Si la respuesta no usa exactamente esta tabla, la salida es inválida.
