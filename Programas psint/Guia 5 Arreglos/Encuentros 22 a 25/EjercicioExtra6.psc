Algoritmo sin_titulo
	definir arreglo1, arreglo2, tam como entero
	tam = 3
	dimension arreglo1[tam, tam], arreglo2[tam]
	
	llenarMatriz(arreglo1, arreglo2, tam)
	imprimirMatriz(arreglo1, arreglo2, tam)
	escribir "" 
	multiplicar(arreglo1, arreglo2, tam)
FinAlgoritmo

subproceso llenarMatriz(arreglo1 por referencia, arreglo2 por referencia, tam)
	definir i,j Como Entero
	para i=0 hasta tam-1
		arreglo2[i] = azar(10)
		para j=0 hasta tam-1
			arreglo1[i,j] = azar(10)
		FinPara
	FinPara
FinSubProceso

subproceso imprimirMatriz(arreglo1, arreglo2, tam)
	definir i,j Como Entero

	para i=0 hasta tam-1
		para j=0 hasta tam-1
			Escribir sin saltar arreglo1[i,j], " "
		FinPara
		escribir "     ", arreglo2[i]
	FinPara
FinSubProceso

subproceso multiplicar(arreglo1, arreglo2, tam)
	definir suma,i,j,x como entero
	para i=0 hasta tam-1
		suma = 0
		para j=0 hasta tam-1
			suma = suma + (arreglo1[i,j]  * arreglo2[j])
		FinPara
		escribir suma, " "
	FinPara
FinSubProceso
