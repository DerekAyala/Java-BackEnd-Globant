Algoritmo sin_titulo
	definir num1 Como Entero
	definir num2 Como Entero
	Escribir "Ingresa un numero"
	leer num1
	Escribir "Ingresa otro numero"
	leer num2
	Escribir "Suma: ", num1 + num2
	Escribir "Resta: ", num1 - num2
	Escribir "Multiplicacion: ", num1 * num2
	si num1 == 0 o num2 == 0
		Escribir "No se puede dividir entre 0"
	sino 
		Escribir "Division: ", num1 / num2
	FinSi
FinAlgoritmo
