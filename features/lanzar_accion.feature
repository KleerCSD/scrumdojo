Feature: Lanzar punete
	Como usuario 
	Deseo lanzar punete
	Para disminuir la vida del oponente

Scenario: Inicializar la vida del jugador 1 en 100
	Given I open the web app
	When I press "jugar"
	Then I should see "Vida 1: 100"

Scenario: Inicializar la vida del jugador 2 en 100
	Given I open the web app
	When I press "jugar"
	Then I should see "Vida 2: 100"

Scenario: Cuando se inicia el juego y lanzo un puñete del jugador 1 la vida del otro jugador 2 debe disminuir en 15
	Given I open the web app
	When I press "jugar"
	And I press "Punete 1"
	Then I should see "Vida 2: 85"

Scenario: Cuando se inicia el juego y lanzo un puñete del jugador 2 la vida del otro jugador 1 debe disminuir en 15
	Given I open the web app
	When I press "jugar"
	And I press "Punete 2"
	Then I should see "Vida 1: 85"

Scenario: Cuando se inicia el juego y el jugador 2 lanzo 7 puñete, este debe ganar
	Given I open the web app
	When I press "jugar"
	And I press "Punete 2"
    And I press "Punete 2"
    And I press "Punete 2"
    And I press "Punete 2"
    And I press "Punete 2"
    And I press "Punete 2"
    And I press "Punete 2"
	Then I should see "ganador :"


Scenario: Cuando se inicia el juego y lanzo una patada del jugador 2 la vida del otro jugador 1 debe disminuir en 17
	Given I open the web app
	When I press "jugar"
	And I press "Punete 2"
	Then I should see "Vida 1: 85"


Scenario: Cuando se inicia el juego y el jugador 2 lanzo 6 patada, este debe ganar
	Given I open the web app
	When I press "jugar"
	And I press "Patada 2"
    And I press "Patada 2"
    And I press "Patada 2"
    And I press "Patada 2"
    And I press "Patada 2"
    And I press "Patada 2"
	Then I should see "ganador :"


Scenario: Cuando el jugador 1 usa la opcion de energia
	Given I open the web app
	When I press "jugar"
	And I press "Energia 1"
	Then I should see "Energia 1: 10"


Scenario: El jugador 1 tiene debe tener como maximo 100 de energia
	Given I open the web app
	When I press "jugar"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	And I press "Energia 1"
	Then I should see "Energia 1: 100"

