Algoritmo sin_titulo
	definir digitos Como Entero
	Definir resultado Como Logico
	Escribir "Ingresa un numero:"
	Leer digitos
	resultado = Impares(digitos)
	Escribir digitos, " Todos los numeros son impares: ", resultado
FinAlgoritmo

funcion resultado = Impares(digitos)
	definir contador,i,num Como entero
	Definir resultado Como Logico
	Definir numTexto Como Caracter
	numTexto = ConvertirATexto(digitos)
	contador = 0
	
	Para i = 0 Hasta Longitud(numTexto) -1 Hacer
		num = ConvertirANumero(Subcadena(numTexto,i,i))
		si num mod 2 == 1
			contador = contador + 1
		FinSi
	FinPara
	si contador == Longitud(numTexto)
		resultado = Verdadero
	SiNo
		resultado = Falso
	FinSi
FinFuncion
