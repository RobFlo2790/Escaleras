require "./lib/Tablero.rb"

describe "Juego escaleras" do 

	it "cuando empieza el juego tenemos tablero" do	
	 	juegoEscaleras =  Tablero.new	
	  	juegoEscaleras.obtenerTablero.class.should == Array
	end

	it "cuando lanzo el dado del juego obtengo un numero" do	
	 	juegoEscaleras =  Tablero.new	
	  	juegoEscaleras.lanzarDado.should.class == Fixnum
	end
	
	it "Cuando empiezo el juego obtengo tablero de 16 posiciones" do
		juegoEscaleras =  Tablero.new	
	  	juegoEscaleras.lanzarDado.size == 16
	end
	
	it "Cuando empiezo el juego tengo 2 jugadores" do
		juegoEscaleras =  Tablero.new	
	  	juegoEscaleras.obtenerPosicionJugadores.size == 2
	end
	
	it "Cuando lanzo dado muevo jugador uno" do
		juegoEscaleras = Tablero.new
		jugador1 = 0
		resultado = juegoEscaleras.lanzarDado
		juegoEscaleras.moverJugador jugador1,resultado
		juegoEscaleras.obtenerPosicionJugadores[0].should_not == 0	
	end

end
