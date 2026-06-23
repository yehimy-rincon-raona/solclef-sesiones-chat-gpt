Paso a paso

- Divides el texto en 3 bloques (Inicio / Medio / Cierre).
- Resumes cada bloque en JSON.
- Consolidación final sin inventar.
-------------------------------------------------------------------
Prompt (Resumen estructurado por bloque)
-------------------------------------------------------------------

Resume SOLO el bloque de texto entregado.
Reglas: no inventes, no concluyas, conserva nombres y números literal.

Devuelve JSON:
{
 "decisiones": [],
 "pendientes": [{"tarea":"","responsable":"","fecha":"TBD"}],
 "datos_clave": [],
 "preguntas_abiertas": []
}

BLOQUE:
<<<PEGA AQUÍ BLOQUE 1/3>>>




-------------------------------------------------------------------
Prompt de consolidación final (después de tener 3 JSON)
-------------------------------------------------------------------
Consolida estos 3 JSON en uno solo.
Reglas:
- No inventes.
- Elimina duplicados.
- Si hay contradicciones, repórtalas en "preguntas_abiertas".

Devuelve el mismo formato JSON:
{
 "decisiones": [],
 "pendientes": [{"tarea":"","responsable":"","fecha":"TBD"}],
 "datos_clave": [],
 "preguntas_abiertas": []
}

JSON 1:
<<<...>>>
JSON 2:
<<<...>>>
JSON 3:
<<<...>>>
