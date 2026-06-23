# Ejercicio 001 - GPT Plantillas Operativas Solclef

> **Módulo 07 - GPTs personalizados**  
> Duracion estimada: 55 minutos  
> Documento formativo ficticio

---

## Objetivo

Construir un GPT personalizado que ayude a crear formatos internos simples para actividades operativas, administrativas y de seguimiento.

El GPT debe recibir una necesidad expresada por el usuario y devolver una plantilla clara, reutilizable y facil de completar.

---

## Contexto

En una organizacion de energia renovable se preparan documentos recurrentes para reuniones, seguimiento de acciones, reportes de actividad, registros de visita, controles de seguridad, iniciativas ESG y tareas administrativas.

En este ejercicio se creara un GPT que permita transformar una solicitud sencilla en una plantilla estructurada.

Ejemplo de solicitud:

```text
Necesito una plantilla para hacer seguimiento mensual de acciones pendientes de un equipo de planta.
```

El GPT debera responder con una estructura util, sin convertirla en un documento oficial ni asumir procesos internos no entregados.

---

## Archivos de trabajo

| Archivo | Que es | Donde encontrarlo |
|---------|--------|-------------------|
| `ejemplos-formatos.md` | Ejemplos de formatos simples que serviran como referencia | `insumos/` |
| `instrucciones-gpt.md` | Bloque que se copia en el campo Instrucciones del GPT | `configuracion/` |
| `prompts-de-uso.md` | Prompts listos para probar el GPT | `prompts/` |

---

## Instrucciones del ejercicio

### Paso 1 - Crear el GPT

1. Abre ChatGPT con una cuenta que permita crear GPTs.
2. Ve al menu lateral y selecciona **Explorar GPTs**.
3. Selecciona **Crear**.
4. En el panel de configuracion, completa los campos principales.

**Nombre**

```text
GPT Plantillas Operativas Solclef
```

**Descripcion**

```text
Crea plantillas internas simples para actividades operativas, administrativas y de seguimiento, usando estructuras claras, reutilizables y faciles de completar.
```

**Instrucciones**

Copia el bloque completo de `configuracion/instrucciones-gpt.md` y pegalo en el campo **Instrucciones** del GPT.

---

### Paso 2 - Cargar la base de conocimiento

1. En la seccion **Conocimiento**, selecciona **Subir archivos**.
2. Sube el archivo `insumos/ejemplos-formatos.md`.
3. Este archivo funcionara como referencia de estructura, tono y nivel de detalle.

---

### Paso 3 - Configurar capacidades

Configura las capacidades del GPT asi:

| Capacidad | Estado recomendado |
|-----------|--------------------|
| Busqueda web | Desactivada |
| Generacion de imagenes | Desactivada |
| Canvas | Activada |
| Analisis de datos | Activada |
| Acciones | Sin configurar |

El GPT debe trabajar con las instrucciones y con los ejemplos cargados. No necesita buscar informacion externa.

---

### Paso 4 - Configurar iniciadores de conversacion

Agrega estos iniciadores:

```text
Crea una plantilla para seguimiento mensual de acciones pendientes
```

```text
Necesito un formato simple para una minuta de reunion operativa
```

```text
Genera un checklist para una visita de seguimiento a planta
```

```text
Convierte esta necesidad en una plantilla facil de completar
```

---

### Paso 5 - Probar el GPT

En la vista previa del GPT, envia este mensaje:

```text
Necesito una plantilla simple para registrar una reunion mensual de seguimiento de planta. Debe incluir acuerdos, responsables, fechas y estado de avance.
```

La respuesta debe incluir una plantilla estructurada, campos minimos, instrucciones breves de uso y una nota de revision humana.

---

### Paso 6 - Revisar y ajustar

Analiza la respuesta generada por el GPT:

- Verifica que la plantilla sea facil de completar.
- Comprueba que incluya campos minimos de trazabilidad.
- Revisa que el lenguaje sea claro y profesional.
- Valida que el GPT no presente la plantilla como oficial o aprobada.
- Si el resultado es demasiado largo o complejo, ajusta las instrucciones y prueba de nuevo.

---

## Entregable

Al finalizar el ejercicio se debe tener:

1. Un GPT configurado y funcionando.
2. El archivo de ejemplos cargado como conocimiento.
3. Una plantilla generada por el GPT.
4. Una prueba adicional con otro tipo de formato.
5. Una breve nota con al menos un ajuste realizado o una mejora que se aplicaria a las instrucciones.

---

## Criterios de exito

| Criterio | Verificacion |
|----------|--------------|
| El GPT responde con una plantilla completa | Si / No |
| La plantilla incluye objetivo, uso recomendado y campos | Si / No |
| La salida es clara y reutilizable | Si / No |
| El GPT evita inventar politicas o procesos internos | Si / No |
| El resultado requiere revision humana antes de uso oficial | Si / No |

---

## Reflexion final

Cuando termine el ejercicio, responde:

- Que parte de la creacion de formatos se acelera con este GPT?
- Que parte sigue requiriendo revision humana?
- Que otros formatos internos podrian crearse con una version ampliada de este GPT?
