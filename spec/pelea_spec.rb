require './lib/pelea'

describe Pelea do

	it "Cuando inicio la pelea el jugador 1 debe tener 100 de vida" do
	#Arrange
	pelea = Pelea.new
	#Act
	#Assert
	pelea.player_1_score.should == 100
	end

	it "Cuando inicio la pelea el jugador 2 debe tener 100 de vida" do
	#Arrange
	pelea = Pelea.new
	#Act
	#Assert
	pelea.player_2_score.should == 100
	end

	it "Cuando el jugador 1 lanza punete diminuye en 15 la vida del jugador 2" do
	#Arrange
	pelea = Pelea.new
	#Act
	#Assert
	pelea.player_2_score.should == 100
	end

end 
