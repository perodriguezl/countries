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

end


