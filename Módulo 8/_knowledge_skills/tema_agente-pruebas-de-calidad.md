# Las pruebas de calidad, o **"evals"** (evaluaciones)

Son un conjunto de pruebas fundamentales que configuras para asegurarte de que tu agente funcione correctamente antes de activarlo o compartirlo con tu equipo. 

Al configurar estas evaluaciones, el proceso se centra en responder **tres preguntas clave** sobre el comportamiento del agente:
1. ¿Sigue correctamente las instrucciones?
2. ¿Produce un resultado que sea verdaderamente útil?
3. ¿Respeta los límites de seguridad o las reglas establecidas (*guardrails*)?

Para realizar una prueba exhaustiva, debes estructurar tus evaluaciones utilizando tres tipos de escenarios o entradas (*inputs*):
*   **Entradas realistas (Realistic test inputs):** Son solicitudes comunes que representan fielmente el trabajo diario que quieres que el agente maneje.
*   **Entradas desordenadas (Messy test inputs):** Consisten en solicitudes incompletas, sin estructura o con información contradictoria. Si la calidad del resultado del agente disminuye ante estas solicitudes, significa que has encontrado un punto débil que debe ajustarse.
*   **Casos extremos (Edge cases):** Son solicitudes inusuales o raras, pero que aún son posibles dentro del entorno de trabajo.

**¿Cómo es el flujo para corregir y mejorar el agente?**

1. Puedes probar tu agente a pedido yendo al creador de agentes (*agent builder*), haciendo clic en **"vista previa" (preview)** y enviando un prompt para activarlo de forma manual.
2. Es muy importante **seguir utilizando el mismo set de pruebas (eval) cada vez que hagas un cambio**; de esta forma puedes comparar los resultados objetivamente en lugar de adivinar si el agente ha mejorado.
3. Si durante la prueba el agente se equivoca, debes decirle en el chat del editor exactamente qué salió mal. Por ejemplo: *"Cuando te paso notas preliminares, omites detalles clave e ignoras el formato que te pedí"*.
4. Finalmente, permites que el agente actualice sus propias instrucciones basándose en tu retroalimentación y **vuelves a ejecutar exactamente la misma prueba** para confirmar que el error se ha parcheado con éxito.

## Cómo se corrijen los errores de un agente

Para corregir los errores que detectas durante las evaluaciones de tu agente, debes seguir un ciclo de retroalimentación y ajuste directamente en el editor. Estos son los pasos detallados:

1. **Observa el proceso en tiempo real:** Al realizar una prueba manual desde la "vista previa" (preview), puedes ver cómo el agente ejecuta la tarea paso a paso. Observar su lógica en tiempo real te ayudará a identificar exactamente qué parte de tus instrucciones iniciales necesita ser modificada.
2. **Proporciona retroalimentación específica en el chat:** Cuando la prueba falle o el resultado no sea el esperado, debes usar la barra lateral izquierda (el chat del constructor del agente) para decirle exactamente qué salió mal. Por ejemplo, puedes escribirle: *"Cuando pego notas preliminares, omites detalles clave e ignoras el formato que te pedí"*.
3. **Deja que el agente actualice sus instrucciones:** Una vez que ingresas tu retroalimentación, el constructor del agente utilizará esa información para **actualizar automáticamente sus propias instrucciones** y corregir el comportamiento.
4. **Parchea y vuelve a probar (Patch and retest):** Una vez actualizadas las instrucciones, debes **volver a ejecutar exactamente la misma evaluación**. Usar la misma prueba te permite confirmar de manera objetiva que el error se ha solucionado antes de poner el agente en vivo o compartirlo con tu equipo.

## Como usar las entradas desordenadas (messy inputs) para mejorar la robustez de tu agente

Las **entradas desordenadas** (*messy test inputs*) son solicitudes que se introducen intencionalmente durante las evaluaciones y que se caracterizan por ser **incompletas, carecer de estructura o contener información contradictoria**.

Se utilizan añadiéndolas a tu conjunto de pruebas junto con las entradas realistas (solicitudes comunes) y los casos extremos (solicitudes inusuales pero posibles). 

El propósito de usar estas entradas es **evaluar la robustez de tu agente ante situaciones imperfectas**. Al someter al agente a una entrada desordenada, debes observar su comportamiento: **si la calidad de su resultado disminuye, significa que has encontrado un punto débil** en sus instrucciones o lógica. 

Una vez que identificas este punto débil gracias a la entrada desordenada, debes usar el chat del editor para darle retroalimentación específica (por ejemplo, indicándole qué ignoró o qué hizo mal al procesar esa información confusa), permitir que actualice sus instrucciones y volver a ejecutar la misma evaluación para confirmar que ahora maneja correctamente ese escenario.

Para probar a un agente ante solicitudes incompletas, debes utilizar lo que se conoce como **entradas desordenadas** (*messy test inputs*) dentro de tu conjunto de evaluaciones o *evals*. Estas son peticiones creadas intencionalmente para ser incompletas, carecer de estructura o contener información contradictoria.

### El flujo para realizar esta prueba y mejorar al agente es el siguiente:

1. **Añade las solicitudes incompletas a tu prueba:** Introdúcelas junto con las **entradas realistas** (el trabajo común del día a día) y los **casos extremos** (peticiones inusuales pero posibles).
2. **Identifica los puntos débiles:** Al procesar estas entradas, debes observar el resultado; si la calidad del trabajo del agente disminuye, significa que has encontrado una vulnerabilidad o punto débil en su lógica.
3. **Corrige mediante el chat:** Si la prueba falla, debes decirle al agente exactamente qué salió mal a través del chat. Por ejemplo, puedes indicarle: *"Cuando te paso notas preliminares o incompletas, omites detalles clave e ignoras el formato que te pedí"*. 
4. **Parchea y vuelve a probar (*Patch and retest*):** Finalmente, permite que el agente actualice sus instrucciones basándose en tu retroalimentación y vuelve a ejecutar exactamente la misma evaluación. Es fundamental usar la misma prueba para poder comparar los cambios objetivamente y confirmar que el agente ahora sabe manejar esas solicitudes incompletas.