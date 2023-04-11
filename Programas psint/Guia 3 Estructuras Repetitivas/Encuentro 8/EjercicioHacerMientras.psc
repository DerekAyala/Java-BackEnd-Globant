Algoritmo sin_titulo
	Definir num, suma, i Como Entero
	Hacer
		Escribir "Ingrese un numero entero positivo"
		leer num
	Mientras Que num <= 0
	
	suma = 0
	i = 1
	
	Mientras i <= num Hacer
		suma = suma + i
		i = i + 1
	FinMientras
	
	Escribir "La suma de los ", num, " numeros naturales es: ", suma
FinAlgoritmo
