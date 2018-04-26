class Tablero 

	def initialize
		@@tablero = Array.new 16
		@@jugadores = Array.new 2			
	end

	def obtenerTablero
		return @@tablero	
	end	

	def lanzarDado
		return 3
	end
	
	def obtenerPosicionJugadores
		return @@jugadores
	end 
end 
