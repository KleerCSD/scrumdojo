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

	def punete player
		if player == 1
			@player_2_score = @player_2_score - 15
			if @player_2_score <= 0
               @player_2_score = 0
            end
		else
			@player_1_score = @player_1_score - 15
			if @player_1_score <= 0
               @player_1_score = 0
            end
		end 
	end

	def patada player
		if player == 1
			@player_2_score = @player_2_score - 17
			if @player_2_score <= 0
               @player_2_score = 0
            end
		else
			@player_1_score = @player_1_score - 17
			if @player_1_score <= 0
               @player_1_score = 0
            end
		end 
	end

end
