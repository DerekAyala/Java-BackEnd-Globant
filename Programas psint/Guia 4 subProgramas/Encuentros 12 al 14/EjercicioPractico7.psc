Algoritmo sin_titulo
	definir num1 Como caracter
	definir resultado como entero
	Escribir "Ingresa un numero:"
	Leer num1
	resultado = Validar(num1)
	Escribir "El texto : ", resultado
FinAlgoritmo

funcion resultado = Validar(num1)
	definir resultado Como entero
	resultado = ConvertirANumero(num1)
FinFuncion
