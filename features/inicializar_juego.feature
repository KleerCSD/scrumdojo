Feature: Inicializar Juego
	Como Jugador 1 me gustaria ingresar a la aplicacion y visualizar la interfaz de inicializacion

Scenario: Ingresa a la ruta inicial
	Given I open the web app

Scenario: Ingresa los roles de los jugadores
	Given I open the web app
	When I fill "rol_jugador1" with "BA"
	Then I should see "BA" 

Scenario: Al presionar el boton jugar el nombre del rol no debe ser Seleccione
	Given I open the web app
	When I fill "rol_jugador1" with "BA" 
		And I press "jugar"
	Then I should see "BA" 

