require 'sinatra'
 

get '/' do
    @dado = "Lanzar dado para iniciar"
    erb:tablero
end

get '/lanzar' do
    @dado = '3'
    erb:tablero
end
