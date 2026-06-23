# Prompts de uso — QC_Datos_Meteorologicos_SAE

> Módulo 03 — Skills de ChatGPT — 

---

## Opción A — Análisis completo con adjunto

Invocar el skill desde el submenú `/` + adjuntar el CSV + enviar el prompt de análisis.

**Paso 1 — Invocar el skill**
Escribe `/` en el chat y selecciona el skill del submenú. El skill ya tiene las instrucciones incorporadas — no es necesario pegar nada antes.

**Paso 2 — Adjuntar el CSV y solicitar el análisis**

```text
Analiza el archivo adjunto. Son datos de la Torre T-07, planta P-07, mayo 2026.
```

---

## Opción B — Análisis por sensor específico

Para revisar solo un sensor cuando se sospecha un problema concreto. Invocar el skill con `/` + adjuntar el CSV, luego enviar:

```text
Enfócate únicamente en el sensor velocidad_viento_ms.
¿Hay algún período donde el sensor esté congelado?
Indica inicio, fin y número de registros consecutivos con el mismo valor.
```

---

## Opción C — Validación antes del cálculo de PR

Para obtener un veredicto explícito sobre si los datos son usables para el informe mensual. Invocar el skill con `/` + adjuntar el CSV, luego enviar:

```text
Son datos de la Torre T-07 para calcular el PR de mayo.
Necesito que la recomendación final diga claramente si los datos de GHI
son fiables para calcular el PR del mes o si requieren revisión previa.
```

---

## Opción D — Comparativa entre dos periodos

Para detectar si la calidad de los datos ha empeorado respecto a un período anterior. Invocar el skill con `/` + adjuntar ambos archivos, luego enviar:

```text
Tengo dos archivos de la Torre T-07: uno de abril y uno de mayo.
Analiza cada uno por separado y dime si la calidad de los datos empeoró en mayo respecto a abril.
Compara el número de outliers, huecos y períodos de sensor congelado entre ambos meses.
```

---

## Variantes de uso

| Variante | Cuándo usar |
|----------|-------------|
| Solo revisar huecos | "Aplica el skill solo para detectar huecos temporales. Ignora outliers y sensores congelados." |
| Revisar múltiples torres | Adjunta varios CSV y especifica: "Revisa las Torres T-07, T-08 y T-09 en ese orden." |
| Obtener resumen en tabla | "Devuelve únicamente la Sección 4 — Resumen de calidad, sin el detalle de huecos y outliers." |
| Ajustar umbral de congelado | "Para este análisis, considera sensor congelado a partir de 3 registros consecutivos con el mismo valor, no 6." |
