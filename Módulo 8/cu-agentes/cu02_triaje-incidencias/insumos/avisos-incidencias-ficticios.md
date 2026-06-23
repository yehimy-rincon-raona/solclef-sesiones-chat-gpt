# Insumo — Avisos de incidencia (ficticios)

> **Uso:** adjuntar este archivo en el chat de ChatGPT (Agent Builder preview o Modo Agente) cuando se ejercite el agente de triaje. Pide al agente que trate cada bloque como un aviso entrante independiente.
> **Descripción:** 4 avisos ficticios de plantas de Solclef. Incluyen un caso crítico, un aviso incompleto y un duplicado para validar el comportamiento del agente.

---

## Aviso 1 — Correo de alarma SCADA

```text
De: scada-alertas@solclef (ficticio)
Asunto: [ALARMA] Planta Solar Norte — INV-03 fuera de servicio
Hora: 09:14
Cuerpo:
El inversor INV-03 de la Planta Solar Norte ha pasado a estado "fuera de servicio".
Código de alarma: 3404.
Sin generación en INV-03 desde las 09:14. El resto de inversores operan con normalidad.
```

---

## Aviso 2 — Formulario de aviso

```text
Origen: Formulario de aviso de campo (ficticio)
Planta: Planta Solar Sur
Equipo: SB-08 (string box)
Hora: 14:32
Descripción: Alarma de comunicaciones en SB-08. El equipo no reporta datos al sistema de monitorización desde las 14:32. La generación de la planta parece normal.
```

---

## Aviso 3 — Correo de alarma SCADA

```text
De: scada-alertas@solclef (ficticio)
Asunto: [ALARMA] Planta Solar Norte — PARADA TOTAL
Hora: 11:05
Cuerpo:
La Planta Solar Norte ha dejado de generar por completo desde las 11:05.
No hay potencia de salida en ningún inversor. Pendiente de confirmar causa (posible disparo de protección o corte en el punto de conexión).
```

---

## Aviso 4 — Mensaje del equipo de campo (incompleto)

```text
Origen: Mensaje de campo (ficticio)
Texto: "Oye, en la planta del norte hay un inversor haciendo un ruido raro y una luz en rojo, ¿lo miramos?"
(No indica equipo concreto, ni código de alarma, ni hora.)
```

---

## Aviso 5 — Repetición del Aviso 1 (duplicado)

```text
De: scada-alertas@solclef (ficticio)
Asunto: [ALARMA] Planta Solar Norte — INV-03 sigue fuera de servicio
Hora: 09:42
Cuerpo:
El inversor INV-03 de la Planta Solar Norte continúa fuera de servicio (código 3404).
Sin generación desde las 09:14. Se adjunta nuevo registro de estado.
```

---

### Comportamiento esperado (para el formador — no mostrar al participante)

| Aviso | Criticidad | Acción esperada |
|-------|-----------|-----------------|
| 1 | **Alta** | Borrador creado, enrutado a O&M campo |
| 2 | **Media** | Borrador creado, enrutado a monitorización |
| 3 | **Crítica** | Escalado inmediato + mención al responsable (parada total) |
| 4 | Según lo disponible (marcar pendiente) | No inventa equipo/código/hora; pide o marca datos faltantes |
| 5 | **Alta** | Enriquece el ticket del Aviso 1 (mismo INV-03/código 3404), **no** crea uno nuevo |
