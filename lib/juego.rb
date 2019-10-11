class Juego
	def initialize
		@paises = ["Argentina", "peru", "chile", "uruguay", "brasil", "noruega", "nigeria", "grecia", "bulgaria", "islandia", "irlanda", "portugal", "jamaica", "polonia", "alemania","italia","nicaragua","togo"].map(&:downcase)
		@capitales = ["ARGE0001.GIF", "PERU0001.GIF", "CHIL0001.GIF", "URGY0001.GIF", "BRAZ0001.GIF", "NORW0001.GIF", "NGRA0001.GIF", "GREC0001.GIF", "BULG0001.GIF", "ICEL0001.GIF", "IREL0001.GIF","PORT0001.GIF","JAMA0001.GIF","POLA0001.GIF", "GERM0001.GIF", "ITAL0001.GIF", "NICA0001.GIF", "TOGO0001.GIF"]
		@capitales_otras = @capitales.shuffle
    @resultado = 0
    @preguntadas = []
    @test_mode = false
    @test_step = 0
    @level = 5
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
    index = @capitales.index(capital)
    @preguntadas.push(capital)
    if !index.nil? && @paises[index].downcase == pais.downcase
      @resultado += 1
    end
  end

  def test_mode val
    @test_mode = val
  end

  def reset
    @resultado = 0
    if @test_mode
      @test_step = 0
      @capitales_otras = @capitales.clone
    else 
      @capitales_otras = @capitales.shuffle
    end
  end

  def puntos
    return @resultado
  end

 def test_step
    return @test_step
  end

  def get_capital
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

  def level
	  return @level
  end

def resultado_final
	return (@resultado *100) / @level
end

	
end
