Algoritmo sin_titulo
	definir palabra como caracter
	
	Escribir "Escribir una palabra"
	leer palabra
	
	si Longitud(palabra) == 4 entonces
		palabra = concatenar(palabra,"!")
	SiNo
		palabra = concatenar(palabra,"?")
	finSi
	Escribir palabra
FinAlgoritmo