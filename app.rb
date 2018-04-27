require 'sinatra'
require './lib/Tablero'


get '/' do
    @@juego = Tablero.new
    @dado = "Lanzar dado para iniciar"
    @posicionActual = 1
    @posicionNueva = "Estas en la casilla 1"
    @AccionPosicion = ""  
    erb:tablero
end
  

get '/Lanzar' do
    
    @dado = @@juego.lanzarDado
    @posicionActual = ( params['posicionActual'].to_i  + @dado.to_i)
    @posicionNueva = "vas a: " + @posicionActual.to_s
    @mensajePosicion = ""
	
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
		@mensajePosicion = "Encontraste escalera"+ " +" + accionPosicion.to_s
	else
    		@mensajePosicion = "Encontraste culebra cascabel"+ " -" + accionPosicion.to_s
        end
	@posicionActual += accionPosicion
    erb:tablero
end
