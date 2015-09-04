Feature: Lanzar punete
	Como usuario 
	Deseo lanzar punete
	Para disminuir la vida del oponente

Scenario: Inicializar la vida del jugador 1 en 100
	Given I open the web app arena
	Then I should see "Vida 1: 100"

Scenario: Inicializar la vida del jugador 2 en 100
	Given I open the web app arena
	Then I should see "Vida 2: 100"
