require 'sinatra'
require './lib/Tablero'


get '/' do
    @dado = "Lanzar dado para iniciar"
    @posicionActual = 1
    @posicionNueva = "ningun lado"
    erb:tablero
end
  

get '/Lanzar' do
    juego = Tablero.new
    @dado = juego.lanzarDado
    @posicionActual = ( params['posicionActual'].to_i  + @dado.to_i)
    @posicionNueva = "vas a:" + @posicionActual.to_s
    erb:tablero
end
