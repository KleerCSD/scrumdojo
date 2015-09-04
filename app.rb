require 'sinatra'

configure do
  enable :sessions
end

get '/' do
	erb :index
end

post '/juego' do
	erb :juego
end


post '/resultado' do
	@nombre_ganador = params['nombre_ganador']
	@rol_ganador = params['rol_ganador']
	erb :resultado
end

get '/juego' do
	erb :juego
end
