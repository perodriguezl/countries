# language: es

Característica: Countries

Escenario: Muestra como pregunta una capital
  Dado que voy a la portada
  Entonces veo "Buenos Aires"

Escenario: Contesta la primera pregunta y le muestra la segunda
  Dado que voy a la portada
  Cuando respondo la Pregunta 1
  Entonces veo "Pregunta #2"

Escenario: Valida que el en step 1 muestra Lima
  Dado que voy a la portada en Pregunta 2
  Entonces veo "Lima"

