# Guía de diseño de Skills de ChatGPT

## Propósito

Esta guía se usa cuando el usuario quiere diseñar, estructurar, aterrizar o convertir una idea en un Skill.

El objetivo es pasar de una idea general a una estructura clara, reutilizable y evaluable.

---

## Método recomendado para diseñar un Skill

Cuando el usuario quiera diseñar un Skill, guía el proceso en estas fases:

1. Descubrimiento.
2. Definición del objetivo.
3. Casos de uso.
4. Diseño del flujo.
5. Definición de entradas y salidas.
6. Reglas de comportamiento.
7. Recursos necesarios.
8. Criterios de calidad.
9. Riesgos o ambigüedades.
10. Siguiente paso: documentación o implementación.

No es obligatorio desarrollar todas las fases con el mismo nivel de detalle en cada respuesta. Ajusta la profundidad según lo que el usuario pida:

- Si la idea está poco clara, prioriza descubrimiento, objetivo y preguntas pendientes.
- Si la idea ya está clara, entrega una estructura completa.
- Si el usuario pide instrucciones, enfócate en comportamiento, activación, límites y formato de salida.
- Si el usuario pide documentación formal, usa esta guía solo para completar vacíos antes de aplicar el template.

Antes de diseñar en detalle, verifica si la tarea realmente parece candidata a Skill. Si hay dudas fuertes, recomienda una evaluación previa.

---

## Fase 1: Descubrimiento

Identifica:

- Problema que se quiere resolver.
- Usuario objetivo.
- Contexto de uso.
- Frecuencia de uso.
- Dolor actual.
- Resultado esperado.

Preguntas clave:

- ¿Qué tarea quieres que ChatGPT haga mejor o de forma más consistente?
- ¿Qué pasos repites actualmente?
- ¿Qué información debe recibir el Skill?
- ¿Qué resultado debe entregar?
- ¿Qué reglas debe seguir siempre?
- ¿Qué errores debe evitar?

---

## Fase 2: Definición del objetivo

Formula el objetivo del Skill con esta estructura:

```text
El Skill debe ayudar a [usuario] a [tarea principal] a partir de [entradas] para producir [salida esperada], siguiendo [criterios o reglas clave].
```

Un buen objetivo operativo debe cumplir estas condiciones:

- Nombra un usuario o perfil de uso.
- Describe una tarea concreta.
- Indica qué información recibe.
- Define qué resultado entrega.
- Incluye al menos un criterio de calidad o regla clave.
- Evita verbos demasiado amplios como “ayudar”, “mejorar” o “gestionar” sin especificar la acción.

---

## Fase 3: Casos de uso

Documenta al menos tres casos de uso:

- Caso de uso básico.
- Caso de uso intermedio.
- Caso de uso avanzado.

Para cada caso, especifica:

| Elemento | Descripción |
|---|---|
| Entrada del usuario | Qué proporciona el usuario |
| Proceso esperado | Qué debe hacer el Skill |
| Salida esperada | Qué debe entregar |
| Criterios de éxito | Cómo saber si funcionó bien |

---

## Fase 4: Diseño del flujo

Define el flujo del Skill paso a paso:

1. Recibir entrada.
2. Interpretar intención.
3. Validar información necesaria.
4. Consultar referencias o recursos.
5. Ejecutar análisis o transformación.
6. Generar salida.
7. Validar calidad.
8. Entregar resultado final.

Formato opcional:

| Paso | Acción | Entrada | Salida |
|---|---|---|---|

El flujo debe ser ejecutable por ChatGPT. Evita pasos que dependan de capacidades no confirmadas, herramientas no disponibles o decisiones que no estén descritas.

---

## Fase 5: Entradas y salidas

Usa esta tabla cuando el usuario necesite definir inputs y outputs:

| Elemento | Definición | Ejemplo |
|---|---|---|
| Entrada obligatoria | Información mínima necesaria para ejecutar el Skill |  |
| Entrada opcional | Información que mejora el resultado pero no es indispensable |  |
| Salida principal | Resultado central esperado |  |
| Salidas secundarias | Complementos útiles del resultado |  |
| Criterios de calidad | Condiciones que debe cumplir la salida |  |

---

## Fase 6: Reglas de comportamiento

Define qué debe hacer siempre el Skill y qué debe evitar.

Ejemplo:

| Tipo de regla | Descripción |
|---|---|
| Debe hacer | Comportamientos obligatorios |
| No debe hacer | Límites o errores que debe evitar |
| Debe preguntar | Casos en los que falta información crítica |
| Puede asumir | Supuestos permitidos cuando falta información no crítica |

Las reglas deben ser observables. Evita reglas vagas como “ser claro” si no explican cómo se verá esa claridad en la salida.

---

## Fase 7: Recursos necesarios

Identifica si el Skill necesita:

- Archivos de referencia.
- Plantillas.
- Scripts.
- Assets.
- Ejemplos.
- Checklists.
- Documentación técnica.
- Guías metodológicas.

---

## Fase 8: Estructura técnica del Skill

Cuando sea necesario explicar la estructura técnica de un Skill, puedes usar una estructura similar a esta como referencia conceptual:

```text
nombre-del-skill/
├── SKILL.md
├── references/
│   └── guia-metodologica.md
├── scripts/
│   └── script-opcional.py
├── assets/
│   └── plantilla-opcional.md
└── agents/
    └── openai.yaml
```

No presentes esta estructura como obligatoria para todos los casos. Úsala solo cuando el usuario esté pasando del diseño conceptual a una posible implementación.

---

## Criterios de solidez del diseño

Antes de considerar que el diseño está completo, verifica:

- El problema está descrito de forma concreta.
- El usuario objetivo está definido.
- El objetivo operativo es medible o verificable.
- Las entradas necesarias están separadas de las opcionales.
- Las salidas esperadas tienen formato y nivel de detalle.
- El flujo tiene inicio, pasos intermedios y cierre.
- Las reglas cubren comportamiento esperado y límites.
- Hay criterios de calidad para revisar el resultado.
- Los riesgos o ambigüedades están señalados.
- El diseño puede convertirse en documentación sin rehacerlo desde cero.

---

## Resultado esperado

La respuesta debe ayudar al usuario a convertir una idea en un diseño claro de Skill, con:

- Objetivo definido.
- Usuario objetivo.
- Casos de uso.
- Entradas y salidas.
- Flujo de trabajo.
- Reglas.
- Recursos.
- Criterios de calidad.
- Riesgos.
