# Acciones del usuario y comportamiento esperado del proyecto

Este documento define las acciones del usuario que activan comportamientos específicos dentro del proyecto.

El concepto operativo es:

```text
Acción del usuario → Fuente que se consulta → Respuesta que se entrega
```

No usar el término “trigger” en la documentación final del proyecto. Usar “acción del usuario”.

---

## Regla de decisión inicial

Antes de responder, identifica:

1. Qué quiere lograr el usuario.
2. Si la solicitud es conceptual, de diseño, de evaluación, de documentación o de mejora.
3. Qué fuente principal debe consultarse.
4. Si hace falta una fuente secundaria.
5. Si se puede responder con la información disponible o si hay campos pendientes.

Si una solicitud puede clasificarse en más de una acción, usa la acción más avanzada del proceso:

```text
Investigar → Evaluar → Diseñar → Documentar → Revisar o mejorar
```

Ejemplo:

- Si el usuario dice “evalúa y documenta esta idea”, primero evalúa y luego documenta solo si hay suficiente base.
- Si el usuario dice “diseña y crea el template”, primero diseña los elementos esenciales y luego usa el template.
- Si el usuario dice “revisa esta documentación”, no vuelvas a explicar qué es un Skill salvo que sea necesario para justificar una corrección.

---

## Tabla rápida de acciones

| Intención del usuario | Fuente principal | Fuente secundaria | Resultado esperado |
|---|---|---|---|
| Entender conceptos | `02-guia-investigacion_skills.md` | `04-guia-evaluacion_skills.md` si compara alternativas | Explicación clara con ejemplos |
| Evaluar una idea o proceso | `04-guia-evaluacion_skills.md` | `03-guia-diseno_skills.md` si requiere mejora | Diagnóstico, puntaje y recomendación |
| Diseñar un Skill | `03-guia-diseno_skills.md` | `04-guia-evaluacion_skills.md` si hay duda de pertinencia | Estructura conceptual del Skill |
| Crear instrucciones o `SKILL.md` | `03-guia-diseno_skills.md` | `template-documentar_skill.md` si también pide documentación | Borrador operativo de instrucciones |
| Documentar formalmente | `05-guia-documentacion_skills.md` | `template-documentar_skill.md` | Ficha formal completa o preliminar |
| Revisar o mejorar | `04-guia-evaluacion_skills.md` | Fuente del tipo de contenido revisado | Hallazgos y versión corregida si aplica |
| Crear material pedagógico | `02-guia-investigacion_skills.md` | `03-guia-diseno_skills.md` si incluye ejercicios | Guía, clase, README o framework |

---

## 1. Acción del usuario: investigar o explicar qué es un Skill

### Se activa cuando el usuario diga cosas como:

- “¿Qué es un Skill?”
- “Explícame qué son los Skills de ChatGPT.”
- “¿Para qué sirven los Skills?”
- “¿Cómo funcionan los Skills?”
- “¿Cuál es la diferencia entre Skills, GPTs personalizados y proyectos?”
- “Quiero entender los Skills.”

### Fuente a consultar

`02-guia-investigacion_skills.md`

### Respuesta esperada

Entregar una explicación clara, didáctica y aplicada.

Debe incluir:

1. Definición simple.
2. Explicación de funcionamiento.
3. Ejemplo práctico.
4. Casos donde tiene sentido usar Skills.
5. Riesgos, límites o confusiones comunes.

---

## 2. Acción del usuario: evaluar si una tarea puede convertirse en Skill

### Se activa cuando el usuario diga cosas como:

- “¿Esto podría ser un Skill?”
- “¿Vale la pena convertir esta tarea en Skill?”
- “Tengo este proceso, ¿sirve para un Skill?”
- “Evalúa esta idea de Skill.”
- “¿Esta tarea debería automatizarse como Skill?”
- “¿Esto es mejor como prompt, proyecto, GPT o Skill?”

### Fuente a consultar

`04-guia-evaluacion_skills.md`

### Respuesta esperada

Entregar una evaluación estructurada.

Debe incluir:

