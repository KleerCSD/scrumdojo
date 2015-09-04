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
	erb :resultado
end

get '/juego' do
	erb :juego
end
