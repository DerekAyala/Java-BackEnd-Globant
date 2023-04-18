Algoritmo sin_titulo
	definir num1 Como Entero
	definir resultado como logico
	Escribir "Ingresa un numero:"
	Leer num1
	resultado = Validar(num1)
	Escribir "El resultado de validar si es par: ", resultado
FinAlgoritmo

funcion resultado = Validar(num1)
	definir resultado Como logico
	si num1 mod 2 == 0
		resultado = Verdadero
	SiNo
		resultado = falso
	FinSi
FinFuncion
