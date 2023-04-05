Algoritmo sin_titulo
	definir num, numInvertido, tamano como enteros
	definir numTexto, invertido como caracter
	Escribir "Ingresa un numero: "
	leer num
	
	numTexto = ConvertirATexto(num)
	tamano = longitud(numTexto)
	invertido=""
	
	mientras tamano >= 0
		invertido = invertido + Subcadena(numTexto,tamano,tamano)
		tamano = tamano - 1
	FinMientras
	
	numInvertido = ConvertirANumero(invertido)
	si num == numInvertido Entonces
		Escribir "El numero es capicúa"
	FinSi
FinAlgoritmo
