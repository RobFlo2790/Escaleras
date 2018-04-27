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

	
