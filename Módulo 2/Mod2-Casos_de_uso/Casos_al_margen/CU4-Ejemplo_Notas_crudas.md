Notas crudas (ficticias) — Seguimiento portal proveedores

objetivo: revisar estado portal + bloqueo registro proveedores nuevos, llegar a piloto 28 feb

TI: login ok + formulario principal ok

problema: conector Business Central falla a veces (intermitente), a veces crea proveedor y a veces se cae

no hay log claro / falta trazabilidad del error

revisar con integraciones

compras: crítico que registro no quede a medias

si proveedor se crea sin docs -> caos seguimiento

hoy docs llegan por correo (PDFs) y se pierden

UX: formulario muy largo en pruebas internas

propuesta UX: para piloto pedir lo mínimo: razón social, NIT, contacto, tipo proveedor, docs básicos

lo demás completar después

finanzas: sin RUT + certificación bancaria NO se habilita pago

esos 2 obligatorios sí o sí, otros campos se pueden flexibilizar

acuerdo: MVP formulario = mínimos + RUT + cert bancaria obligatorios

acción TI: levantar ticket hoy + pedir trazas/logs

TI necesita caso exacto donde falló para replicar

oper: faltan notificaciones

cuando proveedor complete registro -> correo a Compras + Finanzas para validación

si faltan docs -> estado "pendiente" + avisar al proveedor qué falta

compras pide tablero semanal: # proveedores entran, # pendientes por docs, tiempo en pendiente

UX: diseñar estado "pendiente" con microcopy + lista docs faltantes

UX sugiere correo al proveedor estilo checklist (no texto largo)

finanzas: no prometer "validación 24h" si no es real

mejor: "validación en proceso" + compras define SLA real

próxima revisión viernes para confirmar piloto 28

Camila manda caso fallido + lista docs estándar por tipo proveedor

Andrés dice: si hoy hay caso, mañana avance diagnóstico
