Algoritmo sin_titulo
	definir palabra como caracter
	
	Escribir "Escribir una palabra"
	leer palabra
	palabra = Mayusculas(palabra)
	
	si Subcadena(palabra, 0,0) == Subcadena(palabra, Longitud(palabra)-1,Longitud(palabra)-1) entonces
		Escribir "Correcto"
	SiNo
		Escribir "Incorrecto"
	finSi
FinAlgoritmo
