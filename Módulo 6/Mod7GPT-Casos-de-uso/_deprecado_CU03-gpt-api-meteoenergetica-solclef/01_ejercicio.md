# Ejercicio 003 - GPT Monitor Meteoenergetico Solclef

> **Modulo 1 - GPTs personalizados**  
> Duracion estimada: 75 minutos

---

## Objetivo

Crear un GPT personalizado que consulte una API publica meteorologica y devuelva una lectura simple de datos relevantes para una ubicacion.

En este ejercicio no se cargaran archivos como conocimiento. El foco esta en aprender a configurar una **accion** usando un esquema OpenAPI ya preparado.

---

## Contexto

Una persona del equipo necesita consultar rapidamente condiciones meteorologicas de una zona donde hay activos solares o donde se esta preparando un reporte de contexto.

La API seleccionada para el ejercicio es **Open-Meteo**, una API publica que permite consultar datos meteorologicos usando coordenadas de latitud y longitud.

Para evitar complejidad, el ejercicio usara:

- Una sola accion.
- Un esquema OpenAPI ya preparado.
- Coordenadas de ejemplo.
- Variables meteorologicas basicas.
- Una salida tabular sencilla.

---

## Archivos de trabajo

| Archivo | Que es | Donde encontrarlo |
|---------|--------|-------------------|
| `configuracion/instrucciones-gpt.md` | Instrucciones que se copian en el GPT | `configuracion/` |
| `configuracion/openapi-schema.md` | Esquema para configurar la accion | `configuracion/` |
| `insumos/coordenadas-ejemplo.md` | Coordenadas listas para probar | `insumos/` |
| `prompts/prompts-de-uso.md` | Prompts para probar el GPT | `prompts/` |

---

## Instrucciones del ejercicio

### Paso 1 - Crear el GPT

1. Abre ChatGPT con una cuenta que permita crear GPTs.
2. Ve al menu lateral y selecciona **Explorar GPTs**.
3. Selecciona **Crear**.
4. Abre la pestana **Configurar**.
5. Completa los campos principales.

**Nombre**

```text
GPT Monitor Meteoenergetico Solclef
```

**Descripcion**

```text
Consulta una API publica meteorologica y resume datos de temperatura, nubosidad, viento y radiacion solar para una ubicacion indicada por coordenadas.
```

**Instrucciones**

Copia el bloque completo de `configuracion/instrucciones-gpt.md` y pegalo en el campo **Instrucciones** del GPT.

---

### Paso 2 - Configurar capacidades

Configura las capacidades asi:

| Capacidad | Estado recomendado |
|-----------|--------------------|
| Busqueda web | Desactivada |
| Generacion de imagenes | Desactivada |
| Canvas | Opcional |
| Analisis de datos | Desactivada |
| Acciones | Activada |

La capacidad importante para este ejercicio es **Acciones**.

---

### Paso 3 - Crear la accion

1. En la configuracion del GPT, busca la seccion **Acciones**.
2. Selecciona **Crear nueva accion**.
3. Abre el archivo `configuracion/openapi-schema.md`.
4. Copia solo el bloque YAML indicado.
5. Pegalo en el campo de esquema de la accion.
6. Guarda la accion.

No es necesario entrar a la documentacion completa de Open-Meteo. El esquema ya esta preparado para este ejercicio.

---

### Paso 4 - Entender la URL simple

La API usara esta estructura base:

```text
https://api.open-meteo.com/v1/forecast
```

El GPT no necesita que el usuario escriba la URL completa. El usuario solo debe entregar coordenadas o usar una de las coordenadas de ejemplo.

Ejemplo de coordenadas:

```text
Latitud: 38.8794
Longitud: -6.9707
```

---

### Paso 5 - Probar la accion

En la vista previa del GPT, envia este mensaje:

```text
Consulta las condiciones meteoenergeticas para latitud 38.8794 y longitud -6.9707. Devuelve una tabla simple.
```

El GPT deberia llamar a la accion y devolver una tabla con datos meteorologicos.

---

### Paso 6 - Revisar el resultado

Verifica que la respuesta incluya:

- Ubicacion consultada.
- Fecha u hora de la consulta.
- Temperatura.
- Nubosidad.
- Viento.
- Radiacion solar o variable solar disponible.
- Lectura simple.
- Advertencia de uso no critico.

---

## Entregable

Al finalizar el ejercicio debes tener:

1. Un GPT configurado.
2. Una accion conectada a Open-Meteo.
3. Una consulta ejecutada con coordenadas de ejemplo.
4. Una tabla de resultados generada por el GPT.
5. Una breve reflexion sobre que ventajas y limites tiene conectar un GPT a una API publica.

---

## Criterios de exito

| Criterio | Verificacion |
|----------|--------------|
| El GPT tiene una accion configurada | Si / No |
| La accion usa el esquema OpenAPI entregado | Si / No |
| El GPT pide coordenadas cuando faltan | Si / No |
| La respuesta devuelve datos en tabla | Si / No |
| El GPT no inventa datos si la API falla | Si / No |
| El GPT incluye advertencia de uso no critico | Si / No |

---

## Reflexion final

Cuando termines, responde:

- ¿Que parte del proceso facilita la conexion con una API?
- ¿Que informacion sigue necesitando interpretacion humana?
- ¿Que otras APIs publicas podrian conectarse en un GPT similar?

---

## Nota formativa

Este ejercicio usa una API publica con fines didacticos. Los datos consultados pueden variar segun disponibilidad del servicio, ubicacion, modelo meteorologico y momento de consulta.
