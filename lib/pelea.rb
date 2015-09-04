require './lib/jugador'
class Pelea

	attr_accessor :player_1_score
	attr_accessor :player_2_score

	attr_accessor :nombre_jugador1
	attr_accessor :nombre_jugador2

	attr_accessor :rol_jugador1
	attr_accessor :rol_jugador2

	def initialize
		@player_1_score = 100
		@player_2_score = 100
	end

	def punete
		@player_1_score = 100
		@player_2_score = 100
	end

end
