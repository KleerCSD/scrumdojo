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

	pelea.nombre_jugador1 =  params['nombre_jugador1']
	pelea.nombre_jugador2 =  params['nombre_jugador2']
	@nombre_jugador1 = 	pelea.nombre_jugador1
	@nombre_jugador2 = 	pelea.nombre_jugador2
	pelea.rol_jugador1 =  params['rol_jugador1']
	pelea.rol_jugador2 =  params['rol_jugador2']
	@rol_jugador1 = 	pelea.rol_jugador1
	@rol_jugador2 = 	pelea.rol_jugador2
	
	@player_1_score = pelea.player_1_score
	@player_2_score = pelea.player_2_score
	erb :juego
end


post '/resultado' do
	@nombre_ganador = params['nombre_ganador']
	@rol_ganador = params['rol_ganador']
	erb :resultado
end
