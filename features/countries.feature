# language: es

Característica: Countries

Escenario: Muestra como pregunta una capital
  Dado que voy a la portada
  Entonces veo "Buenos Aires"

Escenario: Valida que el usuario introduce Argentina correctamente
  Dado que voy a la portada
  Cuando introduce "Argentina"
  Entonces veo "Resultado: OK"

Escenario: Valida que el usuario introduce noArgentina
  Dado que voy a la portada
  Cuando introduce "NoArgentina"
  Entonces veo "Resultado: FAIL"
