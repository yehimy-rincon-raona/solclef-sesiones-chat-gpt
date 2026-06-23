# Licencias, permisos y límites para usar agentes en ChatGPT

Aquí te presento un resumen completo de lo que encontré en **OpenAI Academy** sobre licencias, permisos y límites para usar agentes (Workspace Agents) en ChatGPT:

---

## 🔑 Licencias y acceso a Workspace Agents

**¿En qué planes están disponibles los agentes?**
- **ChatGPT Enterprise** y **ChatGPT Business**: tienen acceso a Workspace Agents.
- **ChatGPT Edu**: los agentes están en *research preview* para espacios de trabajo elegibles, están **desactivados por defecto** y los administradores controlan su acceso.
- **ChatGPT Gov (Gobierno)**: el mínimo para contratar es **150 licencias**; la licencia Enterprise es equivalente a la Gov.

**Roles y permisos:**
- **Owner** (dueño): control total del workspace, billing, configuración, identidad.
- **Admin**: gestiona usuarios, conectores, analíticas y configuraciones de organización.
- **Member**: usa ChatGPT y puede crear GPTs si el owner lo permite.
- En **ChatGPT Enterprise**, solo Admins/Owners pueden gestionar usuarios; en **ChatGPT Business**, cualquier miembro puede invitar/remover usuarios.

---

## ⚙️ Controles de funciones para Agentes

Según la guía "Feature controls and integrations with your tools":
- **Agent Mode (Modo Agente)**: requiere créditos para funcionar; en K-12, se recomienda mantenerlo **OFF por defecto**.
- **Codex (agente de ingeniería de software en la nube)**: los owners Enterprise pueden gestionar si los miembros pueden usar Codex.
- **Connectors**: tanto Enterprise como Business pueden conectarse a apps de terceros; los admins gestionan esto desde el panel de administración.
- En **ChatGPT Enterprise**, el acceso para **construir agentes está controlado por los administradores del workspace**.

---

## 💳 Límites de créditos para agentes

El "K-12 Workspace Settings Guide" detalla los límites recomendados:

| Función | Estado | Razón |
|---|---|---|
| Agent Mode | OFF | Requiere créditos |
| Codex Cloud | OFF | Requiere créditos |
| Modelos avanzados | OFF | Requiere créditos |

**Configuración recomendada de créditos (todos los workspaces):**
- **Alerta de uso**: 1 crédito/semana
- **Límite estricto (hard cap)**: 2 créditos/semana

> ⚠️ Los límites del workspace **no se heredan automáticamente** por roles personalizados; si usas roles custom, debes aplicar los mismos límites manualmente.

**Estrategia para gestionar créditos:**
1. **Empieza con alertas** (no con límites rígidos) para monitorear patrones de uso.
2. Usa **hard caps** solo en pilotos con presupuesto fijo o grupos específicos.
3. Define quién monitorea el uso, qué umbral dispara una revisión y cómo aprobar excepciones.

---

## 📚 Recursos encontrados en OpenAI Academy

Los recursos más relevantes que puedes visitar directamente:

