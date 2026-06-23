# CU03 - Ficha del caso de uso - GPT Monitor Meteoenergético Solclef

> Módulo 01 - GPTs personalizados - Solclef  
> Documento ficticio creado con fines formativos

---

## Nombre del caso de uso

**Monitor meteoenergético con API pública**

GPT personalizado que consulta una API pública meteorológica a partir del nombre de una ubicación de prueba y devuelve un resumen sencillo de variables relevantes para contexto solar.

---

## Escenario

Los equipos de una compañía de energía renovable pueden necesitar consultar condiciones meteorológicas externas para contextualizar reuniones, reportes o análisis preliminares.

En este ejercicio se construirá un GPT que:

1. Recibe una ubicación de prueba, como Badajoz, Sevilla o Mérida.
2. Busca sus coordenadas en un archivo cargado como conocimiento.
3. Consulta la API pública de Open-Meteo mediante una acción.
4. Devuelve una lectura simple de variables como temperatura, nubosidad, viento y radiación solar.

El objetivo no es crear una herramienta operativa crítica, sino aprender a conectar un GPT personalizado con una API pública mediante acciones.

---

## Problema que resuelve

| Situación actual | Impacto |
|---|---|
| Las personas no suelen conocer coordenadas geográficas | El ejercicio se vuelve poco natural |
| Las APIs necesitan parámetros técnicos | El alumno puede confundirse si debe escribir latitud y longitud |
| El campo de acciones requiere un esquema OpenAPI | El alumno puede confundirse si pega solo la URL |
| Los datos devueltos por una API vienen en JSON | Puede ser difícil interpretarlos sin estructura |

El GPT ayuda a consultar datos públicos de forma más natural: el usuario escribe una ciudad de prueba y el GPT se encarga de usar las coordenadas correspondientes.

---

## Objetivo del caso de uso

Construir un GPT personalizado que consulte la API pública de Open-Meteo usando una acción.

El ejercicio enseña a:

1. Identificar una API pública.
2. Usar ActionsGPT o ChatGPT para generar un esquema OpenAPI a partir de la documentación.
3. Cargar un archivo de ubicaciones de prueba como conocimiento.
4. Configurar una acción en el GPT.
5. Probar la acción usando nombres de ciudades, no coordenadas.
6. Interpretar la respuesta de la API en un formato simple.

---

## Alcance del GPT

### El GPT debe hacer

- Recibir nombres de ubicaciones incluidas en el archivo de conocimiento.
- Convertir esas ubicaciones en coordenadas usando la tabla cargada.
- Consultar datos meteorológicos públicos mediante la API configurada.
- Resumir temperatura, nubosidad, viento y radiación solar cuando estén disponibles.
- Presentar los datos en una tabla clara.
- Explicar que los datos son públicos y orientativos.
- Indicar cuando falte información o la API no devuelva algún dato.

### El GPT no debe hacer

- Tomar decisiones operativas críticas.
- Recomendar arranque, parada o intervención de activos.
- Sustituir SCADA, sistemas internos, predicciones oficiales o criterio técnico.
- Inventar coordenadas para ubicaciones que no estén en el archivo cargado.
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
| Equipos técnicos no desarrolladores | Comprender la relación entre conocimiento, acciones y APIs |

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

## Archivo de conocimiento utilizado

El GPT usará como conocimiento el archivo:

```text
insumos/ubicaciones-de-prueba.md
```

Este archivo contiene una tabla sencilla con ubicaciones y coordenadas para que el usuario pueda consultar por ciudad.

---

## Valor esperado

- Entender qué es una acción en un GPT personalizado.
- Comprender que el campo Esquema requiere un contrato OpenAPI, no una URL suelta.
- Aprender a pedirle a ActionsGPT o ChatGPT que construya el esquema OpenAPI.
- Hacer el ejercicio más natural usando nombres de ciudades.
- Convertir una respuesta JSON en una salida clara para el usuario.

---

## Herramienta utilizada

GPT personalizado con:

- Archivo de ubicaciones cargado como conocimiento.
- Acciones activadas.
- Autenticación: Ninguno.
- Esquema OpenAPI generado con ayuda de ActionsGPT o ChatGPT.
- Búsqueda web desactivada.
- Análisis de datos opcional.
- Canvas opcional.

---

## Resultado esperado del ejercicio

Al finalizar, debes tener:

1. Un GPT creado con nombre, descripción e instrucciones.
2. El archivo `ubicaciones-de-prueba.md` cargado como conocimiento.
3. Una acción configurada con un esquema OpenAPI generado con ayuda de ActionsGPT o ChatGPT.
4. Una consulta exitosa a Open-Meteo usando el nombre de una ciudad de prueba.
5. Una respuesta organizada con datos meteorológicos.
6. Una explicación breve de los límites del uso de APIs públicas en GPTs.
