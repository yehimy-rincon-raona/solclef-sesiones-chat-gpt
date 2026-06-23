# 06-paso4_instrucciones
Ficha ejecutiva Go / No-Go preliminar

## Paso activo
Ficha ejecutiva

## Relación con el paso anterior
Este paso toma como insumo preferente:
- la shortlist priorizada del paso 2,
- la tabla de acopio documental del paso 3,
- y los documentos fuente visibles del proceso.

La shortlist ayuda a decidir qué oportunidad merece atención. El acopio documental confirma si existe base suficiente para un juicio preliminar. Este paso convierte esa información en una lectura ejecutiva breve, prudente y comparable para orientar la decisión interna inicial.

## Regla operativa obligatoria
Cuando se ejecute este paso, la respuesta final debe:
1. leer primero la shortlist priorizada, el acopio documental y las fuentes visibles,
2. consolidar una lectura ejecutiva breve por oportunidad,
3. distinguir señales a favor, alertas y vacíos críticos,
4. proponer una decisión preliminar prudente,
5. usar exactamente el formato oficial de este paso.

## Qué debe hacer este paso
- Revisar la oportunidad priorizada y su base documental mínima.
- Sintetizar qué se contrata y por qué entró al radar.
- Identificar señales visibles que favorecen seguir analizando.
- Identificar alertas, frenos o dudas que bajan prioridad.
- Hacer visible qué falta para sostener una decisión preliminar.
- Producir una ficha ejecutiva breve y comparable.

## Qué NO debe hacer este paso
- No rehacer la búsqueda inicial.
- No reemplazar la fuente documental por intuición.
- No construir todavía la matriz de cumplimiento.
- No redactar todavía riesgos detallados ni RFI como entregable principal.
- No inventar encaje técnico, legal, comercial o financiero no visible.

## FORMATO OFICIAL — TABLA_FICHA_EJECUTIVA_GO_NO_GO
La salida final válida de este paso es únicamente una tabla Markdown.

Usa exactamente estos campos y en este orden:

| ID consolidado (U-00) | País | Tipo | Entidad compradora | Oportunidad | Resumen ejecutivo | Señales a favor | Alertas / frenos | Vacíos críticos | Go / No-Go preliminar | Justificación ejecutiva | Estado de validación |
|---|---|---|---|---|---|---|---|---|---|---|---|

## Reglas específicas del formato
- No cambies nombres de campos.
- No cambies el orden.
- No agregues columnas nuevas.
- No respondas en bullets, texto libre, resumen ni secciones adicionales.
- Cada fila representa una oportunidad consolidada.
- Si falta información, conserva la tabla y completa con uno de estos valores:
  - PENDIENTE
  - NO EVIDENTE
  - REQUIERE VALIDACIÓN

## Regla de redacción por campo
### ID consolidado (U-00)
- Consecutivo único por fila.
- Formato: `U-01`, `U-02`, `U-03`...

### Resumen ejecutivo
- 1 a 3 frases cortas.
- Debe explicar qué se contrata y por qué entra al radar.

### Señales a favor
- Texto breve, separado por ` ; `.

### Alertas / frenos
- Texto breve, separado por ` ; `.

### Vacíos críticos
- Solo información faltante que afecta la decisión preliminar.

### Go / No-Go preliminar
Usa solo uno de estos valores:
- Go
- No-Go
- REQUIERE VALIDACIÓN

### Justificación ejecutiva
- Síntesis corta y prudente de la decisión preliminar.

### Estado de validación
Usa solo uno de estos valores:
- Confirmado en fuente
- Parcialmente visible
- Requiere validación humana

## Regla de validez
Si la respuesta no usa exactamente esta tabla, la salida es inválida.
