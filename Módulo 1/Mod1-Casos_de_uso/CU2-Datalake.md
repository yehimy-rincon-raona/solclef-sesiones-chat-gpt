# Ejercicio Práctico:
## Data leakage (fuga de datos)

Regla del módulo: “No pegues lo que no podrías reenviar por correo masivo.
---------------------------------------------------------------------------------------------------------
Situación real: un analista de Compras quiere “acelerar” una respuesta y copia/pega en ChatGPT un correo interno con datos sensibles.

Qué pega (sin darse cuenta):

• Nombre del proveedor + contacto + email
• Precios negociados y descuentos
• Número de contrato / orden de compra
• Fecha de entrega + penalizaciones
• Observación interna: “Proveedor con mala calidad, no renovar”

Qué le pide a ChatGPT: “Redáctame una respuesta profesional al proveedor confirmando el acuerdo”. 
---------------------------------------------------------------------------------------------------------

ANTES (correo con datos sensibles — NO apto para pegar en ChatGPT tal cual)

---------------------------------------------------------------------------------------------------------
Asunto: Confirmación acuerdo comercial — OC 4500123891 / Contrato 2024-188

Hola Juan Pérez,

Confirmo lo conversado hoy con SolarParts Iberia S.L.: para la OC 4500123891 asociada al Contrato 2024-188, acordamos el suministro de 120 inversores SPX-500 a 1.245€ / unidad con 12% de descuento sobre tarifa.
La entrega queda comprometida para el 15/03/2026 en Planta Solar “Sol del Sur” (Almería).

Tal como se indica en el contrato, se aplicará penalización del 3% del total si la entrega se retrasa más de 48 horas, y necesitamos que envíen albarán + packing list + certificado de origen antes del despacho.

Por favor confirma por esta vía.

Saludos,
María Gómez
Compras | Saeta Yield
+34 600 123 456
maria.gomez@empresa.com

Nota interna (NO reenviar): proveedor con incidencias de calidad en el último lote (RMA 22/01). Evitar renovación anual si falla esta entrega.

---------------------------------------------------------------------------------------------------------
Título: Paso 1 — Detecta “banderas rojas”
---------------------------------------------------------------------------------------------------------
• Subraya lo sensible antes de pegar:
• PII (nombre, email, teléfono)
• Códigos internos (OC, contrato)
• Precios/descuentos/penalizaciones
• Opiniones internas / notas “NO reenviar”

Decide: ¿qué es estrictamente necesario para redactar?

Regla práctica: “Si no cambia la redacción final, NO lo pegues.”
Conecta con “usa el mínimo de datos para lograr el objetivo

---------------------------------------------------------------------------------------------------------
Título: Paso 2 — Anonimiza y minimiza
---------------------------------------------------------------------------------------------------------

• Reemplaza por etiquetas:

[Proveedor], [Contacto], [OC], [Contrato]

[cantidad], [producto], [precio], [descuento]

[fecha], [ubicación], [penalización], [documentos]

• Elimina lo que NO aporta: Nota interna → idealmente omitir

Regla práctica: Enfatiza “minimizar” (quitar) antes que “anonimizar” (reemplazar).
Esto va directo al “método rápido de anonimización y minimización”.

---------------------------------------------------------------------------------------------------------
Título: Paso 3 — Prompt seguro (copiar/pegar)
---------------------------------------------------------------------------------------------------------

Objetivo: redactar correo sin inventar y en tono profesional
Formato: email con asunto + cuerpo + cierre
Candados: no inventar / no agregar compromisos / preguntar si falta info

---------------------------------------------------------------------------------------------------------
Pega este prompt (y debajo el texto anonimizado)
---------------------------------------------------------------------------------------------------------
Contexto: Soy analista de Compras. Necesito responder a un proveedor confirmando un acuerdo. Te compartiré un correo anonimizado.
Rol: Actúa como especialista en comunicación corporativa para compras (tono profesional, claro y cordial).
Objetivo: Redactar el correo de confirmación para enviar al proveedor.
Formato: Email con Asunto, cuerpo (2–4 párrafos) y cierre.
Restricciones (obligatorias):
• No inventes datos (fechas, precios, cantidades, penalizaciones, documentos).
• No agregues opiniones internas ni comentarios sobre desempeño del proveedor.
• Si falta un dato crítico, escribe [PENDIENTE] y pregunta lo mínimo.
• Mantén lenguaje neutral y profesional.

---------------------------------------------------------------------------------------------------------
DESPUÉS (correo anonimizado — SÍ apto para pegar en ChatGPT)
---------------------------------------------------------------------------------------------------------
Asunto: Confirmación acuerdo comercial — OC [###] / Contrato [###]

Hola [Nombre Contacto Proveedor],

Confirmo lo conversado hoy con [Proveedor]: para la OC [###] asociada al Contrato [###], acordamos el suministro de [cantidad] [producto/modelo] a [precio] / unidad con [descuento]% sobre tarifa.
La entrega queda comprometida para el [fecha] en [proyecto/ubicación].

Tal como se indica en el contrato, se aplicará [penalización] si la entrega se retrasa más de [plazo], y necesitamos que envíen [documentos requeridos] antes del despacho.

Por favor confirma por esta vía.

Saludos,
[Nombre]
[Área] | [Empresa]
[Teléfono]
[Email corporativo]

Nota interna: [Comentario interno sobre desempeño del proveedor] (mantener solo si es estrictamente necesario para redactar; idealmente omitirlo del todo).
