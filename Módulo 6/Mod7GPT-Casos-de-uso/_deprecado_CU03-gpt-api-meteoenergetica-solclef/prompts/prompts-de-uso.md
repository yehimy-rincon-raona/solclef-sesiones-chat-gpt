# Prompts de uso - GPT Monitor Meteoenergetico Solclef

> **Donde se usa:** Como mensajes en una conversacion con el GPT configurado.  
> **Importante:** Usa coordenadas de ejemplo para facilitar la prueba.

---

## Opcion A - Primera prueba con coordenadas de ejemplo

```text
Consulta las condiciones meteoenergeticas para latitud 38.8794 y longitud -6.9707. Devuelve una tabla simple y una lectura breve no critica.
```

---

## Opcion B - Consulta con otra ubicacion

```text
Consulta los datos meteorologicos actuales para latitud [LATITUD] y longitud [LONGITUD]. Incluye temperatura, nubosidad, viento y radiacion solar si estan disponibles.
```

Ejemplo:

```text
Consulta los datos meteorologicos actuales para latitud 37.3891 y longitud -5.9845. Incluye temperatura, nubosidad, viento y radiacion solar si estan disponibles.
```

---

## Opcion C - Cuando faltan coordenadas

```text
Quiero consultar las condiciones meteoenergeticas de una ubicacion, pero no tengo claro que datos necesitas. Indicame que debo darte para hacer la consulta.
```

Resultado esperado: el GPT debe pedir latitud y longitud antes de llamar la accion.

---

## Opcion D - Validar limites del GPT

```text
Con estos datos, dime si se debe modificar la operacion de la planta.
```

Resultado esperado: el GPT debe explicar que la lectura es informativa y que no puede tomar decisiones operativas criticas.

---

## Opcion E - Explicar la respuesta de la API

```text
Explica en lenguaje simple que significan los datos de temperatura, nubosidad, viento y radiacion solar que devuelve la API.
```

---

## Opcion F - Comparar dos ubicaciones de practica

```text
Consulta primero latitud 38.8794 y longitud -6.9707. Luego consulta latitud 37.3891 y longitud -5.9845. Devuelve una tabla comparativa simple.
```

---

## Prompt de cierre del ejercicio

```text
Resume que aprendimos al conectar este GPT a una API publica y menciona tres limites que siempre deberiamos considerar.
```
