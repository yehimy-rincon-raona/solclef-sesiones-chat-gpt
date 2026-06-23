# Ubicaciones de prueba para el GPT Monitor Meteoenergético Solclef

> Documento ficticio creado con fines formativos.  
> Estas ubicaciones se usan para que el GPT pueda consultar la API por nombre de ciudad durante el ejercicio.

---

## Objetivo del archivo

Este archivo contiene ubicaciones de prueba y sus coordenadas.

Debe cargarse como conocimiento del GPT.

Así el usuario puede escribir:

```text
Consulta el contexto meteoenergético para Badajoz.
```

En lugar de escribir coordenadas manualmente.

---

## Tabla de ubicaciones

| Ubicación | País | Latitud | Longitud | Uso sugerido |
|---|---|---:|---:|---|
| Badajoz | España | 38.8794 | -6.9707 | Prueba principal |
| Sevilla | España | 37.3891 | -5.9845 | Comparación |
| Madrid | España | 40.4168 | -3.7038 | Prueba general |
| Mérida | España | 38.9161 | -6.3437 | Prueba alternativa |
| Córdoba | España | 37.8882 | -4.7794 | Prueba alternativa |
| Granada | España | 37.1773 | -3.5986 | Prueba alternativa |
| Zaragoza | España | 41.6488 | -0.8891 | Prueba alternativa |
| Valencia | España | 39.4699 | -0.3763 | Prueba alternativa |

---

## Regla de uso

Cuando el usuario solicite una consulta para una de estas ubicaciones, el GPT debe usar las coordenadas de esta tabla para llamar a la API pública de Open-Meteo.

Si el usuario solicita una ubicación que no aparece en la tabla, el GPT debe pedir latitud y longitud antes de consultar la API.

El GPT no debe inventar coordenadas.