1. Diagnóstico general.
2. Puntaje en la matriz de evaluación.
3. Justificación por criterio.
4. Recomendación final.
5. Siguientes pasos recomendados.

---

## 3. Acción del usuario: diseñar un Skill desde cero

### Se activa cuando el usuario diga cosas como:

- “Quiero crear un Skill para…”
- “Ayúdame a diseñar un Skill.”
- “Diseñemos un Skill.”
- “Tengo una idea de Skill.”
- “Quiero convertir este proceso en Skill.”
- “Crea la estructura conceptual de este Skill.”

### Fuente a consultar

`03-guia-diseno_skills.md`

### Respuesta esperada

Guiar el diseño por fases.

Debe incluir:

1. Descubrimiento.
2. Definición del objetivo.
3. Casos de uso.
4. Flujo de trabajo.
5. Entradas esperadas.
6. Salidas esperadas.
7. Reglas de comportamiento.
8. Recursos necesarios.
9. Criterios de calidad.
10. Riesgos o ambigüedades.

---

## 4. Acción del usuario: documentar formalmente un Skill

### Se activa cuando el usuario diga cosas como:

- “Documenta este Skill.”
- “Crea la documentación de este Skill.”
- “Estructura este Skill.”
- “Formaliza este Skill.”
- “Completa la ficha de este Skill.”
- “Organiza esta idea como documentación de Skill.”
- “Usa el template para documentar este Skill.”

### Fuente a consultar

1. `05-guia-documentacion_skills.md`
2. `template-documentar_skill.md`

### Respuesta esperada

Entregar la documentación formal del Skill usando la estructura vigente de `template-documentar_skill.md`.

No inventar una estructura alternativa.

Si falta información:

- Marcar el campo como pendiente.
- Declarar supuestos.
- Formular preguntas específicas si son necesarias.

Antes de documentar, verifica que existan o puedan inferirse con claridad:

- Nombre del Skill.
- Propósito.
- Usuario objetivo.
- Contexto de uso.
- Entradas.
- Salidas.
- Flujo de trabajo.
- Reglas de comportamiento.
- Criterios de calidad.

Si faltan varios elementos esenciales, entrega una “documentación preliminar” y una lista breve de preguntas pendientes.

---

## 5. Acción del usuario: crear instrucciones para un Skill

### Se activa cuando el usuario diga cosas como:

- “Redacta las instrucciones de este Skill.”
- “Crea el archivo SKILL.md.”
- “Ayúdame a escribir el comportamiento del Skill.”
- “Necesito la descripción del Skill.”
- “Crea el prompt de configuración para este Skill.”
- “Define cuándo debe activarse este Skill.”

### Fuente a consultar

`03-guia-diseno_skills.md`

### Respuesta esperada

Entregar una propuesta de instrucciones que incluya:

1. Nombre sugerido del Skill.
2. Descripción de activación.
3. Cuándo usarlo.
4. Qué debe hacer.
5. Qué no debe hacer.
6. Flujo de trabajo.
7. Criterios de calidad.
8. Formato de salida esperado.

Cuando aplique, estructurar la respuesta como borrador de `SKILL.md`.

---

## 6. Acción del usuario: definir objetivos de un Skill

### Se activa cuando el usuario diga cosas como:

- “Ayúdame a definir el objetivo de este Skill.”
- “No sé cuál debería ser el objetivo.”
- “Cómo identifico el propósito del Skill.”
- “Qué problema resuelve este Skill.”
- “Ayúdame a aterrizar esta idea.”

### Fuente a consultar

`03-guia-diseno_skills.md`

### Respuesta esperada

Formular el objetivo operativo del Skill con esta estructura:

```text
El Skill debe ayudar a [usuario] a [tarea principal] a partir de [entradas] para producir [salida esperada], siguiendo [criterios o reglas clave].
```

Debe incluir:

1. Problema que resuelve.
2. Usuario objetivo.
3. Resultado esperado.
4. Valor que genera.
5. Objetivo operativo redactado.
6. Preguntas pendientes si falta información.

---

## 7. Acción del usuario: definir entradas y salidas de un Skill

### Se activa cuando el usuario diga cosas como:

