Algoritmo sin_titulo
	definir escalera como entero
	
	Escribir "Ingresa el tamaño de la escalera"
	Leer  escalera
	
	dibujar(escalera)
FinAlgoritmo

subproceso dibujar(escalera)
	definir i, j Como Entero
	para i = 1 hasta escalera
		para j = 1 hasta i
			escribir sin saltar j
		FinPara
		Escribir ""
	FinPara
FinSubProceso
