# Cómo entrenar a un asistente de IA con documentos PDF u otros archivos

Para "entrenar" a un asistente de IA usando documentos PDF u otros archivos, el proceso varía dependiendo de si estás creando un **GPT Personalizado (Custom GPT)** o utilizando un **Agente de Espacio de Trabajo (Workspace Agent)**, como discutimos en nuestra conversación anterior.

**1. Entrenar a un GPT Personalizado (Custom GPT) con PDFs:**
Si buscas que la IA actúe como una experta en un tema específico basándose en literatura autorizada (por ejemplo, manuales, normativas o reportes), lo ideal es cargar estos archivos en su base de conocimiento.
*   Al crear o editar tu GPT en la sección "My GPTs", encontrarás un apartado específico llamado **"Conocimiento" (Knowledge)**.
*   En esta sección puedes **subir tus documentos PDF u otros archivos**. Por ejemplo, si estás construyendo un asistente ejecutivo, puedes subir un manual en PDF sobre "cómo ser un gran asistente ejecutivo". De manera similar, podrías subir normativas o guías de Ernst & Young en PDF para crear un experto auditor contable.
*   Al hacer esto, le **proporcionas el contexto, el tono y la información técnica** exacta que el GPT necesita dominar, convirtiéndolo en un especialista de consulta en esa materia.

**2. Procesamiento de archivos con Agentes de Espacio de Trabajo:**
Por otro lado, los Agentes no se "entrenan" estáticamente con un PDF para memorizarlo, sino que se les da acceso a los archivos para que **ejecuten tareas sobre ellos**.
*   **Carga manual:** Puedes subir un archivo directamente en el chat del agente haciendo clic en el icono de "más" (+). Por ejemplo, puedes subir una hoja de cálculo con tus gastos mensuales o el estado de pérdidas y ganancias (P&L) de tu negocio, e indicarle al agente que actúe como analista financiero para leer, analizar y generar un reporte sobre esos datos.
*   **Conexión a la nube:** Puedes **conectar el agente a tu Google Drive**. Esto le permite al agente acceder dinámicamente a los archivos donde viven los datos de tu equipo, pudiendo buscar, leer y extraer información en segundo plano o de forma programada, sin que tengas que subir los documentos manualmente cada vez.

En resumen, utilizas la sección de **Conocimiento en los Custom GPTs** para dotarlos de experiencia teórica mediante documentos, y empleas la **carga directa o la integración con Google Drive en los Agentes** para que procesen y analicen archivos vivos dentro de un flujo de trabajo.