Algoritmo sin_titulo
	definir arreglo, i, j, num, n Como Entero
	n = 4
	dimension arreglo(n,n)
	
	para i=0 hasta n-1
		para j=0 hasta n-1
			si i == j
				num = 0
			SiNo
				num = aleatorio(0,9)
			FinSi
			arreglo[i,j]= num
		FinPara
	FinPara
	imprimirMatriz(arreglo,n)
FinAlgoritmo

subproceso imprimirMatriz(matriz,n)
	definir i, j como entero
	para i=0 hasta n-1
		para j=0 hasta n-1
			Escribir sin saltar matriz[i,j], " "
		FinPara
		escribir ""
	FinPara
FinSubProceso