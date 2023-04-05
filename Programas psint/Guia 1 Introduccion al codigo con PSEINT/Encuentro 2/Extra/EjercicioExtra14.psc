Algoritmo sin_titulo
	definir num, tamano Como Entero
	definir numTexto, invertido como caracter
	
	Escribir "numero: "
	leer num
	
	numTexto = ConvertirATexto(num)
	tamano = longitud(numTexto)
	invertido=""
	
	mientras tamano >= 0
		invertido = invertido + Subcadena(numTexto,tamano,tamano)
		tamano = tamano - 1
	FinMientras
	
	Escribir"Numero invertido: ", convertirANumero(invertido)
	
	
FinAlgoritmo
