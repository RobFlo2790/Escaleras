Feature: Cuando cargo la pagina principal	

Scenario: Titulo

	Given Visito la pagina principal
	Then Veo "Escaleras y Serpientes"

Scenario: Al iniciar el juego es necesario lanzar el dado
	Given Visito la pagina principal
	Then Veo "Lanzar dado para iniciar" 

Scenario: Al lanzar el dado devuelve 3
	Given  Visito la pagina principal
	When lanzo el dado
	Then Veo un numero en el "resultadoDado"

Scenario: Cuando inicia el juego veo mi posicion
	  Given Visito la pagina principal
	  Then Veo "Tu estas aqui: 1" 

Scenario: Cuando estoy jugando y tiro el dado veo mi nueva posicion
	  Given Visito la pagina principal
	  When lanzo el dado
	  Then Veo "vas a:"


	

	
