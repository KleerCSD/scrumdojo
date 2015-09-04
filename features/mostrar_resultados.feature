Feature: Mostrar resultados
	Como Jugador deseo saber quien gano la pelea, y conocer el nomnbre y el rol del ganador

Scenario: Ingresa al resultado
	Given I open the web app resultado
	Then I should see "CRUZ"


Scenario: Regresa al inicio de la aplicación cuando selecciona "Volver a jugar"
	Given I open the web app
	When I press "jugar"
	And I press "Patada 2"
    And I press "Patada 2"
    And I press "Patada 2"
    And I press "Patada 2"
    And I press "Patada 2"
    And I press "Patada 2"
    And I press "Volver a jugar"
	Then I should see "CODE FIGHTER"


