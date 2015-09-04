Feature: Mostrar jugador
	Como usuario 
	Deseo visualizar la interfaz de juego
	Para empezar el juego

Scenario: Mostrar el boton punete para el jugador 1
	Given I open the web app
	When I press "jugar"
	Then I should see "Punete 1"

Scenario: Mostrar el boton punete para el jugador 2
	Given I open the web app
	When I press "jugar"
	Then I should see "Punete 2"

Scenario: Mostrar el puntaje de Energia del jugador 1
	Given I open the web app
	When I press "jugar"
	Then I should see "Energia 1"

Scenario: Mostrar el puntaje de Vida del jugador 1
	Given I open the web app
	When I press "jugar"
	Then I should see "Vida 1: 100"

Scenario: Mostrar el puntaje de Energia del jugador 2
	Given I open the web app
	When I press "jugar"
	Then I should see "Energia 2: 0"

Scenario: Mostrar el puntaje de Vida del jugador 2
	Given I open the web app
	When I press "jugar"
	Then I should see "Vida 2: 100"