1. **[Workspace agents](https://academy.openai.com/home/clubs/work-users-ynjqu/resources/workspace-agents)** – Guía completa para construir tu primer agente.
2. **[Feature controls and integrations](https://academy.openai.com/home/clubs/admins-6o6xf/resources/feature-controls-and-integrations-with-your-tools)** – Control de funciones incluyendo agentes.
3. **[Inviting and managing your team](https://academy.openai.com/home/clubs/admins-6o6xf/resources/inviting-and-managing-your-team)** – Roles, permisos y licencias.
4. **[Data governance and compliance](https://academy.openai.com/home/clubs/admins-6o6xf/resources/data-governance-and-compliance)** – Privacidad y retención de datos.
5. **[Set Credit Guardrails Before Your ChatGPT Edu Rollout](https://academy.openai.com/home/clubs/higher-education-05x4z/blogs/set-credit-guardrails-before-your-chatgpt-edu-rollout-2026-05-06)** – Guía para gestionar créditos.
6. **[Curso: Agents and Workflows](https://academy.openai.com/home/courses/agents-and-workflows-bieml)** – Curso completo (~90 min) para nivel intermedio.

---

**Conclusión clave**: Los agentes en ChatGPT **no están disponibles en todos los planes ni para todos los usuarios**. Requieren créditos, el acceso lo controla el administrador del workspace, y se recomienda comenzar con alertas de uso antes de establecer límites estrictos. Para información más detallada sobre límites técnicos de la API, te recomendaría también revisar el **Portal de Confianza de OpenAI** (trust.openai.com).

---

Por la captura, estás dentro del workspace empresarial **RAONA ENGINYERS S.L.**. Eso normalmente corresponde a un entorno **ChatGPT Business / Enterprise**, pero desde la captura no puedo confirmar si eres **Owner, Admin o Member**, ni ver la configuración interna que RAONA tenga activada.

## Respuesta directa

### ¿Cuántos agentes puedes crear?

OpenAI **no publica un número fijo de agentes que pueda crear cada usuario** en Business/Enterprise. El límite real depende de dos cosas:

1. **Que el workspace tenga habilitados los agentes.**
2. **Que tu rol tenga permiso para crear, editar, duplicar o publicar agentes.**

En los controles de administración, los admins pueden activar o desactivar: uso de agentes, construcción de agentes, publicación de agentes y publicación con conexiones propias o compartidas. ([OpenAI Help Center][1])

En tu caso, como ves la opción **“Agentes”** en el menú lateral, probablemente tienes acceso para **ver o usar agentes**. Para saber si puedes **crear**, entra a **Agentes** y revisa si aparece el botón **Crear** o **Browse templates / Crear desde plantilla**. OpenAI indica que los agentes del workspace se crean desde la sección **Agents** del menú lateral. ([OpenAI Help Center][1])

---

## Límites principales que aplican a tu cuenta

### 1. Uso de modelos y mensajes

En ChatGPT Business, OpenAI indica que el plan ofrece mensajes **prácticamente ilimitados** para los modelos base, pero con guardrails contra abuso, automatización indebida, reventa, uso compartido de credenciales o uso para alimentar servicios de terceros. También puede haber restricciones temporales si el sistema detecta uso anómalo. ([OpenAI Help Center][2])

### 2. Funciones incluidas en asiento estándar Business

Un asiento estándar de ChatGPT Business incluye acceso a **ChatGPT, GPTs, Projects, Apps, Company Knowledge, ChatGPT Agent, Deep Research y Codex**, aunque el uso concreto puede depender de la configuración del workspace y de créditos adicionales si la organización usa pricing flexible. ([OpenAI Help Center][3])

### 3. Límites de archivos

Para archivos en ChatGPT:

| Recurso                           |               Límite publicado |
| --------------------------------- | -----------------------------: |
| Archivo individual                |                         512 MB |
| Documentos/texto                  |          2M tokens por archivo |
| CSV o spreadsheets                |                   aprox. 50 MB |
| Imágenes                          |               20 MB por imagen |
| Subidas por usuario               | hasta 80 archivos cada 3 horas |
| Almacenamiento por usuario        |                          25 GB |
| Almacenamiento por organización   |                         100 GB |
| Archivos por proyecto en Business | hasta 40 archivos por proyecto |

Estos límites aplican en chats, proyectos y conocimiento de GPTs, y OpenAI puede reducirlos en horas pico. ([OpenAI Help Center][4])

### 4. Límite de archivos en GPTs personalizados

Si estás hablando de **GPTs personalizados** y no de **Workspace Agents**, OpenAI indica que puedes subir **hasta 10 archivos por GPT** durante la vida de ese GPT. ([OpenAI Help Center][4])

### 5. API no incluida

La suscripción de ChatGPT Business **no incluye uso de API**; API y ChatGPT se facturan por separado. ([OpenAI Help Center][5])

---

## Cómo validarlo en tu cuenta RAONA

En tu interfaz:

1. Entra a **Agentes**.
2. Verifica si aparece **Crear**.
3. Si no aparece, probablemente tienes permiso para usar agentes, pero no para construirlos.
4. Ve a **Configuración del espacio de trabajo**.
5. Revisa si tienes acceso a opciones de administración. Si no, necesitas pedirle a un **Owner/Admin** de RAONA que confirme:

   * si está habilitado **Enable agents**;
   * si está habilitado **Enable agent building**;
   * si puedes publicar al directorio de la organización;
   * si puedes usar conexiones compartidas o propias.

Mi lectura: con esa cuenta deberías poder usar funciones empresariales de ChatGPT, pero el número exacto de agentes que puedes crear no se confirma desde la captura; lo determinan los permisos internos del workspace.

[1]: https://help.openai.com/en/articles/20001143 "ChatGPT Workspace Agents for Enterprise and Business | OpenAI Help Center"
[2]: https://help.openai.com/en/articles/12003714-chatgpt-business-models-limits "ChatGPT Business - Models & Limits | OpenAI Help Center"
[3]: https://help.openai.com/en/articles/8792828-what-is-chatgpt-business "What is ChatGPT Business? | OpenAI Help Center"
[4]: https://help.openai.com/en/articles/8555545-file-uploads-faq "File Uploads FAQ | OpenAI Help Center"
[5]: https://help.openai.com/en/articles/8798594-what-is-a-workspace-how-do-i-access-my-chatgpt-team-workspace "ChatGPT Business: General FAQ | OpenAI Help Center"

---

## Cobros por agentes: ¿qué se sabe hasta ahora?

Sí, **hay señales de que algunas capacidades agentic se pueden cobrar aparte o por créditos**, pero **no significa que todos los agentes se cobren aparte automáticamente**.

## 1. ¿Los agentes los van a cobrar aparte?

Para **ChatGPT Business**, OpenAI dice que el asiento estándar incluye acceso a **ChatGPT, GPTs, Projects, Apps, Company Knowledge, ChatGPT Agent, Deep Research y Codex**. Es decir: el acceso base a agentes está incluido dentro del asiento estándar. ([OpenAI Help Center][1])

Pero OpenAI también aclara que el asiento estándar incluye un acceso base y que se pueden usar **workspace credits / flexible pricing** para uso por encima de los límites incluidos. ([OpenAI Help Center][1])

Entonces, la lectura correcta es:

> **Los agentes están incluidos en el plan, pero ciertos usos avanzados, intensivos o fuera de los límites incluidos pueden consumir créditos o entrar en pricing flexible.**

Esto aplica especialmente a funciones como **Codex**, uso intensivo de modelos, automatizaciones, ejecuciones prolongadas o capacidades de agentes conectadas a herramientas. OpenAI también indica que, si la cuenta está en **flexible pricing**, hay que revisar la rate card vigente para modelos, features y productos. ([OpenAI Help Center][2])

## 2. ¿Se van a desaparecer los GPTs?

No hay una comunicación oficial en las fuentes revisadas que diga que **los GPTs van a desaparecer**.

De hecho, en la documentación actual de ChatGPT Business, OpenAI sigue listando **GPTs** como una función incluida en los asientos estándar, junto con Projects, Apps, Company Knowledge, ChatGPT Agent y Deep Research. ([OpenAI Help Center][1])

Lo que sí parece estar pasando es una **evolución del concepto**:

| Antes                                  | Ahora / tendencia                                                              |
| -------------------------------------- | ------------------------------------------------------------------------------ |
| GPTs personalizados                    | Agentes de workspace                                                           |
| Responden con instrucciones y archivos | Ejecutan workflows repetibles                                                  |
| Más orientados a conversación          | Más orientados a tareas, herramientas, conectores, Slack, API y automatización |
| Uso individual o compartido            | Uso colaborativo y gobernado por la organización                               |

OpenAI describe los **workspace agents** como agentes para tareas y flujos repetibles, que pueden tener modelo, razonamiento, herramientas, apps, archivos, skills, canales, Slack, programación y activación vía API. ([OpenAI Help Center][3])

## 3. Mi conclusión práctica

Para una cuenta como la tuya en **RAONA**:

**No asumiría que los GPTs desaparecen ya.** Más bien, asumiría que OpenAI está moviendo el foco desde “GPTs como asistentes personalizados” hacia **agentes empresariales más gobernados, conectados y automatizables**.

**Tampoco asumiría que todos los agentes serán pagos aparte.** El acceso está incluido en el asiento estándar Business, pero el uso avanzado puede depender de límites, créditos, permisos del workspace y configuración del administrador.

La pregunta clave para RAONA no es solo “¿cuánto cuesta crear agentes?”, sino:

> ¿Qué uso de agentes está incluido en el asiento actual y qué ejecuciones empiezan a consumir créditos adicionales?

[1]: https://help.openai.com/en/articles/8792828-what-is-chatgpt-business "What is ChatGPT Business? | OpenAI Help Center"
[2]: https://help.openai.com/en/articles/12003714-chatgpt-business-models-limits "ChatGPT Business - Models & Limits | OpenAI Help Center"
[3]: https://help.openai.com/en/articles/20001143 "ChatGPT Workspace Agents for Enterprise and Business | OpenAI Help Center"

Para una cuenta **ChatGPT Business estándar** como parece ser la de RAONA, la respuesta práctica es esta:

## Qué está incluido en el asiento actual

El asiento estándar de **ChatGPT Business** incluye acceso a **ChatGPT**, **GPTs**, **Projects**, **Apps**, **Company Knowledge**, **ChatGPT Agent**, **Deep Research** y **Codex**. Es decir, **tener acceso a agentes no necesariamente implica un cobro separado desde el primer uso**. OpenAI lo describe como acceso incluido en el asiento, con “baseline access”, y permite comprar créditos para ampliar el uso por encima de los límites incluidos. ([OpenAI Help Center][1])

Para modelos base, ChatGPT Business ofrece mensajes **virtualmente ilimitados**, sujetos a guardrails de abuso y a límites específicos de modelo. OpenAI distingue entre uso base y capacidades avanzadas. ([OpenAI Help Center][2])

En la práctica, dentro del asiento estándar están incluidos:

| Uso                                                               | Estado                                         |
| ----------------------------------------------------------------- | ---------------------------------------------- |
| Usar ChatGPT con modelos base / Instant                           | Incluido, virtualmente ilimitado               |
| Crear o usar GPTs                                                 | Incluido                                       |
| Usar Projects, archivos, canvas y búsqueda                        | Incluido como función core                     |
| Acceder a Workspace Agents                                        | Incluido como capacidad del asiento            |
| Usar agentes dentro de límites incluidos                          | Incluido hasta el límite asignado              |
| Deep Research, Thinking, Pro, Image Gen, Voice, Codex, Agent mode | Capacidades avanzadas con límites y/o créditos |

## Cuándo empiezan a consumir créditos adicionales

Empiezan a consumir créditos cuando se usan **capacidades avanzadas** por encima del uso incluido, o cuando el workspace tiene una modalidad que depende de créditos. OpenAI menciona explícitamente como funciones avanzadas: **Deep Research, Thinking models, Image Gen, Advanced Voice y Codex**. En Business, cada usuario tiene límites por asiento; si los supera y el workspace compró créditos, sigue usando esas funciones desde el pool compartido. ([OpenAI Help Center][3])

La regla clave es:

> En Business, primero consumes el uso incluido por asiento. Cuando se agota ese límite, si RAONA tiene créditos comprados, las funciones avanzadas continúan usando créditos del workspace. Si no hay créditos, la función se bloquea o muestra una solicitud para pedir créditos al administrador. ([OpenAI Help Center][3])

## Costos/referencias actuales por tipo de ejecución

Según la rate card vigente de OpenAI:

| Función          |       Unidad | Créditos aproximados |
| ---------------- | -----------: | -------------------: |
| GPT-5.5 Instant  |    1 mensaje |      Ilimitado / N/A |
| GPT-5.5 Thinking |    1 mensaje |          10 créditos |
| GPT-5.5 Pro      |    1 mensaje |          50 créditos |
| Agent mode       |    1 mensaje |          30 créditos |
| Deep Research    |      1 tarea |          50 créditos |
| Imagen           | 1 generación |           5 créditos |
| Voz avanzada     |     1 minuto |           5 créditos |

OpenAI aclara que **Instant puede enrutar automáticamente a Thinking** para tareas complejas; cuando eso ocurre, se cobra a la tarifa de Thinking. ([OpenAI Help Center][4])

## Caso específico: Workspace Agents

Aquí hay un matiz importante. OpenAI indica que la tarificación de **Workspace Agents** para Business y Enterprise todavía aparece como indicativa y que se anticipa su entrada en vigor el **6 de julio de 2026**. Cuando aplique, los runs de Workspace Agents no tendrán un costo fijo por ejecución, sino que se calcularán por tokens: entrada, entrada cacheada y salida. ([OpenAI Help Center][4])

Referencia actual indicada por OpenAI:

| Workspace Agent                   |           Crédito estimado |
| --------------------------------- | -------------------------: |
| Run típico end-to-end con GPT-5.5 |            5 a 25 créditos |
| GPT-5.5 input                     |   125 créditos / 1M tokens |
| GPT-5.5 cached input              | 12.50 créditos / 1M tokens |
| GPT-5.5 output                    |   750 créditos / 1M tokens |
| GPT-5.4 input                     | 62.50 créditos / 1M tokens |
| GPT-5.4 cached input              |  6.25 créditos / 1M tokens |
| GPT-5.4 output                    |   375 créditos / 1M tokens |

También dice que los runs de Workspace Agents invocados fuera de ChatGPT, por ejemplo desde **Slack**, seguirán en **free preview hasta junio de 2026**. ([OpenAI Help Center][4])

## Lectura para RAONA

Para tu caso, yo lo resumiría así:

**Incluido en el asiento:** crear/usar agentes, GPTs, Projects, apps y capacidades base, siempre que el workspace lo tenga habilitado y estés dentro de los límites del asiento.

**Consume créditos:** ejecuciones avanzadas como Agent mode, Deep Research, Thinking/Pro, imágenes, voz, Codex y, cuando entre en vigor, runs de Workspace Agents medidos por tokens.

**Depende del admin:** si RAONA compró créditos, si activó flexible pricing, qué límites puso por usuario/grupo y si permite que los usuarios sigan trabajando al agotar el uso incluido.

Para confirmarlo dentro de RAONA, el Owner/Admin debe revisar: **Workspace settings → Billing → Usage / Credits / Spend controls**. Ahí se ve si hay créditos disponibles, alertas, auto-recarga y consumo por usuario o feature. OpenAI indica que los Owners pueden ver balance, descargar reportes de uso y gestionar créditos desde Billing. ([OpenAI Help Center][3])

[1]: https://help.openai.com/en/articles/8792828-what-is-chatgpt-business "What is ChatGPT Business? | OpenAI Help Center"
[2]: https://help.openai.com/en/articles/12003714-chatgpt-business-models-limits "ChatGPT Business - Models & Limits | OpenAI Help Center"
[3]: https://help.openai.com/en/articles/11487671-flexible-pricing-for-the-enterprise-edu-and-business-plans "Flexible pricing for the Enterprise, Edu, and Business plans | OpenAI Help Center"
[4]: https://help.openai.com/en/articles/11481834-chatgpt-rate-card-business-enterpriseedu "ChatGPT Rate Card (Business, Enterprise/Edu) | OpenAI Help Center"

## **Agentes en ChatGPT: plataforma y capacidades**
### Qué habilita los agentes en ChatGPT y en qué planes están disponibles

Para poder utilizar y crear agentes en ChatGPT, es necesario contar con suscripciones de pago específicas que desbloquean las herramientas técnicas de la plataforma. Como hemos visto en nuestra conversación sobre la evolución de estas herramientas, la disponibilidad depende del tipo de agente que desees construir:

**Planes en los que están disponibles:**
*   **ChatGPT Plus:** Este plan (con un costo aproximado de $20 dólares al mes) te permite acceder a las funciones de creación de **Custom GPTs** ("My GPTs") y al modo de agente para uso individual. 
*   **Planes de Negocio / ChatGPT Enterprise:** Para acceder a los verdaderos **Agentes de Espacio de Trabajo (Workspace Agents)**, debes actualizar tu cuenta hacia el entorno o área de negocios (*business area*). En entornos como ChatGPT Enterprise, el acceso a la construcción de agentes, así como a las funciones y conectores de la plataforma, está estrictamente controlado por los **administradores de tu espacio de trabajo (*workspace administrators*)** mediante controles de acceso basados en roles (RBAC).

**Qué capacidades y herramientas habilitan a los agentes:**
La autonomía de los agentes no proviene únicamente del modelo de IA, sino de un conjunto de capacidades técnicas integradas en la plataforma de ChatGPT:

*   **El Constructor de Agentes (*Agent Builder*):** Es la interfaz principal que habilita la creación. En lugar de requerir código, utiliza un chat en lenguaje natural donde tú describes el objetivo y el constructor redacta automáticamente el plan estructurado, configura las herramientas y establece las instrucciones subyacentes.
*   **Conectores de Aplicaciones (*Apps & Connectors*):** Esta es la capacidad que les permite ejecutar tareas en el mundo real. Para que un agente funcione, debes conectarlo a las herramientas de tu ecosistema, como Gmail, Google Drive, Slack, calendarios, CRMs o Zapier. Una característica clave es que puedes establecer estas conexiones como **"propiedad del agente" (*agent owned*)**, lo que funciona como una cuenta de servicio para que el agente trabaje en segundo plano sin depender de la configuración personal de un usuario específico.
*   **Desencadenadores (*Triggers*):** Son el mecanismo que permite a la plataforma ejecutar a los agentes de forma proactiva. Habilitan al agente para iniciar el trabajo a través de una ejecución manual, un horario programado (por ejemplo, "todos los días a las 9 a.m.") o por un evento externo (como recibir un formulario desde Slack).
*   **Habilidades (*Skills*):** La plataforma permite configurar habilidades reutilizables. Esto significa que puedes integrar las definiciones de procesos, la forma de interpretar métricas o las mejores prácticas de tu equipo (como una evaluación de riesgos financieros). Estas habilidades hacen que el flujo de trabajo sea confiable y evitan que el agente tenga que improvisar cómo realizar una tarea cada vez que se ejecuta.