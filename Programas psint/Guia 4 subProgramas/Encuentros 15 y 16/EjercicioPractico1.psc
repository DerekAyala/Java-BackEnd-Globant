Algoritmo sin_titulo
	definir a, b, c Como Entero
	
	Escribir "Ingresa dos numeros"
	Leer a,b
	escribir "Valor de A: ", a, " B: ", b
	intercambiar(a,b,c)
	escribir "Valor de A: ", a, " B: ", b
FinAlgoritmo

subproceso intercambiar(a por referencia,b por referencia,c por referencia)
	c = a
	a = b
	b = c
FinSubProceso
	