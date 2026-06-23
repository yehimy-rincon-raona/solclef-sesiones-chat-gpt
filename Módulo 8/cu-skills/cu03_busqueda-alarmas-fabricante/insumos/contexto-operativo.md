# Contexto operativo

- La planta P-07 opera en régimen de autoconsumo con vertido a red bajo el contrato de acceso firmado en 2023.
- La frecuencia de red en la zona oscila entre 49,95 Hz y 50,04 Hz según los registros del contador inteligente del último mes.
- No hay registro de alarmas similares en los demás 11 inversores de la planta.
- El inversor INV-P07-12 acumula 4.200 horas de operación.
- Los módulos conectados a este inversor son bifaciales de 580 Wp (string de 18 módulos × 2 strings).

---

## Lo que ya se revisó internamente

- Conexiones AC y DC del inversor: sin anomalías visibles
- Temperatura del inversor durante los eventos: 58–63 °C (dentro del rango normal para el horario)
- Parámetro de frecuencia máxima configurado en el inversor: 50,20 Hz (valor de fábrica)
- No hay cambios de configuración registrados en los últimos 6 meses

---

## Pregunta técnica

¿Existe un boletín técnico de SMA o una actualización de firmware para el código 3501 en el modelo Sunny Tripower 25000TL-30? ¿Hay un procedimiento oficial de resolución para este tipo de alarma? ¿Se debe escalar al fabricante?

---

## Anomalía diseñada

> Esta sección es para el formador — no compartir con los participantes antes del ejercicio.

La descripción que muestra el SCADA ("Grid Fault: Frequency too high") **no coincide** con el significado real del código 3501 según la documentación oficial de SMA. En los manuales de SMA para el Sunny Tripower, el código 3501 corresponde a un **fallo de aislamiento** ("Insulation resistance > Check generator"), no a una alarma de frecuencia. Las alarmas de frecuencia en SMA se registran bajo los códigos 501 y 701.

Esta inconsistencia es intencional: fuerza al participante a contrastar la información del SCADA con la fuente primaria del fabricante. Un técnico que confíe solo en la etiqueta del SCADA investigaría un problema de frecuencia de red cuando la evidencia real apunta a un posible fallo de aislamiento en el campo FV.
