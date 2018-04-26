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

end
