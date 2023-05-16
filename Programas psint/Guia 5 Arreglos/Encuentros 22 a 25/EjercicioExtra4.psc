Algoritmo sin_titulo
	definir arreglo1, arreglo2, tam como entero
	tam = 3
	dimension arreglo1[tam, tam], arreglo2[tam,tam]
	
	llenarMatriz(arreglo1, tam)
	imprimirMatriz(arreglo1, tam)
	escribir "" 
	llenarMatriz(arreglo2, tam)
	imprimirMatriz(arreglo2, tam)
	escribir "" 
	multiplicar(arreglo1, arreglo2, tam)
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

subproceso multiplicar(arreglo1, arreglo2, tam)
	definir suma,i,j,x como entero
	para i=0 hasta tam-1
		para j=0 hasta tam-1
			suma = 0
			para x=0 hasta tam-1
				suma = suma + (arreglo1[i,x] * arreglo2[x,j])
			FinPara
			escribir sin saltar suma, " "
		FinPara
		escribir ""
	FinPara
FinSubProceso
	