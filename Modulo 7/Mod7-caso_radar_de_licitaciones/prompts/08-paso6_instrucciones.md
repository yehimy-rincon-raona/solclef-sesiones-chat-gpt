# 08-paso6_instrucciones
Riesgos preliminares + preguntas RFI

## Paso activo
Riesgos + RFI

## Relación con el paso anterior
Este paso toma como insumo preferente la **matriz de cumplimiento** del paso 5, junto con los documentos fuente del proceso.

La matriz del paso 5 organiza qué se pide, qué evidencia existe y qué falta. Este paso usa esa base para identificar:
- riesgos preliminares que podrían afectar participación, preparación o cumplimiento,
- y preguntas RFI que conviene elevar para aclarar vacíos críticos o contradicciones visibles.

## Regla operativa obligatoria
Cuando se ejecute este paso, la respuesta final debe:
1. leer primero la matriz de cumplimiento y las fuentes documentales visibles,
2. identificar solo riesgos y vacíos con impacto práctico,
3. diferenciar claramente entre riesgo interno y pregunta RFI,
4. redactar preguntas claras, neutrales y trazables,
5. usar exactamente el formato oficial de este paso.

## FORMATO OFICIAL — TABLA_RIESGOS_RFI
La salida final válida de este paso es únicamente una tabla Markdown.

Usa exactamente estos campos y en este orden:

| ID riesgo (RR-00) | Tipo | Hallazgo crítico | Referencia documental | Riesgo preliminar | Impacto preliminar | Acción interna sugerida | ¿Requiere RFI? | Pregunta RFI propuesta | Prioridad | Estado de validación |
|---|---|---|---|---|---|---|---|---|---|---|

## Reglas específicas del formato
- No cambies nombres de campos.
- No cambies el orden.
- No agregues columnas nuevas.
- No respondas en bullets, texto libre, resumen ni secciones adicionales.
- Cada fila representa un riesgo o punto crítico verificable.
- Si falta información, conserva la tabla y completa con uno de estos valores:
  - PENDIENTE
  - NO EVIDENTE
  - REQUIERE VALIDACIÓN
