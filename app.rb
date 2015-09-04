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
	@player_1_energy = pelea.player_1_energy
	@player_2_energy = pelea.player_2_energy
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
	session['pelea'] = pelea
	erb :juego
end


post '/resultado' do
	@nombre_ganador = params['nombre_ganador']
	@rol_ganador = params['rol_ganador']
	erb :resultado
end

post '/j1' do
	accion = params['accion']
	pelea = session['pelea']
	if accion == "patada"
		pelea.patada (1)	
	elsif accion == "punete"
		pelea.punete (1)
	elsif accion == "energia"
		pelea.energia (1)
	elsif accion == "recargar"
		pelea.recargar (1)
	end
		@player_1_score = pelea.player_1_score
		@player_2_score = pelea.player_2_score
		@player_1_energy = pelea.player_1_energy
		@player_2_energy = pelea.player_2_energy

			

		@nombre_jugador1 = 	pelea.nombre_jugador1
		@nombre_jugador2 = 	pelea.nombre_jugador2
		@rol_jugador1 = 	pelea.rol_jugador1
		@rol_jugador2 = 	pelea.rol_jugador2

		if @player_2_score == 0 
			if @player_1_score == 100
				@fatality = "FATALITY!!!!!!!!"
			end
		@nombre_ganador = @nombre_jugador1
		@rol_ganador = @rol_jugador1
		erb :resultado
		else
		erb :juego
		end
end

post '/j2' do
	accion = params['accion']
	pelea = session['pelea']
	if accion == "patada"
		pelea.patada (2)	
	elsif accion == "punete"
		pelea.punete (2)
	elsif accion == "energia"
		pelea.energia (2)
	elsif accion == "recargar"
		pelea.recargar (2)
	end
	@player_1_score = pelea.player_1_score
	@player_2_score = pelea.player_2_score
		@player_1_energy = pelea.player_1_energy
		@player_2_energy = pelea.player_2_energy
	@nombre_jugador1 = 	pelea.nombre_jugador1
		@nombre_jugador2 = 	pelea.nombre_jugador2
		@rol_jugador1 = 	pelea.rol_jugador1
		@rol_jugador2 = 	pelea.rol_jugador2
	if @player_1_score == 0 
			if @player_2_score == 100
				@fatality = "FATALITY!!!!!!!!"
			end
			@nombre_ganador = @nombre_jugador2
			@rol_ganador = @rol_jugador2

	erb :resultado
	else
	erb :juego
	end
end


