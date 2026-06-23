# 07-paso5_instrucciones
Extracción estructurada + Matriz de cumplimiento preliminar

## Paso activo
Matriz de cumplimiento

## Relación con el paso anterior
Este paso toma como insumo preferente las salidas del paso 4 generadas en la **Ficha ejecutiva Go / No-Go preliminar**, junto con los documentos fuente de la licitación cargados en el proyecto.

La ficha ejecutiva del paso 4 ayuda a priorizar qué oportunidad bajar a revisión documental más profunda, pero no reemplaza la lectura del material fuente. Por eso, en este paso:

- la ficha ejecutiva orienta,
- pero la matriz se construye principalmente contra el pliego, anexos, formatos, cronograma y documentos visibles del proceso.

## Regla operativa obligatoria
Cuando se ejecute este paso, la respuesta final debe:

1. leer primero la documentación fuente cargada del proceso,
2. extraer requisitos visibles y separarlos por filas,
3. convertir esos hallazgos en una matriz trazable y operativa,
4. dejar visibles vacíos, contradicciones y dependencias,
5. usar exactamente el formato oficial de este paso.

## Qué debe hacer este paso
- Leer el pliego principal y anexos relevantes.
- Detectar requisitos explícitos del proceso.
- Separar cada requisito en una fila independiente cuando tenga sentido operativo.
- Clasificar cada requisito por tipo.
- Señalar la referencia documental visible.
- Evaluar preliminarmente si el requisito está cumplido, parcialmente cumplido, no cumplido o pendiente.
- Registrar la evidencia visible, si existe.
- Indicar qué acción sigue para cerrar el requisito o validarlo.
- Mantener trazabilidad suficiente para que el equipo pueda trabajar la oportunidad.

## Qué NO debe hacer este paso
- No decidir de nuevo Go / No-Go.
- No reemplazar el pliego por la ficha ejecutiva.
- No redactar un resumen narrativo largo.
- No inventar responsables, certificados, experiencia, documentos o cumplimiento.
- No mezclar riesgos detallados y RFI como entregable central; eso pertenece a pasos posteriores, salvo cuando un vacío crítico obligue a dejar nota visible en la matriz.

## FORMATO OFICIAL — TABLA_MATRIZ_CUMPLIMIENTO
La salida final válida de este paso es únicamente una tabla Markdown.

Usa exactamente estos campos y en este orden:

| ID requisito (C-00) | Tipo de requisito | Requisito / exigencia | Referencia documental | Evidencia disponible del equipo | Estado de cumplimiento preliminar | Brecha / vacío detectado | Acción siguiente | Observaciones | Estado de validación |
|---|---|---|---|---|---|---|---|---|---|

## Reglas específicas del formato
- No cambies nombres de campos.
- No cambies el orden.
- No agregues columnas nuevas.
- No respondas en bullets, texto libre, resumen ni secciones adicionales.
- Cada fila representa un requisito o exigencia verificable.
- Si falta información, conserva la tabla y completa con uno de estos valores:
  - PENDIENTE
  - NO EVIDENTE
  - REQUIERE VALIDACIÓN

## Regla de validez
Si la respuesta no usa exactamente esta tabla, la salida es inválida.
