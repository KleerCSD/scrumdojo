Feature: Inicializar Juego
	Como Jugador 1 me gustaria ingresar a la aplicacion y visualizar la interfaz de inicializacion

Scenario: Ingresa a la ruta inicial
	Given I open the web app

Scenario: Ingresa los nombres de los jugadores
	Given I open the web app
	When I fill "nombre_jugador1" with "HIRO"
	Then I should see "HIRO" 

Scenario: Ingresa los roles de los jugadores
	Given I open the web app
	When I fill "rol_jugador1" with "BA"
	Then I should see "BA" 

