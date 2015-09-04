require 'sinatra'
require './lib/pelea'

configure do
  enable :sessions
end

get '/' do
	pelea = Pelea.new
	session['pelea'] = pelea
	erb :index
end

post '/juego' do	
	pelea = session['pelea']
	#pelea.jugador1 = 
	@player_1_score = pelea.player_1_score
	@player_2_score = pelea.player_2_score
	erb :juego
end


post '/resultado' do
	@nombre_ganador = params['nombre_ganador']
	@rol_ganador = params['rol_ganador']
	erb :resultado
end
