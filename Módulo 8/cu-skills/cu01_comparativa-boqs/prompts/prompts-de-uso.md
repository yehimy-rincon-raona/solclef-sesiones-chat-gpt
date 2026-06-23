# Prompts de uso — Skill de Revisión de BOQs SAE

> **Dónde se usa:** en una conversación de ChatGPT donde el skill `@solar-tender-review` ya esté instalado y activo.
> **Cómo invocar el skill:** escribe `/` y selecciona el skill del submenú, o escribe `@solar-tender-review` directamente.
> **Importante:** adjunta el archivo BOQ antes de enviar el prompt.

---

## Opción A — Análisis completo con archivo adjunto

```text
Analiza las ofertas de los tres licitadores — Electrosolar Ibérica, SunTech Instalaciones y Renovables del Sur — y devuelve la tabla de alertas completa ordenada por gravedad, seguida del resumen por proveedor y la lista de partidas que requieren aclaración.
```

---

## Opción B — Si pegas los datos directamente en el chat

```text
Analiza la siguiente tabla de ofertas de licitación.
Devuelve la tabla de alertas completa ordenada por gravedad, el resumen por proveedor y la lista de partidas que requieren aclaración antes de adjudicar.

---

[PEGA AQUÍ LA TABLA BOQ]
```

---

## Variantes de uso

### Para enfocar el análisis en un bloque de partidas

```text
Analiza las ofertas del archivo adjunto, pero enfócate solo en las partidas del bloque 02 (revisión de string boxes). Devuelve las alertas únicamente de ese bloque.
```

### Para cambiar el umbral de desviación

```text
Analiza las ofertas del archivo adjunto. Cambia el umbral de desviación Alta a 20% en lugar de 30% respecto a la mediana. Devuelve la tabla de alertas completa con el nuevo umbral aplicado.
```

### Para generar el resumen en formato acta de reunión

```text
Analiza las ofertas del archivo adjunto y genera la tabla de alertas completa. Luego redacta un párrafo de conclusión en formato acta de reunión de adjudicación, citando los tres puntos de mayor riesgo.
```

### Para comparar dos BOQs de licitaciones distintas

```text
Voy a adjuntarte dos archivos BOQ de licitaciones distintas, uno a uno. Para cada uno, analiza las ofertas y al final dime cuál presenta más alertas de riesgo alto.
```
