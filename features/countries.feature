# language: es

Característica: Countries

Escenario: Muestra como pregunta una capital
  Dado que voy a la portada
  Entonces veo "buenos aires"

Escenario: Contesta la primera pregunta y le muestra la segunda
  Dado que voy a la portada
  Cuando respondo la Pregunta 1
  Entonces veo "Pregunta #2"

Escenario: Valida que el en step 1 muestra Lima
  Dado que voy a la portada en Pregunta 2
  Entonces veo "lima"

Escenario: Contesta todas las preguntas correctamente y muestra resultado 5
  Dado que voy a la portada
  Cuando respondo Pregunta con "Argentina"
  Y respondo Pregunta con "Peru"
  Y respondo Pregunta con "Uruguay"
  Y respondo Pregunta con "Chile"
  Y respondo Pregunta con "Brasil"
  Entonces veo "Resultado: 5"

Escenario: Contesta todas las preguntas incorrectamente y muestra resultado 0
  Dado que voy a la portada
  Cuando respondo Pregunta con "rgentina"
  Y respondo Pregunta con "Peru."
  Y respondo Pregunta con " "
  Y respondo Pregunta con "$"
  Y respondo Pregunta con "Argentina"
  Entonces veo "Resultado: 0"

Escenario: Contesta todas las preguntas incorrectamente y muestra resultado 3
  Dado que voy a la portada
  Cuando respondo Pregunta con "rgentina"
  Y respondo Pregunta con "Peru"
  Y respondo Pregunta con "Chile"
  Y respondo Pregunta con "Chile"
  Y respondo Pregunta con "Brasil"
  Entonces veo "Resultado: 3"
