class Juego
	def initialize
		@paises = ["Argentina", "peru", "uruguay", "chile", "brasil"].map(&:downcase)
		@capitales = ["Buenos Aires", "Lima", "montevideo", "santiago", "brasilia"].map(&:downcase)
		@capitales_otras = ["Buenos Aires", "Lima", "montevideo", "santiago", "brasilia"].map(&:downcase)
    @resultado = 0
    @preguntadas = []
	end

	def capital indice
		return @capitales[indice]
	end

	def preguntadas
		return @preguntadas
	end

	def compararPartida indice, palabra
		return @paises[indice] == palabra
	end

  def puntuar capital, pais
    index = @capitales.index(capital.downcase)
    @preguntadas.push(capital.downcase)
    if !index.nil? && @paises[index].downcase == pais.downcase
      @resultado += 1
    end
  end

  def puntos
    return @resultado
  end

  def get_capital
    capital = @capitales_otras[0]
    @capitales_otras.delete(capital)
    return capital
  end
	
end
