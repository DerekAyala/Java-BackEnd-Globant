Algoritmo sin_titulo
	definir letra Como Caracter
	Escribir "Ingresa una letra"
	leer letra
	letra = Mayusculas(letra)
	si Longitud(letra) == 1 entonces
		si letra == 'A' o letra == 'E' o letra == 'I' o letra == 'O' o letra == 'U' Entonces
			Escribir "Vocal"
		finsi
		si letra <> 'A' o letra <> 'E' o letra <> 'I' o letra <> 'O' o letra <> 'U' Entonces
			Escribir "Consonante"
		finsi
	FinSi
FinAlgoritmo
