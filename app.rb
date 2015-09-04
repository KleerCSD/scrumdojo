require 'sinatra'

configure do
  enable :sessions
end

get '/' do
	"Hola mundo"
end

get '/juego' do
	erb :juego
end
