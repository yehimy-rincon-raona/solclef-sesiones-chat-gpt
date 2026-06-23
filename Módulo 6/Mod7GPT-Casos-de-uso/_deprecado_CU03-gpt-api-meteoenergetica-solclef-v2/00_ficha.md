# CU03 - Ficha del caso de uso - GPT Monitor Meteoenergético Solclef

> Módulo 01 - GPTs personalizados - Solclef  
> Documento ficticio creado con fines formativos

---

## Nombre del caso de uso

**Monitor meteoenergético con API pública**

GPT personalizado que consulta una API pública meteorológica y devuelve un resumen sencillo de variables relevantes para un análisis preliminar de contexto solar.

---

## Escenario

Los equipos de una compañía de energía renovable pueden necesitar consultar condiciones meteorológicas externas para contextualizar reuniones, reportes o análisis preliminares.

En este ejercicio se construirá un GPT que consulta una API pública, obtiene datos meteorológicos por coordenadas y entrega una lectura simple de variables como temperatura, nubosidad, viento y radiación solar.

El objetivo no es crear una herramienta operativa crítica, sino aprender a conectar un GPT personalizado con una API pública mediante acciones.

---

## Problema que resuelve

| Situación actual | Impacto |
|---|---|
| Los datos meteorológicos suelen consultarse en páginas externas | Mayor tiempo para obtener una lectura rápida |
| Las APIs tienen documentación extensa y técnica | Dificultad para convertir la documentación en una acción usable |
| El campo de acciones requiere un esquema OpenAPI | El alumno puede confundirse si pega solo la URL |
| Los datos devueltos por una API vienen en JSON | Puede ser difícil interpretarlos sin estructura |

El GPT ayuda a consultar los datos y presentarlos en una tabla clara, con una interpretación básica y límites explícitos.

---

## Objetivo del caso de uso

Construir un GPT personalizado que consulte la API pública de Open-Meteo usando una acción.

El ejercicio enseña a:

1. Identificar una API pública.
2. Usar ChatGPT para generar un esquema OpenAPI a partir de la documentación.
3. Pegar el esquema generado en la sección Acciones.
4. Probar la acción desde el GPT.
5. Interpretar la respuesta de la API en un formato simple.

---

## Alcance del GPT

### El GPT debe hacer

- Solicitar o usar coordenadas geográficas.
- Consultar datos meteorológicos públicos mediante la API configurada.
- Resumir temperatura, nubosidad, viento y radiación solar cuando estén disponibles.
- Presentar los datos en una tabla clara.
- Explicar que los datos son públicos y orientativos.
- Indicar cuando falte información o la API no devuelva algún dato.

### El GPT no debe hacer

- Tomar decisiones operativas críticas.
- Recomendar arranque, parada o intervención de activos.
- Sustituir SCADA, sistemas internos, predicciones oficiales o criterio técnico.
- Inventar datos si la API no responde.
- Presentar el pronóstico como certeza.
- Usar información privada o interna no proporcionada.

---

## Usuarios previstos

| Usuario | Uso esperado |
|---|---|
| Participantes del curso | Aprender a configurar acciones en GPTs personalizados |
| Equipos de negocio | Entender cómo un GPT puede consumir datos externos |
| Equipos de innovación | Prototipar integraciones sencillas con APIs públicas |
| Equipos técnicos no desarrolladores | Comprender la función de un esquema OpenAPI |

---

## API utilizada

**Open-Meteo Forecast API**

Documentación pública:

```text
https://open-meteo.com/en/docs
```

Endpoint de pronóstico:

```text
https://api.open-meteo.com/v1/forecast
```

---

## Valor esperado

- Entender qué es una acción en un GPT personalizado.
- Comprender que el campo Esquema requiere un contrato OpenAPI, no una URL suelta.
- Aprender a pedirle a ChatGPT que construya el esquema OpenAPI.
- Reducir la complejidad técnica de leer documentación extensa.
- Convertir una respuesta JSON en una salida clara para el usuario.

---

## Herramienta utilizada

GPT personalizado con:

- Acciones activadas.
- Autenticación: Ninguno.
- Esquema OpenAPI generado con ayuda de ChatGPT.
- Búsqueda web desactivada, salvo que el instructor indique lo contrario.
- Análisis de datos opcional.
- Canvas opcional.

---

## Resultado esperado del ejercicio

Al finalizar, debes tener:

1. Un GPT creado con nombre, descripción e instrucciones.
2. Una acción configurada con un esquema OpenAPI generado por ChatGPT.
3. Una consulta exitosa a Open-Meteo.
4. Una respuesta organizada con datos meteorológicos.
5. Una explicación breve de los límites del uso de APIs públicas en GPTs.
