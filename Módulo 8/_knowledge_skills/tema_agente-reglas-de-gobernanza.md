# Las **reglas de gobernanza** (también conocidas como límites de seguridad o *guardrails*)

Funcionan como los controles que aseguran que un agente opere de manera predecible y no ejecute acciones críticas sin la supervisión adecuada. Al diseñar un agente, estas reglas determinan **qué debe hacer que el agente se detenga, cuándo debe escalar una situación y qué reglas estrictas debe acatar**.

Básicamente, establecen los límites de lo que el agente tiene permitido hacer por su cuenta. Estos controles se aplican mediante diversas restricciones:

*   **Puntos de control humano (*Human-in-the-loop*):** Se utilizan para acciones sensibles, configurando al agente para que requiera aprobaciones antes de avanzar. Por ejemplo, un agente que resume embudos de ventas puede redactar ideas y notificar a los responsables, pero se le puede prohibir hacer contacto directo con un cliente sin aprobación previa.
*   **Restricciones financieras o de impacto:** Un agente de campañas de marketing puede analizar el rendimiento y recomendar optimizaciones, pero mediante una regla de gobernanza se le exige obtener aprobación antes de ejecutar cualquier cambio en el presupuesto.
*   **Escalamiento inteligente:** Un agente de triaje de retroalimentación de productos puede limitarse a crear tickets en "borrador" y estar programado para detenerse y escalar inmediatamente cualquier problema de alta prioridad a un supervisor.

**¿Cómo se configuran estas reglas?**
Puedes establecer estos límites, aprobaciones requeridas y puntos de control directamente a través del chat con el constructor del agente (*agent builder*). Al describirle en lenguaje natural qué restricciones necesitas, **el constructor modificará automáticamente las instrucciones subyacentes del agente** para integrar estas barreras de seguridad.

Como platicamos anteriormente sobre las evaluaciones (*evals*), una vez que agregas estas reglas de gobernanza, es fundamental poner a prueba al agente con diferentes solicitudes (como casos extremos o entradas desordenadas) para confirmar que realmente está respetando los límites establecidos antes de implementarlo en tu equipo.

## Límites, supervisión y gobierno

Aunque las fuentes proporcionadas se centran principalmente en **entornos corporativos y de negocios** (como finanzas, ventas y operaciones) en lugar de entornos estrictamente "industriales" o de manufactura, los principios de gobierno, límites y supervisión de los agentes se aplican directamente a flujos de trabajo de alto impacto. Además, ten en cuenta que las fuentes no utilizan explícitamente el término "alucinaciones", pero sí abordan las limitaciones de fiabilidad de los agentes.

A continuación, te detallo cómo funcionan estos controles basándonos en la información disponible:

**Qué no puede hacer un agente de forma fiable (Límites y contexto)**
*   **Falta de contexto general y comprensión del riesgo:** Por muy bien construido que esté un agente, este no puede reemplazar el juicio humano de forma fiable en situaciones críticas. El agente carece de la comprensión del "contexto más amplio" y de "lo que está en juego" (*the stakes of the task*) en una operación. 
*   **Dependencia del criterio humano:** Un agente es excelente procesando datos y estructurando información, pero es el humano quien realmente sabe "cómo se ve una buena respuesta". Por lo tanto, dejar que un agente actúe con total autonomía sin supervisión en tareas de alto riesgo no es una práctica recomendada.

**Puntos de control humano (Cuándo pausar, confirmar o derivar)**
Para evitar que el agente ejecute acciones sensibles por su cuenta, se deben configurar barreras de seguridad o *guardrails* que establezcan **puntos de control humano (*human-in-the-loop*)**. 
*   **Pausar y confirmar:** Puedes configurar al agente para que realice todo el trabajo analítico o de redacción, pero obligarlo a detenerse y **esperar una revisión antes de enviar cualquier cosa**. Por ejemplo, en tareas financieras o de contacto externo, el agente puede redactar recomendaciones o correos, pero se le exige estrictamente obtener aprobación antes de ejecutar cambios de presupuesto o realizar un envío definitivo.
*   **Derivar y escalar:** En flujos de trabajo de triaje y monitoreo, el agente puede estar instruido para clasificar los problemas diarios, crear tickets en borrador y **escalar inmediatamente cualquier problema de alta prioridad** a los responsables humanos en lugar de intentar resolverlo por sí mismo.

**Trazabilidad: Cómo revisar el razonamiento y los pasos ejecutados**
La plataforma ofrece herramientas específicas para auditar el comportamiento del agente y garantizar que sus decisiones sean transparentes:
*   **Historial de actividad y rastros de ejecución (*run traces*):** Una vez que el agente ha operado, los usuarios pueden acceder a un historial de actividad para revisar exactamente qué hizo. En este panel, se pueden inspeccionar los rastros de ejecución, lo que permite ver **qué herramientas utilizó, qué entradas (*inputs*) recibió, las decisiones que tomó y el resultado final que generó**.
*   **Auditoría en tiempo real:** Durante las fases de prueba o ejecución manual, puedes observar al agente trabajar paso a paso en tiempo real. Esto es fundamental para entender su lógica interna y detectar si hay partes de sus instrucciones que están provocando errores de razonamiento y necesitan ser modificadas.

**Consideraciones de seguridad en entornos operativos de alto impacto**
El control sobre lo que un agente puede afectar está estrictamente delimitado por los permisos y la gobernanza del espacio de trabajo:
*   **Restricción de acceso a datos y herramientas:** Un agente **solo puede utilizar las herramientas y los datos a los que se le da acceso explícito**. Como creador u operario, tú defines y modificas estos permisos, asegurando que el agente no pueda interactuar con sistemas críticos no autorizados.
*   **Control de Administradores (RBAC):** En entornos empresariales (como ChatGPT Enterprise), la capacidad de construir agentes y acceder a conectores está controlada centralmente por los administradores del espacio de trabajo. Ellos utilizan un **control de acceso basado en roles (RBAC)** para garantizar que solo el personal con los permisos adecuados pueda autorizar al agente a interactuar con sistemas clave.
*   **Cuentas de servicio ("Propiedad del agente"):** Para flujos de trabajo programados o en segundo plano, las conexiones a los sistemas se pueden configurar como "propiedad del agente" (*agent owned*). Esto funciona como una cuenta de servicio independiente, lo que significa que el agente opera de forma segura sin depender de (ni comprometer) la configuración o las credenciales personales de un empleado individual.