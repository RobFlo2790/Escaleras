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

end
