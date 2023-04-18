Algoritmo sin_titulo
	definir num1, resultado Como Entero
	Escribir "Ingresa un numero:"
	Leer num1
	resultado = Primo(num1)
	Escribir "la cantidad de divisores: ", resultado
FinAlgoritmo

funcion contador = Primo(num1)
	definir contador,i Como entero
	contador = 0
	para i = 1 hasta num1
		si i <> num1
			si num1 mod i == 0
				escribir i
				contador = contador + 1
			FinSi
		FinSi
		
	FinPara
FinFuncion