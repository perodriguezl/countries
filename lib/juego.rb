class Juego
	def initialize
		@paises = ["Argentina", "peru", "uruguay", "chile", "brasil"].map(&:downcase)
		@capitales = ["Buenos Aires", "Lima", "montevideo", "santiago", "brasilia"].map(&:downcase)
    @resultado = 0
	end

	def capital indice
		return @capitales[indice]
	end

	def compararPartida indice, palabra
		return @paises[indice] == palabra
	end

  def puntuar capital, pais
    index = @capitales.index(capital.downcase)
    if !index.nil? && @paises[index] == pais.downcase
      @resultado += 1
    end
  end

  def puntos
    return @resultado
  end
	
end
