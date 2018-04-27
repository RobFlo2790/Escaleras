class Tablero 

	def initialize
		@@tablero = Array.new 16
		@@jugadores = Array.new 2,0	
		@proximoDado = 0		
	end

	def obtenerTablero
		return @@tablero	
	end	

	def forzarDado valor
		@proximoDado = valor
	end

	def lanzarDado valor=0
		if valor == 0 
			if @proximoDado == 0
				return Random.rand 1..6
			else
				return @proximoDado
			end
		else
			return valor
		end
	end
	
	def obtenerPosicionJugadores
		return @@jugadores
	end 
	
	def moverJugador jugador,resultado
		@@jugadores[jugador] += resultado
	end
end 
