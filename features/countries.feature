# language: es

Característica: Countries

Escenario: Muestra como pregunta una capital
  Dado que voy a la portada
  Entonces veo la imagen "ARGE0001.GIF"

Escenario: Contesta la primera pregunta y le muestra la segunda
  Dado que voy a la portada
  Cuando respondo la Pregunta 1
  Entonces veo "Pregunta #2"

Escenario: Contesta la primera, segunda, tercera, cuarta y quinta pregunta, pasa a resultado
  Dado que voy a la portada
  Cuando respondo la Pregunta 1
  Y respondo la Pregunta 2
  Y respondo la Pregunta 3
  Y respondo la Pregunta 4
  Y respondo la Pregunta 5
  Entonces veo "Resultado"

Escenario: Contesta todas las preguntas correctamente y muestra resultado 5
  Dado que voy a la portada
  Cuando respondo Pregunta con "Argentina"
  Y respondo Pregunta con "Peru"
  Y respondo Pregunta con "Chile"
  Y respondo Pregunta con "Uruguay"
  Y respondo Pregunta con "Brasil"
  Entonces veo "Resultado: 100"

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
  Entonces veo "Resultado: 60"

Escenario: Contesta la primera, segunda, tercera, cuarta y quinta pregunta, pasa a resultado
  Dado que voy a la portada
  Cuando respondo la Pregunta 1
  Y respondo la Pregunta 2
  Y respondo la Pregunta 3
  Y respondo la Pregunta 4
  Y respondo la Pregunta 5
  Y hago reinicio
  Entonces veo "Pregunta #1"

