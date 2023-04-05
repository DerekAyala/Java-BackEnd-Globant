Algoritmo sin_titulo
	definir opinion como entero
	
	Escribir "Clasifique la peli del 1 a 5 estrellas"
	leer opinion
	
	segun opinion Hacer
		1,2:
			Escribir "Lamentamos que no hayas disfrutado la peli"
		3:
			Escribir "Pelicula buena"
		4:
			Escribir "Pelicula muy Buena"
		5:
			Escribir "Pelicula muy buena"
		De Otro Modo:
			Escribir "El valor ", opinion, " no es valido"
	FinSegun
FinAlgoritmo
