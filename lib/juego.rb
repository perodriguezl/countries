class Juego
	def initialize
		@paises = ["Argentina", "peru", "uruguay", "chile", "brasil"].map(&:downcase)
		@capitales = ["Buenos Aires", "Lima", "montevideo", "santiago", "brasilia"].map(&:downcase)
		@capitales_otras = ["Buenos Aires", "Lima", "montevideo", "santiago", "brasilia"].map(&:downcase).shuffle
    @resultado = 0
    @preguntadas = []
    @test_mode = false
    @test_step = 0
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

  def test_mode val
    @test_mode = val
  end

  def reset
    if @test_mode
      @test_step = 0
      @resultado = 0
      @capitales_otras = ["Buenos Aires", "Lima", "montevideo", "santiago", "brasilia"].map(&:downcase)
    end
  end

  def puntos
    return @resultado
  end

 def test_step
    return @test_step
  end

  def get_capital
    puts @capitales_otras
    if @test_mode == true
      capital = @capitales[@test_step]
      @test_step += 1
      return capital
    else
      capital = @capitales_otras[0]
      @capitales_otras.delete(capital)
      return capital
    end
  end

  def capitales_otras
	return @capitales_otras
  end
	
end
