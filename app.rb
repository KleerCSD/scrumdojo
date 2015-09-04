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
	@player_1_score = pelea.player_1_score
	@player_2_score = pelea.player_2_score
	erb :juego
end


post '/resultado' do
	erb :resultado
end

post '/j1' do
	pelea = session['pelea']
	pelea.punete (1)
	@player_1_score = pelea.player_1_score
	@player_2_score = pelea.player_2_score
	erb :juego
end

post '/j2' do
	pelea = session['pelea']
	pelea.punete (2)
	@player_1_score = pelea.player_1_score
	@player_2_score = pelea.player_2_score
	erb :juego
end


