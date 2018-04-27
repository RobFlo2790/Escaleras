class Tablero 

	def initialize
		@@tablero = Array.new 16
		@@jugadores = Array.new 2,0			
	end

	def obtenerTablero
		return @@tablero	
	end	

	def lanzarDado valor=0
		if valor == 0
			return Random.rand 1..6
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
