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
	
	it "Me aseguro de poder predecir cuanto da el dado para las pruebas" do
		juegoEscaleras =  Tablero.new
		juegoEscaleras.forzarDado 5
	  	juegoEscaleras.lanzarDado.should == 5
	end
	
	it "Cuando empiezo el juego tengo 2 jugadores" do
		juegoEscaleras =  Tablero.new	
	  	juegoEscaleras.obtenerPosicionJugadores.size == 2
	end
	
	it "Cuando lanzo dado muevo jugador uno" do
		juegoEscaleras = Tablero.new
		jugador = 0
		resultado = juegoEscaleras.lanzarDado
		juegoEscaleras.moverJugador jugador,resultado
		juegoEscaleras.obtenerPosicionJugadores[0].should_not == 0	
	end

	it "Cuando lanzo dado muevo jugador dos, mientras el uno esta en posicion 0" do
		juegoEscaleras = Tablero.new
		jugador1 = 0
		jugador2 = 1
		resultado = juegoEscaleras.lanzarDado
		juegoEscaleras.moverJugador jugador2,resultado
		juegoEscaleras.obtenerPosicionJugadores[jugador1].should == 0	
		juegoEscaleras.obtenerPosicionJugadores[jugador2].should_not == 0
	end

	it "Cuando el jugador uno esta en la posicion 6, el dos en la 3 y el jugador uno lanza el dado y recibe 3,el jugador uno cae en 	posicion 10" do
		juegoEscaleras = Tablero.new
		jugador1 = 0
		jugador2 = 1
		juegoEscaleras.moverJugador jugador1,6
		juegoEscaleras.moverJugador jugador2,3
		resultado = juegoEscaleras.lanzarDado 4
		juegoEscaleras.moverJugador jugador1,resultado
		juegoEscaleras.obtenerPosicionJugadores[jugador1].should == 10	
	end
   it "Cuando el jugador esta en posicion 32" do
      juegoEscaleras = Tablero.new
      jugador1 = 0
      juegoEscaleras.forzarDado 6
juegoEscaleras.moverJugador jugador1,6
      juegoEscaleras.forzarDado 6
juegoEscaleras.moverJugador jugador1,6
      juegoEscaleras.forzarDado 6
juegoEscaleras.moverJugador jugador1,6
      juegoEscaleras.forzarDado 6
juegoEscaleras.moverJugador jugador1,6
      juegoEscaleras.forzarDado 6
juegoEscaleras.moverJugador jugador1,6      
      juegoEscaleras.forzarDado 2
juegoEscaleras.moverJugador jugador1,2
      juegoEscaleras.obtenerPosicionJugadores[jugador1].should == 32
   end

end
