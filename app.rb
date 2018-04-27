require 'sinatra'
require './lib/Tablero'


get '/' do
    @@juego = Tablero.new
    @dado = "Lanzar dado para iniciar"
    @posicionActual = 1
    @posicionNueva = "Estas en la casilla 1"
    @AccionPosicion = ""  
	 @mensajePosicion = "Zona segura de inicio de tu aventura"
    erb:tablero
end
  

get '/Lanzar' do
    mock = params['DadoEsperado'].to_i
    @dado = @@juego.lanzarDado mock
    @posicionActual = ( params['posicionActual'].to_i  + @dado.to_i)
    @posicionNueva = "vas a: " + @posicionActual.to_s
   
	
	accionPosicion = 0
	if @posicionActual    == 1	
			accionPosicion = 1
	elsif @posicionActual == 7
			accionPosicion = 1
	
	elsif @posicionActual == 3
			accionPosicion = 1

	elsif @posicionActual == 9
			accionPosicion = 1

	elsif @posicionActual == 18
			accionPosicion = -1

	elsif @posicionActual == 25
	    		accionPosicion = -1
	else 
	        accionPosicion = 0
	end
	
	if (accionPosicion.to_i > 0)
		@mensajePosicion = "Caiste en un lugar desconocido pero ves una escalera y la subes "+ " +" + accionPosicion.to_s
	elsif (accionPosicion.to_i <0)
    		@mensajePosicion = "Caiste en un lugar desconocido lleno de culebras cascabel"+ " -" + accionPosicion.to_s
	else 
	   @mensajePosicion = "Zona segura"
        end
	@posicionActual += accionPosicion
    erb:tablero
end
