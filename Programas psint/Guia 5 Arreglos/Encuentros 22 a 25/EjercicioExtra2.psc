Algoritmo sin_titulo
	definir arreglo, n,m como entero
	
	Escribir "cantidad de filas: "
	Hacer
		Leer n
	Mientras Que n < 1
	
	Escribir "cantidad de columnas: "
	Hacer
		Leer m
	Mientras Que m < 1
	
	dimension arreglo[n, m]
	
	llenarMatriz(arreglo, n,m)
	imprimirMatriz(arreglo, n,m)
FinAlgoritmo

subproceso llenarMatriz(arreglo por referencia, n,m)
	definir i,j Como Entero
	para i=0 hasta n-1
		para j=0 hasta m-1
			arreglo[i,j] = aleatorio(1,100)
		FinPara
	FinPara
FinSubProceso

subproceso imprimirMatriz(arreglo por referencia, n,m)
	definir i,j Como Entero
	para i=0 hasta m-1
		para j=0 hasta n-1
			Escribir sin saltar arreglo[j,i], " "
		FinPara
		escribir ""
	FinPara
FinSubProceso
	