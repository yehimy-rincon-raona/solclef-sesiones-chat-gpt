Claro. Te dejo **2 transcripciones s de reuniones de discovery** listas para usar como insumos de prueba del Skill.

Están diseñadas para probar que el Skill pueda generar: **resumen ejecutivo, análisis normalizado, hallazgos clave, matriz de oportunidades priorizadas, riesgos, vacíos y próximos pasos**, que es la salida recomendada para este Skill según el diseño trabajado en el proyecto . También incluyen entradas variadas, ambigüedades y pendientes para validar si el Skill separa evidencia, inferencias y preguntas abiertas, algo importante en la evaluación de Skills .

---

# Transcripción  1

## Discovery — Automatización de gestión de solicitudes internas

**Estado:** 
**Cliente:** NovaSalud Corporativo
**Sector:** Servicios de salud ocupacional
**Fecha:** 12 de abril de 2026
**Participantes:**

* Laura Méndez — Gerente de Operaciones
* Andrés Pardo — Coordinador de Tecnología
* Camila Ríos — Líder de Servicio al Cliente
* Mateo Vargas — Consultor UX/UI
* Sofía Herrera — Consultora funcional

---

## Transcripción

**Mateo:** Gracias por el espacio. Para empezar, nos gustaría entender cuál es el problema principal que quieren resolver con este proyecto.

**Laura:** Hoy tenemos muchas solicitudes internas que llegan por correo, WhatsApp y formularios distintos. El problema es que no tenemos una vista centralizada. Cada área maneja sus propios archivos y a veces no sabemos en qué estado está cada solicitud.

**Sofía:** ¿Qué tipo de solicitudes reciben principalmente?

**Camila:** Son solicitudes de agendamiento, novedades de empleados, certificados médicos, reportes para empresas cliente y consultas sobre facturación. Algunas son simples, pero otras requieren validar información en varios sistemas.

**Mateo:** ¿Quiénes hacen esas solicitudes?

**Laura:** Principalmente empresas cliente, coordinadores de talento humano y algunos usuarios internos. También hay solicitudes que llegan directamente de colaboradores de las empresas, pero esas deberían pasar primero por talento humano.

**Sofía:** ¿Actualmente tienen algún sistema para gestionarlas?

**Andrés:** Tenemos un CRM, pero no todos lo usan. También usamos SharePoint para guardar documentos, Excel para seguimiento y Outlook para las comunicaciones. El CRM no está integrado con los demás sistemas.

**Camila:** Exacto. A veces un asesor actualiza el Excel, pero no actualiza el CRM. O responde un correo y nadie más se entera. Entonces cuando el cliente llama, toca revisar varias fuentes.

**Mateo:** ¿Cuánto tiempo toma gestionar una solicitud promedio?

**Camila:** Depende. Una solicitud simple puede tardar 15 minutos. Pero si requiere revisar soportes, validar estado del colaborador y pedir aprobación, puede tardar de 1 a 3 días.

**Sofía:** ¿Qué pasa cuando una solicitud se demora?

**Laura:** El cliente escala con comercial o con dirección. Además, no tenemos indicadores confiables. Sabemos que hay retrasos, pero no podemos medirlos bien porque la información está dispersa.

**Mateo:** ¿Tienen definidos estados o etapas del proceso?

**Camila:** Informalmente sí. Recibido, en revisión, pendiente por información, aprobado, rechazado y cerrado. Pero no todos usan los mismos nombres.

**Andrés:** Además, no hay reglas automáticas. Nadie recibe alertas cuando una solicitud lleva mucho tiempo quieta.

**Sofía:** ¿Qué datos mínimos necesita una solicitud para poder ser procesada?

**Camila:** Empresa, NIT, nombre del colaborador, documento, tipo de solicitud, correo de contacto, soporte adjunto si aplica y fecha esperada de respuesta.

**Mateo:** ¿Hay campos que normalmente llegan incompletos?

**Camila:** Sí. Muchísimo. El documento del colaborador, el tipo exacto de solicitud y los soportes. Eso genera reprocesos.

**Laura:** Y ahí está uno de los dolores más grandes. El equipo invierte mucho tiempo pidiendo información que debería venir desde el inicio.

**Sofía:** ¿Han pensado en automatizar parte del proceso?

**Laura:** Sí. Nos gustaría que las solicitudes entren por un solo canal, que se clasifiquen automáticamente y que el sistema asigne responsables según el tipo de solicitud.

**Andrés:** También sería ideal integrarlo con SharePoint y, en una segunda fase, con el CRM. Pero necesitamos revisar si el CRM permite integración vía API.

**Mateo:** ¿Qué esperan como resultado de este proyecto?

**Laura:** Una solución que nos permita centralizar solicitudes, hacer seguimiento, medir tiempos de respuesta y reducir reprocesos.

**Camila:** Para servicio al cliente sería clave tener un tablero donde podamos ver solicitudes vencidas, pendientes por información y solicitudes críticas.

**Sofía:** ¿Hay algún plazo o urgencia?

**Laura:** Queremos tener una primera versión antes del cierre del tercer trimestre. Tenemos auditoría interna en octubre y nos van a pedir indicadores de trazabilidad.

**Mateo:** ¿Tienen presupuesto definido?

**Laura:** Hay presupuesto aprobado para una primera fase, pero no está cerrado el alcance. Necesitamos una propuesta con fases.

**Andrés:** Desde tecnología preferimos iniciar con algo sobre Microsoft 365, porque ya tenemos licencias. Power Automate, SharePoint, Power Apps o algo similar podría funcionar.

**Sofía:** ¿Hay restricciones legales o de datos?

**Andrés:** Sí. Hay datos sensibles de salud y documentos personales. Tenemos que validar tratamiento de datos y permisos de acceso. No todos deberían ver toda la información.

**Camila:** También necesitamos que quede registro de quién hizo qué. En auditoría nos piden trazabilidad.

**Mateo:** ¿Qué riesgos ven ustedes?

**Laura:** Que el equipo no adopte la herramienta si es muy compleja. Ya nos pasó con el CRM.

**Camila:** También que se vuelva otro sistema más y no reemplace los archivos actuales.

**Andrés:** Y que pidamos integraciones desde el inicio y eso retrase el proyecto.

**Sofía:** Para cerrar, ¿qué sería éxito para ustedes en una primera versión?

**Laura:** Que todas las solicitudes entren por un único canal, que tengan estado, responsable y fecha límite.

**Camila:** Que podamos reducir los correos manuales y tener alertas.

**Andrés:** Que la solución sea segura, escalable y compatible con Microsoft 365.

**Mateo:** Perfecto. Como próximos pasos, vamos a consolidar hallazgos, identificar oportunidades y proponer fases de implementación.

---