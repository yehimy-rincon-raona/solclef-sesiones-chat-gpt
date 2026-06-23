# Insumo — Export diario de planta (ficticio)

> **Uso:** adjuntar este archivo en el chat de ChatGPT (Agent Builder preview o Modo Agente) cuando se ejercite el agente de reporte diario.
> **Descripción:** datos del día anterior de la **Planta Solar Norte** (ficticia). Contiene desviaciones sembradas para validar el comportamiento del agente.

---

## Cabecera

| Campo | Valor |
|-------|-------|
| Planta | Planta Solar Norte (ficticia) |
| Fecha | día anterior |
| Potencia instalada | 4,8 MWp |
| Objetivo de generación | 1.415 kWh |

---

## Resumen del día

| Métrica | Valor |
|---------|-------|
| Generación real | 1.245 kWh |
| Performance Ratio (PR) | 79 % |
| Disponibilidad | 96 % |
| Irradiación diaria consolidada | (pendiente — dato no disponible) |

---

## Estado por equipo

| Equipo | Tipo | Estado | Observación |
|--------|------|--------|-------------|
| INV-01 | Inversor | OK | Eficiencia 93 % |
| INV-02 | Inversor | OK | Eficiencia 92 % |
| INV-03 | Inversor | Alerta | Eficiencia 87 % durante 48 h (umbral esperado > 92 %) |
| INV-04 | Inversor | OK | Eficiencia 94 % |
| SB-08 | String box | Alerta | Alarma de comunicaciones desde las 14:32 |
| SB-01…SB-07 | String box | OK | Sin novedad |

---

## Notas del export

- La irradiación diaria consolidada aún no está disponible (el dato meteorológico se consolida más tarde).
- No se incluye causa de las alertas: el export solo refleja estado y métricas.

---

### Desviaciones sembradas (para el formador — no mostrar al participante)

1. **Generación −12 % vs. objetivo** (1.245 vs. 1.415 kWh) → debe clasificarse Alta.
2. **PR 79 %** → por debajo del umbral del 80 % → Alerta/Alta.
3. **INV-03** por debajo del umbral de eficiencia > 24 h → Alta, equipo a vigilar.
4. **SB-08** alarma de comunicaciones → Media.
5. **Irradiación pendiente** → el agente NO debe estimar el dato; debe marcarlo como pendiente.
