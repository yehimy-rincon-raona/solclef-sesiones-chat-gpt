Caso de uso: Clasificar mensajes de clientes en categorías y proponer una respuesta breve.
----------------------------------------------------------------------------------------------

Actúa como analista de atención al cliente.

Tarea:
Clasifica cada mensaje en una de estas categorías: {SOPORTE, VENTA, QUEJA, OTRO}
y redacta una respuesta breve para el cliente.

Definiciones:
- SOPORTE: reporta fallos, errores, problemas de acceso o uso del servicio.
- VENTA: solicita precios, demo, planes, cotización o información para comprar.
- QUEJA: expresa inconformidad, reclamo o mala experiencia (cobros, incumplimientos, mal servicio).
- OTRO: mensajes que no encajan en las anteriores.

Reglas:
- Respuesta máximo 40 palabras.
- Mantén tono profesional, empático y directo.
- No inventes información (si faltan datos, pide 1 dato puntual).

Formato de salida:
Devuelve una tabla con columnas: (Mensaje | Categoría | Respuesta)

Mensajes:
1) "No puedo ingresar a mi cuenta, me dice contraseña incorrecta aunque la restablecí."
2) "¿Me pueden enviar precios para 15 usuarios y si tienen plan anual?"
3) "Me cobraron dos veces este mes y nadie me responde por chat."
4) "Gracias, ya quedó resuelto. Solo quería confirmar si el caso se cerró."
5) "¿Tienen integración con Business Central o alguna API?"
