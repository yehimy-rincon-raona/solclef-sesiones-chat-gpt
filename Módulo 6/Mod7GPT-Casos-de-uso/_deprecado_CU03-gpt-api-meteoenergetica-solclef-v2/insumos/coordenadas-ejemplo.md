# Coordenadas de ejemplo para probar el GPT Monitor Meteoenergético Solclef

> Documento ficticio creado con fines formativos.  
> Las coordenadas son de uso didáctico para probar una API pública.

---

## Objetivo del archivo

Este archivo contiene coordenadas que pueden usarse para probar la acción conectada a Open-Meteo.

No es necesario cargar este archivo como conocimiento del GPT.  
El alumno puede abrirlo, copiar una coordenada y usarla en el chat del GPT.

---

## Coordenadas de prueba

| Nombre de prueba | Latitud | Longitud | Uso sugerido |
|---|---:|---:|---|
| Badajoz, España | 38.8794 | -6.9707 | Prueba principal del ejercicio |
| Sevilla, España | 37.3891 | -5.9845 | Comparar contexto solar |
| Madrid, España | 40.4168 | -3.7038 | Prueba general |
| Mérida, España | 38.9161 | -6.3437 | Prueba alternativa |
| Córdoba, España | 37.8882 | -4.7794 | Prueba alternativa |

---

## Prompt de prueba con coordenadas

```text
Consulta las condiciones meteoenergéticas para las coordenadas 38.8794, -6.9707. Resume temperatura, nubosidad, viento y radiación solar.
```

---

## Prompt de comparación

```text
Compara de forma orientativa las condiciones meteoenergéticas actuales entre las coordenadas 38.8794, -6.9707 y 37.3891, -5.9845.
```

---

## Nota para alumnos

Si la API no devuelve alguna variable, el GPT debe marcarla como "No disponible".  
No debe inventar valores ni completar datos faltantes.
