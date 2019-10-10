require './lib/juego.rb'

describe "Countries" do

 it "Cantidad de preguntas" do
	juego = Juego.new
	expect( juego.paises.length  ).to eq juego.capitales.length
 end

	it "Primera pregunta" do
	juego = Juego.new
	expect( juego.partidaActual  ).to eq 0
 end

 it "Siguiente pregunta" do
	juego = Juego.new
	juego.siguientePartida
	expect( juego.partidaActual  ).to eq 1
 end

 it "Mostrar resultados" do
	juego = Juego.new
	juego.paises.length.times { juego.siguientePartida }
	juego.estado.should eq("finalizo")
 end

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

  it "Reiniciar estado" do
	juego = Juego.new
	2.times { juego.siguientePartida }
	juego.reiniciar
	juego.estado.should eq("jugando")
 end

  it "Reiniciar partida actual" do
	juego = Juego.new
	2.times { juego.siguientePartida }
	juego.reiniciar
	expect( juego.partidaActual  ).to eq 0
 end
end


