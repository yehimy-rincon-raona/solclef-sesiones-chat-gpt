# Preparacion

## Objetivo del paso

Preparar el contexto minimo antes de empezar a construir el GPT.

## Lo que debes hacer

1. Abre ChatGPT.
2. Crea un espacio de trabajo limpio para la practica.
3. Ten a la mano estos documentos:
   - `00-caso_uso_y_sentido.md`
   - `01-ruta_metodo_gpts.md`
   - `02-borrador_configuracion_gpt.md`
4. Recuerda la idea central:
   - `North Star -> System Prompt`

## Que debes decir como maestra

Antes de pedirle a ChatGPT que redacte algo, vamos a darle contexto y vamos a trabajar por fases.

## Prompt de arranque

Pega este prompt en ChatGPT:

```text
Quiero que trabajemos por fases para disenar un GPT.
En esta practica no quiero que uses skills, herramientas ni configuraciones externas.
Quiero trabajar solo contigo en un chat normal.

El caso de uso es este:
Necesito un GPT que ayude a convertir la idea de cualquier proyecto en dos entregables conectados:
1. un North Star
2. un System Prompt derivado de ese North Star

Quiero que trabajemos con lenguaje claro, orientado a negocio, sin tecnicismos innecesarios.
No quiero que inventes informacion critica.
Si falta contexto, pregunta antes de compilar.

Por ahora quiero trabajar solo la fase de descubrimiento.
```

## Que deberias observar en la respuesta

La respuesta correcta de ChatGPT deberia:

- entrar en modo de descubrimiento
- no intentar escribir todavia el prompt final
- hacer preguntas para entender el caso
- ayudar a aterrizar el objetivo

## Si ChatGPT se adelanta demasiado

Reconducelo con este mensaje:

```text
Todavia no quiero el System Prompt final.
Primero ayudame a entender y definir el caso.
Trabaja solo en descubrimiento y sin usar ningun skill.
```
