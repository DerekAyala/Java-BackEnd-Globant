Algoritmo sin_titulo
	definir num1 Como Entero
	definir resultado como logico
	Escribir "Ingresa un numero:"
	Leer num1
	resultado = Primo(num1)
	Escribir "El resultado de validar si es primo: ", resultado
FinAlgoritmo

funcion resultado = Primo(num1)
	definir contador,i Como entero
	definir resultado como logico
	contador = 0
	para i = 1 hasta num1
		si num1 mod i == 0
			contador = contador + 1
		FinSi
	FinPara
	
	si contador == 2 Entonces
		resultado = Verdadero
	SiNo
		resultado = falso
	FinSi
FinFuncion
