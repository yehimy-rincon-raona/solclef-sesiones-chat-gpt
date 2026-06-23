# Ejercicio — CU03: Búsqueda de Alarmas de Fabricante

## Objetivo

Crear el skill `inverter-alarm-research` con @skill-creator y usarlo para investigar el código de alarma **3501 — Grid Fault: Frequency too high** en un inversor SMA Sunny Tripower 25000TL-30 de la Planta P-07, determinando si la descripción del SCADA es correcta, si existe documentación oficial del fabricante y si se debe escalar la incidencia.

## Contexto

El SCADA de la Planta P-07 (Almería, 4,8 MWp) ha registrado 7 eventos de la alarma **SMA código 3501** en el inversor **INV-P07-12** durante los últimos 5 días, siempre entre las 13:00 y las 15:30. El técnico responsable no ha encontrado documentación interna sobre este código y necesita verificar en la fuente oficial antes de escalar la incidencia.

## Materiales del ejercicio

- `insumos/ficha-alarma-sma-ficticia.md` — datos del inversor y la alarma
- `configuracion/instrucciones-skill.md` — prompt de creación en lenguaje natural e instrucciones completas del skill
- `prompts/prompts-de-uso.md` — prompt optimizado para invocar el skill

## Instrucciones paso a paso

1. Abre ChatGPT → escribe `/` en el campo de texto → selecciona **@skill-creator** del submenú.
2. Pega el **Prompt de creación** que está en `configuracion/instrucciones-skill.md` y envíalo.
3. @skill-creator generará el skill directamente sin hacer preguntas — aparecerá un botón **"Probar skill"**, úsalo.
4. Ignora el prompt por defecto que aparece en el chat e introduce la **Variante A** de `prompts/prompts-de-uso.md`.
5. Observa que el skill activa la búsqueda web antes de responder (indicador de búsqueda en proceso).
6. Lee el análisis completo: presta especial atención a si el significado del código 3501 coincide con lo que describe el SCADA.

## Entregable

Captura de pantalla del output completo del skill: análisis del código 3501 con fuentes citadas, diagnóstico y veredicto de escalado.

## Criterio de éxito

- El skill activa la búsqueda web antes de responder (no responde solo desde conocimiento interno).
- El output contrasta la descripción del SCADA con la documentación oficial del fabricante.
- El veredicto indica claramente si se debe escalar, con justificación técnica concreta.

---

## Resultado de referencia

> Usa esta tabla para validar que tu ejecución fue correcta.

| Elemento | Resultado esperado |
|----------|-------------------|
| **Búsqueda activada** | Sí — el skill consulta fuentes oficiales SMA antes de responder |
| **Hallazgo principal** | El código 3501 en SMA corresponde a **fallo de aislamiento** ("Insulation resistance > Check generator"), no a frecuencia alta |
| **Inconsistencia detectada** | La descripción del SCADA ("Grid Fault: Frequency too high") no coincide con el significado real del código 3501 según la documentación oficial de SMA |
| **Códigos de frecuencia reales en SMA** | Las alarmas de frecuencia fuera de rango corresponden a los códigos 501 y 701, no al 3501 |
| **Veredicto** | Escalar a SMA — después de confirmar el log nativo del inversor, verificar el mapeo SCADA/Modbus y ejecutar pruebas de aislamiento por string |
| **Fuentes** | Documentación oficial SMA para Sunny Tripower 25000TL-30 |

### Valor del ejercicio

Este caso demuestra que el SCADA puede etiquetar incorrectamente un código de alarma. Sin la búsqueda en fuentes primarias del fabricante, el técnico habría investigado un problema de frecuencia de red que en realidad apunta a un posible fallo de aislamiento incipiente en el campo FV — dos diagnósticos y dos intervenciones completamente distintas. El skill permitió detectar esa inconsistencia en menos de 2 minutos.
