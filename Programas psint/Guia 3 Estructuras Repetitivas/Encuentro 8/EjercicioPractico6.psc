Algoritmo sin_titulo
	definir num, suma, par Como Entero
	suma = 0
	par = 2
	Escribir "Ingresa un numero"
	Hacer
		Leer num
	Mientras Que num < 0
	Escribir "Suma de los ", num, " numeros pares: "
	Hacer
		suma = suma + par
		num = num - 1
		par = par + 2
	Mientras Que num > 0
	Escribir suma
FinAlgoritmo
