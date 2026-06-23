# Transcripción 2

## Discovery — Portal de autogestión para clientes empresariales

**Estado:** 
**Cliente :** Andina Logística Integral
**Sector:** Logística y transporte B2B
**Fecha:** 18 de abril de 2026
**Participantes:**

* Julián Castro — Director Comercial
* Valentina Gómez — Jefe de Experiencia de Cliente
* Ricardo León — Líder de Sistemas
* Natalia Peña — Coordinadora de Operaciones
* Daniel Torres — Consultor UX/UI
* Mariana Salas — Consultora de producto digital

---

## Transcripción

**Daniel:** Gracias por reunirse con nosotros. Para iniciar, ¿cuál es la necesidad principal que quieren resolver?

**Julián:** Nuestros clientes empresariales nos piden mucha información sobre sus envíos: estados, novedades, facturas, documentos de entrega y reportes. Hoy casi todo eso se atiende por correo o llamadas.

**Mariana:** ¿Tienen actualmente algún portal para clientes?

**Ricardo:** Existe un portal antiguo, pero solo muestra información básica de guías. No permite descargar reportes, no tiene trazabilidad completa y la experiencia es bastante limitada.

**Valentina:** Además, casi nadie lo usa. Los clientes prefieren escribirle al ejecutivo comercial o al equipo de servicio.

**Daniel:** ¿Por qué creen que no lo usan?

**Valentina:** Porque la información no siempre está actualizada, la navegación no es clara y no permite resolver las solicitudes completas. El cliente entra, no encuentra lo que necesita y termina llamando.

**Natalia:** También hay diferencias entre lo que dice el sistema operativo y lo que ve el cliente. A veces una entrega ya tuvo novedad, pero eso no se refleja rápido en el portal.

**Mariana:** ¿Qué tipos de clientes usarían el portal?

**Julián:** Empresas medianas y grandes. Tienen usuarios de logística, compras, servicio al cliente y finanzas. Cada uno necesita cosas distintas.

**Daniel:** ¿Pueden darme ejemplos?

**Julián:** Logística quiere ver estados de envíos y novedades. Finanzas quiere descargar facturas y soportes. Servicio al cliente quiere consultar pruebas de entrega. Compras quiere reportes consolidados de cumplimiento.

**Mariana:** ¿Qué tareas deberían poder hacer sin contactar a un asesor?

**Valentina:** Consultar estado de envíos, descargar certificados de entrega, descargar facturas, generar reportes por rango de fechas, crear reclamaciones y actualizar datos de contacto.

**Natalia:** También deberían poder ver alertas de novedades, por ejemplo: dirección errada, destinatario ausente, mercancía retenida o pendiente de pago.

**Daniel:** ¿Qué sistemas alimentan esa información?

**Ricardo:** Tenemos un TMS para transporte, un ERP para facturación y una base interna donde operaciones registra novedades. El problema es que no todo está integrado.

**Mariana:** ¿Qué tan disponibles están esos datos?

**Ricardo:** El TMS tiene servicios web, pero el ERP es más complejo. Para facturas probablemente habría que hacer una integración específica. La base de novedades está en SQL, pero tiene campos inconsistentes.

**Daniel:** ¿Qué significa campos inconsistentes?

**Natalia:** Que los operadores no siempre usan la misma categoría. Por ejemplo, “cliente ausente”, “destinatario no estaba” y “no recibido” significan casi lo mismo, pero aparecen como novedades distintas.

**Valentina:** Eso afecta los reportes. El cliente pregunta cuántas entregas fallaron por ausencia y toca limpiar datos manualmente.

**Mariana:** ¿Qué indicadores les gustaría medir con el portal?

**Julián:** Uso del portal, reducción de llamadas, tiempos de respuesta, número de autogestiones y satisfacción del cliente.

**Valentina:** También nos interesa saber qué buscan más los clientes, para mejorar contenido y procesos.

**Daniel:** ¿Hay una meta concreta?

**Julián:** Reducir en 30% las consultas repetitivas al equipo de servicio durante los primeros seis meses.

**Mariana:** ¿Tienen plazos definidos?

**Julián:** Queremos salir con un piloto para cinco clientes estratégicos en agosto.

**Ricardo:** Eso es viable solo si el alcance inicial se mantiene controlado. Si incluimos facturación completa, puede complicarse.

**Daniel:** ¿Qué funcionalidades consideran indispensables para el piloto?

**Valentina:** Consulta de envíos, estados, novedades, descarga de prueba de entrega y creación de reclamaciones.

**Natalia:** También alertas o filtros por novedad. Los clientes grandes manejan muchos envíos y necesitan priorizar.

**Ricardo:** Para mí, indispensable es autenticación segura, roles por cliente y control de permisos.

**Mariana:** ¿Qué roles imaginan dentro del portal?

**Julián:** Administrador del cliente, usuario operativo, usuario financiero y usuario de consulta.

**Daniel:** ¿Necesitan diseño responsive?

**Valentina:** Sí. Muchos clientes lo usarían desde computador, pero algunos supervisores consultan desde celular.

**Natalia:** En operación también revisan novedades desde tablet.

**Mariana:** ¿Hay lineamientos de marca o experiencia?

**Valentina:** Tenemos manual de marca, pero el portal actual no lo cumple. Queremos algo más moderno, simple y corporativo.

**Daniel:** ¿Qué riesgos ven en el proyecto?

**Ricardo:** Integraciones, calidad de datos y seguridad. Si el cliente ve información incorrecta, perdemos confianza.

**Natalia:** También que operaciones no registre novedades bien. Si el dato nace mal, el portal solo muestra el problema.

**Valentina:** Desde experiencia, el riesgo es que diseñemos muchas funcionalidades, pero el cliente no encuentre rápido lo básico.

**Mariana:** ¿Qué sería éxito para el piloto?

**Julián:** Que los cinco clientes usen el portal activamente y reduzcan consultas repetitivas.

**Valentina:** Que los usuarios puedan resolver las tareas principales sin capacitación extensa.

**Ricardo:** Que el piloto no requiera integraciones imposibles para salir.

**Natalia:** Que las novedades sean claras y comparables.

**Daniel:** Perfecto. Con esta información podemos identificar oportunidades, riesgos, dependencias y una propuesta de alcance por fases.

---

# Cómo usarlas para probar el Skill

Puedes usarlas como entradas separadas o juntas.

## Prueba 1: análisis individual

Pega solo la **Transcripción ficticia 1** y pide:

```text
Analiza esta transcripción de discovery y entrega el resumen ejecutivo, análisis normalizado, hallazgos clave, matriz de oportunidades priorizadas, riesgos, vacíos y próximos pasos.
```

## Prueba 2: comparación entre reuniones

Pega ambas transcripciones y pide:

```text
Analiza estas dos transcripciones ficticias de discovery. Identifica patrones comunes, diferencias, oportunidades digitales, posibles casos de uso de automatización o IA, riesgos y recomendaciones priorizadas.
```

## Prueba 3: validación de calidad del Skill

Úsalas para revisar si el Skill:

* Diferencia evidencia explícita de inferencias.
* No inventa datos críticos.
* Detecta oportunidades de automatización, integración, UX/UI, BI, procesos e IA.
* Identifica riesgos técnicos, operativos, legales y de adopción.
* Propone próximos pasos accionables.
* Marca vacíos de información cuando faltan datos.

Estas pruebas están alineadas con la guía de diseño, que recomienda definir casos de uso, entradas, salidas, reglas, criterios de calidad y riesgos antes de documentar o validar un Skill .
