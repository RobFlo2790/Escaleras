require 'sinatra'
require './lib/Tablero'


get '/' do
    @dado = "Lanzar dado para iniciar"
    @posicionActual = 1
    erb:tablero
end
  

get '/Lanzar' do
    juego = Tablero.new
    @dado = juego.lanzarDado
    erb:tablero
end
