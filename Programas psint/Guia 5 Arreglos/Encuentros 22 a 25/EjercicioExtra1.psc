Algoritmo sin_titulo
	definir arreglo, tam como entero
	tam = 3
	dimension arreglo[tam, tam]
	
	llenarMatriz(arreglo, tam)
	imprimirMatriz(arreglo, tam)
FinAlgoritmo

subproceso llenarMatriz(arreglo por referencia, tam)
	definir i,j Como Entero
	para i=0 hasta tam-1
		para j=0 hasta tam-1
			arreglo[i,j] = azar(10)
		FinPara
	FinPara
FinSubProceso

subproceso imprimirMatriz(arreglo por referencia, tam)
	definir i,j Como Entero
	para i=0 hasta tam-1
		para j=0 hasta tam-1
			Escribir sin saltar arreglo[i,j], " "
		FinPara
		escribir ""
	FinPara
FinSubProceso