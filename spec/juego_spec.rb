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

end


