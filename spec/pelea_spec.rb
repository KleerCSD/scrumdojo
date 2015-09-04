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
	pelea.punete (1)
	#Assert
	pelea.player_2_score.should == 85
	end

	it "Cuando el jugador 2 lanza punete diminuye en 15 la vida del jugador 1" do
	#Arrange
	pelea = Pelea.new
	#Act
	pelea.punete (2)
	#Assert
	pelea.player_1_score.should == 85
	end

	it "Cuando el jugador 2 lanza 7 punetes, esta gana" do
	#Arrange
	pelea = Pelea.new
	#Act
	pelea.punete (2)
    pelea.punete (2)
	pelea.punete (2)
	pelea.punete (2)
	pelea.punete (2)
	pelea.punete (2)
	pelea.punete (2)
	#Assert
	pelea.player_1_score.should == 0
	end

	it "Cuando el jugador 1 lanza patada diminuye en 17 la vida del jugador 2" do
	#Arrange
	pelea = Pelea.new
	#Act
	pelea.patada (1)
	#Assert
	pelea.player_2_score.should == 83
	end


	it "Cuando el jugador 2 lanza patada diminuye en 17 la vida del jugador 1" do
	#Arrange
	pelea = Pelea.new
	#Act
	pelea.patada (2)
	#Assert
	pelea.player_1_score.should == 83
	end

	it "Cuando el jugador 1 selecciona energia aumenta en 10" do
	#Arrange
	pelea = Pelea.new
	#Act
	pelea.energia (1)
	#Assert
	pelea.player_1_energy.should == 10
	end

	it "El jugador 1 tiene debe tener como maximo 100 de energia" do
	#Arrange
	pelea = Pelea.new
	#Act
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	pelea.energia (1)
	#Assert
	pelea.player_1_energy.should == 100
	end

<<<<<<< HEAD
	it "Cuando ingreso a la app y el jugador 1 ataca, el usuario dos selecciona Energia 2 y luego Recargar 2 para recargar su vida" do
	#Arrange
	pelea = Pelea.new
	#Act
	pelea.punete (1)
	pelea.energia (2)
	pelea.recargar (2)
	#Assert
	pelea.player_2_score.should == 95
	end

=======
>>>>>>> 930a7d70a4fde3d1dbe87ca78a48e16166df698d
end 
