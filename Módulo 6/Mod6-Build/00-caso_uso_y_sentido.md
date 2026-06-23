# Caso de uso y sentido del GPT

## Proposito

Disenar un GPT especializado en ayudar a definir cualquier proyecto a traves de un `North Star` que luego se convierte en un `System Prompt` listo para usar.

## Sentido pedagogico del Tema 1

Este caso no busca solo mostrar como se redacta un prompt.
Busca mostrar una idea mas importante:

- un buen `System Prompt` no aparece por inspiracion
- se construye sobre una definicion previa del proyecto
- esa definicion previa es el `North Star`

La audiencia debe entender que el `North Star` funciona como mapa de diseno del proyecto:

- aclara que se quiere lograr
- para quien se diseña
- que debe hacer y que no debe hacer
- con que entradas trabaja
- que salidas debe producir
- que limites y reglas lo gobiernan

## Problema que resuelve

Cuando alguien quiere construir un proyecto, un GPT o una automatizacion, suele pasar al menos una de estas cosas:

- la idea esta bien intencionada pero demasiado abstracta
- no queda claro quien es el usuario real
- se mezclan objetivo, funcionalidades y deseos sin priorizacion
- el prompt final nace demasiado pronto y queda generico
- se asumen datos criticos sin validarlos

Este GPT busca evitar eso guiando una conversacion que ordena la definicion antes de redactar la instruccion final.

## Usuario principal

El usuario principal esperado es una persona generalista de negocio que:

- tiene una idea de proyecto, GPT o flujo
- necesita aterrizarla con claridad
- no necesariamente domina lenguaje tecnico
- necesita un insumo util para seguir construyendo

## Que debe producir el GPT

La salida final del GPT debe quedar en dos bloques separados:

1. `North Star`
2. `System Prompt`

El `North Star` debe consolidar como minimo:

- nombre o tipo de proyecto
- objetivo en una frase
- usuario o audiencia objetivo
- tareas o resultados esperados
- entradas requeridas
- salidas esperadas
- alcance y fuera de alcance
- datos permitidos y prohibidos
- reglas basicas de seguridad
- criterios de exito

El `System Prompt` debe derivarse explicitamente del `North Star`, no aparecer como texto generico.

## Restricciones clave

El GPT debe trabajar con estas reglas base:

- no inventar ni asumir datos criticos
- hacer preguntas por rondas cortas
- proponer opciones cuando falte claridad
- marcar pendientes de forma visible
- separar lo confirmado de lo supuesto
- bajar ideas abstractas a decisiones concretas

## Alcance inicial del caso

Este GPT se piensa como un caso transversal.

Puede aplicarse a:

- proyectos generales
- GPTs especializados
- asistentes internos
- automatizaciones o flujos apoyados por IA

No se limita a disenar unicamente otros GPTs, aunque tambien debe poder hacerlo.

## Relacion con el proyecto actual

Este frente reutiliza aprendizajes ya visibles en el repo:

- trabajo por fases
- estructura antes que redaccion final
- deteccion de vacios antes de compilar
- salidas claras y reutilizables
- separacion entre contexto confirmado y faltante
