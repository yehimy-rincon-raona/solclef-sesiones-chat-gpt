# CU01 - Paso a paso - Configuracion del GPT Plantillas Operativas Solclef

> Módulo 07 - GPTs personalizados - Solclef  
> Documento formativo ficticio

---

## Archivos necesarios

| Archivo | Uso |
|---------|-----|
| `insumos/ejemplos-formatos.md` | Se carga como conocimiento del GPT. Sirve como referencia de estructura y estilo. |
| `configuracion/instrucciones-gpt.md` | Contiene el bloque que se copia en el campo Instrucciones del GPT. |
| `prompts/prompts-de-uso.md` | Contiene prompts listos para probar el GPT. |

---

## 1. Acceder al creador de GPTs

1. Ve a `chatgpt.com`.
2. Inicia sesion con una cuenta que permita crear GPTs.
3. En el menu lateral, selecciona **Explorar GPTs**.
4. Selecciona **Crear**.
5. Abre la pestana **Configurar**.

---

## 2. Completar nombre y descripcion

**Nombre**

```text
GPT Plantillas Operativas Solclef
```

**Descripcion**

```text
Crea plantillas internas simples para actividades operativas, administrativas y de seguimiento, usando estructuras claras, reutilizables y faciles de completar.
```

---

## 3. Configurar iniciadores de conversacion

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

## 4. Copiar las instrucciones

1. Abre `configuracion/instrucciones-gpt.md`.
2. Copia el bloque indicado para el campo **Instrucciones**.
3. Pegalo en el campo **Instrucciones** del GPT.
4. Guarda los cambios.

---

## 5. Cargar conocimiento

1. En la seccion **Conocimiento**, selecciona **Subir archivos**.
2. Sube `insumos/ejemplos-formatos.md`.
3. Verifica que el archivo quede visible en la lista de conocimiento cargado.

Este archivo no contiene normas ni datos oficiales. Su funcion es servir como referencia de estructura para que el GPT genere plantillas simples y consistentes.

---

## 6. Configurar capacidades

| Capacidad | Estado |
|-----------|--------|
| Busqueda web | Desactivada |
| Generacion de imagenes | Desactivada |
| Canvas | Activada |
| Analisis de datos | Activada |
| Acciones | Sin configurar |

El GPT debe trabajar con las instrucciones, con los ejemplos cargados y con la solicitud escrita por el usuario.

---

## 7. Probar el GPT

En la vista previa, envia esta solicitud:

```text
Necesito una plantilla simple para registrar una reunion mensual de seguimiento de planta. Debe incluir acuerdos, responsables, fechas y estado de avance.
```

La respuesta debe incluir:

- Nombre sugerido del formato.
- Objetivo del formato.
- Cuando usarlo.
- Campos obligatorios.
- Plantilla editable.
- Nota de revision antes de uso oficial.

---

## 8. Hacer una segunda prueba

Envia una nueva solicitud:

```text
Crea un checklist para registrar una visita de seguimiento operativo a una planta. Debe ser breve y facil de completar en campo.
```

Revisa si el GPT adapta la salida al tipo de documento solicitado.

---

## 9. Validar el resultado

Comprueba que la respuesta incluya:

- Una estructura clara.
- Campos minimos de trazabilidad.
- Lenguaje profesional y facil de entender.
- Una salida que pueda copiarse y ajustarse.
- Una advertencia de que el formato debe ser revisado antes de adoptarse como oficial.

---

## Errores frecuentes

| Sintoma | Causa probable | Como resolverlo |
|---------|----------------|-----------------|
| La respuesta es demasiado generica | La solicitud inicial no explica el uso del formato | Incluir contexto, area y tipo de documento |
| La plantilla es muy extensa | Las instrucciones no limitan la simplicidad | Reforzar que el GPT debe priorizar formatos breves |
| El GPT inventa procesos internos | Falta limite sobre no asumir politicas | Reforzar la regla de no inventar procedimientos |
| El GPT no usa tablas | El formato de salida no quedo claro | Revisar el bloque de instrucciones |
| La salida parece un documento oficial | Falta advertencia de revision humana | Verificar que se conserve la nota de revision |

---

## Cierre del ejercicio

El resultado del GPT es una ayuda para preparar borradores de formatos. La adopcion, publicacion o uso oficial de cualquier plantilla requiere revision del area responsable.
