Algoritmo sin_titulo
	definir num,i,resultado Como Entero
	Escribir "Ingresa un numero:"
	Leer num
	Para i = 1 Hasta num Hacer
		resultado = Fibonacci(i)
		Escribir resultado
	FinPara
FinAlgoritmo

funcion suma = Fibonacci(num)
	Definir suma Como Entero
	si num <= 1 Entonces
		suma = num
	SiNo
		suma = Fibonacci(num-1) + Fibonacci(num-2)
	FinSi
FinFuncion