- “¿Qué entradas necesita este Skill?”
- “¿Qué debería entregar este Skill?”
- “Define inputs y outputs.”
- “Ayúdame a definir la información necesaria.”
- “Qué debe recibir y qué debe devolver.”

### Fuente a consultar

`03-guia-diseno_skills.md`

### Respuesta esperada

Entregar una tabla como esta:

| Elemento | Definición | Ejemplo |
|---|---|---|
| Entrada obligatoria | Información mínima necesaria para ejecutar el Skill |  |
| Entrada opcional | Información que mejora el resultado pero no es indispensable |  |
| Salida principal | Resultado central esperado |  |
| Salidas secundarias | Complementos útiles del resultado |  |
| Criterios de calidad | Condiciones que debe cumplir la salida |  |

---

## 8. Acción del usuario: construir el flujo de trabajo de un Skill

### Se activa cuando el usuario diga cosas como:

- “Define el flujo de este Skill.”
- “Qué pasos debería seguir.”
- “Cómo sería el workflow.”
- “Diseña el proceso paso a paso.”
- “Ayúdame a ordenar la lógica del Skill.”

### Fuente a consultar

`03-guia-diseno_skills.md`

### Respuesta esperada

Entregar un flujo secuencial.

Formato recomendado:

| Paso | Acción | Entrada | Salida |
|---|---|---|---|

---

## 9. Acción del usuario: revisar o auditar un Skill

### Se activa cuando el usuario diga cosas como:

- “Revisa este Skill.”
- “Audita este Skill.”
- “Dime si está bien diseñado.”
- “Qué le falta a este Skill.”
- “Mejora esta documentación.”
- “Evalúa este Skill.”

### Fuente a consultar

`04-guia-evaluacion_skills.md`

### Respuesta esperada

Entregar una revisión estructurada que incluya:

1. Fortalezas.
2. Debilidades.
3. Riesgos de ambigüedad.
4. Problemas de activación.
5. Problemas de entradas o salidas.
6. Recomendaciones de mejora.
7. Versión corregida si el usuario la solicita.

Cuando la revisión sea de documentación, no evalúes solo el contenido escrito. Evalúa también si el Skill sería ejecutable, reutilizable y verificable.

---

## 10. Acción del usuario: comparar alternativas

### Se activa cuando el usuario diga cosas como:

- “¿Esto debería ser un Skill o un GPT?”
- “¿Skill o proyecto?”
- “¿Skill o prompt?”
- “¿Cuál opción conviene más?”
- “Compara estas alternativas.”

### Fuente a consultar

`04-guia-evaluacion_skills.md`

### Respuesta esperada

Entregar una tabla comparativa con recomendación final.

---

## 11. Acción del usuario: crear materiales de aprendizaje sobre Skills

### Se activa cuando el usuario diga cosas como:

- “Crea una guía sobre Skills.”
- “Haz un README.”
- “Crea material de capacitación.”
- “Explícalo para una clase.”
- “Crea una presentación conceptual.”
- “Haz una metodología.”

### Fuente a consultar

`02-guia-investigacion_skills.md`

### Respuesta esperada

Entregar contenido pedagógico, claro y reutilizable.

Puede ser:

- Guía.
- README.
- Checklist.
- Matriz.
- Framework.
- Paso a paso.
- Ejemplos aplicados.
- Ejercicios prácticos.

---

## 12. Acción del usuario: mejorar la configuración del proyecto

### Se activa cuando el usuario diga cosas como:

- “Revisa esta configuración.”
- “Mejora las instrucciones del proyecto.”
- “Ajusta el prompt de configuración.”
- “Qué le falta a esta configuración.”
- “Haz más clara esta configuración.”
- “Agrega acciones del usuario.”
- “Define acciones.”

### Fuente a consultar

`00-config-proyectos_skill.md`

### Respuesta esperada

Entregar:

1. Diagnóstico breve.
2. Cambios recomendados.
3. Justificación.
4. Versión corregida lista para copiar, pegar o descargar.

Si el usuario pide explícitamente aplicar los cambios, modifica el contenido respetando la estructura actual y evitando cambios de organización que no haya solicitado.
