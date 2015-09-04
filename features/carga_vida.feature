Feature: Cargar Vida
	Como usuario 
	Deseo poder recargar mi vida usando los puntos de energia
	Para recuperar vida


Scenario: Cuando ingreso a la app y el jugador 1 ataca, el usuario dos selecciona Energia 2 y luego Recargar 2 para recargar su vida
	Given I open the web app
	When I fill "nombre_jugador1" with "HIRO"
	And I fill "nombre_jugador2" with "EDSON"
	And I press "jugar"
	And I press "Punete 1"
	And I press "Energia 2"
	And I press "Recargar 2"
	Then I should see "Vida 2: 95" 



Scenario: Cuando ingreso a la app y el jugador 1 ataca con 5 punetes, el usuario dos selecciona Energia 2 y luego Recargar 2 para recargar su vida
	Given I open the web app
	When I fill "nombre_jugador1" with "HIRO"
	And I fill "nombre_jugador2" with "EDSON"
	And I press "jugar"
	And I press "Punete 1"
	And I press "Punete 1"
	And I press "Punete 1"
	And I press "Punete 1"
	And I press "Punete 1"
	And I press "Energia 2"
	And I press "Recargar 2"
	Then I should see "Vida 2: 35" 	

