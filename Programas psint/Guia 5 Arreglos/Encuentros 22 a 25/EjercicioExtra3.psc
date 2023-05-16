Algoritmo sin_titulo
	definir arreglo, n,m como entero
	n = 5
	m = 15
	dimension arreglo[n, m]
	
	llenarMatriz(arreglo, n,m)
	imprimirMatriz(arreglo, n,m)
FinAlgoritmo

subproceso llenarMatriz(arreglo por referencia, n,m)
	definir i,j Como Entero
	para i=0 hasta n-1
		para j=0 hasta m-1
			si i == 0 o j == 0 o j == m-1 o i == n-1
				arreglo[i,j] = 1
			SiNo
				arreglo[i,j] = 0
			FinSi
		FinPara
	FinPara
FinSubProceso

subproceso imprimirMatriz(arreglo por referencia, n,m)
	definir i,j Como Entero
	para i=0 hasta n-1
		para j=0 hasta m-1
			Escribir sin saltar arreglo[i,j], " "
		FinPara
		escribir ""
	FinPara
FinSubProceso
