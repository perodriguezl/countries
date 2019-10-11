require './lib/juego.rb'

describe "Countries" do

 it "Comparar partida exitosa" do
	juego = Juego.new
	@comparacion = juego.compararPartida 0, "argentina"
	expect( @comparacion  ).to eq true
 end

 it "Comparar partida no exitosa" do
	juego = Juego.new
	@comparacion = juego.compararPartida 0, "fruta"
	expect( @comparacion  ).to eq false
 end

 it "Obtener Pais de Capital" do
	juego = Juego.new
	pais = juego.capital 0
	expect( pais  ).to eq "buenos aires"
 end

 it "Verificar capital y resultado" do
	juego = Juego.new
	juego.puntuar "buenos aires", "argentina"
	expect( juego.puntos  ).to eq 1
 end

 it "Verificar que se guardan las preguntas realizadas" do
	juego = Juego.new
	juego.puntuar "buenos aires", "argentina"
	expect( juego.preguntadas  ).to eq ["buenos aires"]
 end

 it "Pido a juego una capital, debería venir un valor distinto a nil" do
	juego = Juego.new
	pregunta = juego.get_capital
	expect( pregunta  ).not_to be_nil
 end

 it "Pido a juego dos capitales, deberían ser distintas" do
	juego = Juego.new
	pregunta1 = juego.get_capital
	pregunta2 = juego.get_capital
	expect( pregunta1  ).not_to eq pregunta2
 end

 it "Resetear Juego en modo Test para resultado igual a 0" do
	juego = Juego.new
	juego.test_mode true
	juego.puntuar "buenos aires", "argentina"
	juego.reset
	expect( juego.puntos  ).to eq 0 
 end

  it "Resetear Juego en modo Test para test_step igual a 0" do
	juego = Juego.new
	juego.test_mode true
	juego.puntuar "buenos aires", "argentina"
	juego.reset
	expect( juego.test_step  ).to eq 0 
 end

   it "Resetear Juego en modo Test para capitales_otras" do
	juego = Juego.new
	juego.test_mode true
	@capitales_otras_test = ["Buenos Aires", "Lima", "montevideo", "santiago", "brasilia"].map(&:downcase)
	juego.puntuar "buenos aires", "argentina"
	juego.reset
	expect( @capitales_otras_test  - juego.capitales_otras).to eq [] 
  end

 it "Resetear Juego para mantener resultado igual para obtener un resultado" do
	juego = Juego.new
	juego.test_mode false
	juego.puntuar "buenos aires", "argentina"
	juego.reset
	expect( juego.puntos  ).to eq 1
 end

   it "Resetear Juego para mantener resultado igual para obtener un resultado" do
	juego = Juego.new
	juego.test_mode false
	@capitales_otras_test = ["Buenos Aires", "Lima", "montevideo", "santiago", "brasilia"].map(&:downcase)
	juego.get_capital
	juego.reset
	expect( @capitales_otras_test - juego.capitales_otras ).not_to eq [] 
  end

end


