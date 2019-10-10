class Juego
	def initialize
		@partidaActual = 0
		@paises = ["argentina", "peru", "uruguay", "chile", "brasil"]
		@capitales = ["Buenos Aires", "Lima", "montevideo", "santiago", "brasilia"]
		@estado = "jugando"
	end

	def paises
		return @paises
	end

	def partidaActual
		return @partidaActual
	end

	def capitales
		return @capitales
	end

	def capital indice
		return @capitales[indice]
	end

	def estado
		return @estado
	end

	def siguientePartida
		@partidaActual += 1
		if (@partidaActual == @paises.length)
			@estado = "finalizo"
		end
	end

	def compararPartida indice, palabra
			return paises[indice] == palabra
	end

	def reiniciar
		@partidaActual = 0
		@estado = "jugando"
	end
	

end
