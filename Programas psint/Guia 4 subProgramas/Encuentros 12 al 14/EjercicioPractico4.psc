Algoritmo sin_titulo
	definir frase,letra Como caracter
	definir cantidad como entero
	Escribir "Ingresa una frase:"
	Leer frase
	Escribir "Ingresa una letra:"
	Leer letra
	cantidad = Contar(frase,letra)
	Escribir "La cantidad de ", letra, " en la frase son: ", cantidad
FinAlgoritmo

funcion cantidad = Contar(frase,letra)
	definir cantidad, i Como Entero
	cantidad = 0
	Para i<-0 Hasta longitud(frase)-1 Con Paso 1 Hacer
		si subcadena(frase,i,i) == letra
			cantidad = cantidad + 1
		FinSi
	Fin Para
FinFuncion
