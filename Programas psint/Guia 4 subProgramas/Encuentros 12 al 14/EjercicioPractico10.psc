Algoritmo sin_titulo
	definir digitos, resultado Como Entero
	Escribir "Ingresa un numero:"
	Leer digitos
	resultado = Suma(digitos)
	Escribir digitos
	Escribir "la suma de los numeros: ", resultado
FinAlgoritmo

funcion resultado = Suma(digitos)
	definir resultado,i,num Como entero
	Definir numTexto Como Caracter
	numTexto = ConvertirATexto(digitos)
	resultado = 0
	
	Para i = 0 Hasta Longitud(numTexto) -1 Hacer
		num = ConvertirANumero(Subcadena(numTexto,i,i))
		resultado = resultado + num
	FinPara
FinFuncion