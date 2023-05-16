Algoritmo sin_titulo
	Definir suma,resta, multiplicacion, num, vector Como Real
	Definir i Como Entero
	Dimension vector[10]
	
	suma = 0
	resta = 0
	multiplicacion = 1
	
	Para i=0 Hasta 9
		Escribir "Ingresa un numero"
		Leer num
		vector[i] = num
	FinPara
	
	Para i=0 Hasta 9
		suma = suma + vector[i]
		resta = resta - vector[i]
		multiplicacion = multiplicacion * vector[i]
	FinPara
	
	Escribir suma
	Escribir resta
	Escribir multiplicacion
FinAlgoritmo
