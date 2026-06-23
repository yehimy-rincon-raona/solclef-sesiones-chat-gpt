# CU03 - Ficha del caso de uso - GPT Monitor Meteoenergetico Solclef

> Modulo 01 - GPTs personalizados - Solclef  
> Caso formativo ficticio para practica de configuracion de GPTs con acciones/API

---

## Nombre del caso de uso

**Monitor meteoenergetico con API publica**

GPT personalizado que consulta datos meteorologicos publicos y los transforma en una lectura simple para apoyar ejercicios de seguimiento operativo de activos solares.

---

## Escenario

Los equipos que trabajan con activos de energia renovable suelen consultar informacion meteorologica para contextualizar reportes, reuniones o seguimientos operativos.

En este ejercicio se creara un GPT que no depende de archivos cargados como conocimiento, sino de una **accion conectada a una API publica**. La accion consultara datos meteorologicos de Open-Meteo usando coordenadas de una ubicacion.

El objetivo no es construir una herramienta operativa critica, sino aprender el flujo basico para conectar un GPT a una API externa de forma guiada, sencilla y verificable.

---

## Problema que resuelve

| Situacion actual | Impacto |
|------------------|---------|
| Las personas deben entrar manualmente a una web meteorologica | Mayor friccion para obtener una lectura rapida |
| Las URLs de API suelen ser largas o poco intuitivas | Dificultad para aprender a configurar acciones |
| Los datos tecnicos llegan en formato JSON | El usuario necesita interpretarlos y ordenarlos |
| Se mezclan datos reales con conclusiones no verificadas | Riesgo de sobreinterpretar la informacion |

El GPT ayuda a consultar una API publica y presentar los datos de forma clara, pero no sustituye sistemas tecnicos, SCADA, herramientas meteorologicas profesionales ni criterio operativo.

---

## Objetivo del caso de uso

Construir un GPT personalizado que consulte la API publica de Open-Meteo y devuelva una tabla simple con datos meteorologicos relevantes para una ubicacion.

El GPT recibira coordenadas o una ubicacion de referencia y debera devolver:

| Dato | Uso esperado |
|------|--------------|
| Temperatura | Contexto ambiental |
| Nubosidad | Condicion general del cielo |
| Viento | Condicion meteorologica basica |
| Radiacion solar | Contexto de recurso solar |
| Fecha y hora consultada | Trazabilidad de la consulta |
| Lectura simple | Resumen no critico para el usuario |

---

## Alcance del GPT

### El GPT debe hacer

- Pedir coordenadas si el usuario no las entrega.
- Consultar la accion configurada con la API de Open-Meteo.
- Devolver datos en una tabla clara.
- Explicar brevemente que significan los datos en lenguaje sencillo.
- Indicar la ubicacion consultada, fecha, zona horaria y variables usadas.
- Avisar cuando la API no devuelva datos suficientes.
- Mantener una separacion clara entre dato consultado e interpretacion.

### El GPT no debe hacer

- Tomar decisiones operativas criticas.
- Recomendar arranque, parada o modificacion de operacion de una planta.
- Sustituir sistemas SCADA, protocolos internos o juicio tecnico.
- Inventar datos si la API no responde.
- Presentar una prediccion meteorologica como certeza.
- Usar datos internos de Solclef que no hayan sido entregados en la conversacion.

---

## Usuarios previstos

| Usuario | Uso esperado |
|---------|--------------|
| Participantes de la formacion | Aprender a crear un GPT con accion/API |
| Equipos de soporte o analisis | Consultar un ejemplo simple de datos externos |
| Personas de negocio | Entender como un GPT puede traer datos publicos y resumirlos |

---

## Valor esperado

- Entender como se configura una accion en un GPT.
- Reducir la complejidad de trabajar con una API larga.
- Aprender a transformar una respuesta JSON en una salida clara.
- Practicar limites de uso y advertencias responsables.
- Tener una base reutilizable para otros casos con APIs publicas.

---

## Herramienta utilizada

GPT personalizado con:

- Instrucciones de comportamiento.
- Accion configurada mediante un esquema OpenAPI simplificado.
- API publica de Open-Meteo.
- Busqueda web desactivada.
- Analisis de datos desactivado para este ejercicio.
- Generacion de imagenes desactivada.

---

## Resultado esperado del ejercicio

Al finalizar, debes tener:

1. Un GPT creado con nombre, descripcion e iniciadores configurados.
2. Una accion conectada a la API publica de Open-Meteo.
3. Una consulta de prueba realizada con coordenadas de ejemplo.
4. Una respuesta en formato tabla con datos meteorologicos.
5. Una explicacion breve sobre los limites de uso de una API publica.

---

## Nota formativa

Este material es ficticio y se usa solo para fines de aprendizaje. No representa un sistema operativo real de Solclef ni debe utilizarse para tomar decisiones tecnicas o de seguridad.
