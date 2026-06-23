Tarea: Clasifica cada mensaje en {SOPORTE, VENTA, QUEJA, OTRO} y redacta una respuesta breve.
Criterios:
- SOPORTE: problemas técnicos/uso
- VENTA: interés en precios, demo, compra
- QUEJA: inconformidad, reclamo, mala experiencia
- OTRO: lo que no encaje

------------------------ Few-Shot--------------------------------------------------------------------------

Ejemplos:

Mensaje: "No puedo iniciar sesión desde ayer, ¿me ayudan?"
Categoría: SOPORTE
Respuesta: "Gracias por escribirnos. ¿Puedes confirmar tu correo y si aparece algún error? Con eso lo revisamos de inmediato."

Mensaje: "Estoy interesado en planes para 20 usuarios, ¿me envían precios?"
Categoría: VENTA
Respuesta: "Con gusto. ¿Me confirmas país y necesidades principales? Te comparto opciones y una recomendación."

Ahora clasifica:
1) "Me cobraron dos veces este mes, necesito solución."
2) "¿Tienen integración con Business Central?"
3) "Gracias, ya quedó todo listo."
Formato de salida: tabla con columnas (Mensaje | Categoría | Respuesta)
Restricción: respuestas máximo 40 palabras.

-------------------------Anti-Ejemplos-------------------
Anti-ejemplos (INCORRECTOS) — NO imitar:

1) Mensaje: "Me cobraron dos veces este mes y necesito una solución."
INCORRECTO: "Ya validamos tu caso y el reembolso llegará en 24 horas. Caso #83921."
Motivo: inventa validación, tiempos y número de caso.

2) Mensaje: "¿Me pueden enviar precios para 15 usuarios y si tienen plan anual?"
INCORRECTO: Categoría SOPORTE. Respuesta: "Eso está en la web, revisa el FAQ."
Motivo: mala clasificación y tono inadecuado.
