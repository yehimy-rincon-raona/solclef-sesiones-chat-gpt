# Ejercicio Práctico
## Anonimización Rápida (5 min)

Objetivo: poder usar un caso real sin exponer datos

Regla de oro: “no pegues lo que no reenviarías por correo masivo”

Resultado: un texto listo para compartir con IA (sin PII)

"hoy no usamos prompts": solo aprender el hábito “copiar → limpiar → usar”.

minimizar (menos datos) y anonimizar (reemplazar).
---------------------------------------------------------------------------------------------------------
# Caso Uso 1-Anonimización: 
## Ejemplo en vivo (antes)

En pantalla:
“Hola, soy Juan Pérez (DNI 12345). Les escribo para reclamar que aún no se ha pagado la deuda pendiente de 45.000€ correspondiente al proyecto Planta Solar ‘Sol del Sur’. Necesito una fecha de pago y confirmación inmediata.”

## Ejemplo en vivo (Después)
En pantalla:
“Hola, soy [PROVEEDOR] ([ID]). Les escribo para reclamar que aún no se ha pagado la deuda pendiente de [MONTO] correspondiente al proyecto [PROYECTO]. Necesito una fecha de pago y confirmación inmediata.”

---------------------------------------------------------------------------------------------------------

### Reglas:

• Elimina o sustituye PII y datos sensibles: nombres, documentos/IDs, montos exactos, nombres de proyectos/instalaciones, direcciones, correos, teléfonos.
• Mantén el sentido: queja, causa, impacto y solicitud.
• No inventes información. Si algo no se puede mantener sin riesgo, reemplázalo por etiqueta.

---------------------------------------------------------------------------------------------------------

### La idea es crear el hábito seguro:

Identifico PII/datos sensibles

Reemplazo por etiquetas ([PROVEEDOR], [ID], [MONTO], [PROYECTO])

Reviso con checklist

Recién ahí lo uso con ChatGPT

---------------------------------------------------------------------------------------------------------