Algoritmo NumerosNoValidos
	Definir num,suma,i Como Entero
	Hacer
		Escribir "Ingrese un numero entero positivo"
		Leer num
	Mientras Que num <= 0
	
	suma = 0
	
	Para i = 1 hasta num Hacer
		suma = suma + i
	FinPara
	
	Escribir "La suma de los ", num, " numeros narutales es: ", suma
	
FinAlgoritmo
