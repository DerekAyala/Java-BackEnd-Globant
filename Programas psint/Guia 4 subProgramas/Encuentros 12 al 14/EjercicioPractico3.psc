Algoritmo sin_titulo
	Definir num1,num2 Como Entero
	Definir resultado como logico
	Escribir "Ingresa el numero y el numero con el que quieras saber si es multiplo:"
	Leer num1,num2
	resultado = Multiplo(num1,num2)
	Escribir num1, " es multiplo de ", num2,": ", resultado
FinAlgoritmo

funcion resultado = Multiplo(num1,num2)
	definir resultado Como logico
	si num1 mod num2 == 0
		resultado = Verdadero
	SiNo
		resultado = falso
	FinSi
FinFuncion