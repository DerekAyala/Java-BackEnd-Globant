Algoritmo sin_titulo
	definir minima, maxima Como Entero
	definir media como real
	
	Escribir "Ingresa la temperatura minima "
	Leer minima
	
	Escribir "Ingresa la temperatura maxima "
	Leer maxima
	
	temperaturaMedia(minima,maxima,media)
	
	Escribir "Temperatura media: ", media
FinAlgoritmo

subproceso temperaturaMedia(minima,maxima,media por referencia)
	definir suma, i Como Entero
	suma = 0
	para i = minima hasta maxima
		suma = suma + i
	FinPara
	media = suma / (maxima - minima + 1)
	FinSubProceso
	