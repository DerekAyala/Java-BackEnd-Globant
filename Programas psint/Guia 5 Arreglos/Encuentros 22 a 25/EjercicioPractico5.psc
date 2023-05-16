Algoritmo sin_titulo
	definir i, j, n, contador Como Entero
	definir palabra, arreglo como caracter
	n = 3
	dimension arreglo(n,n)
	
	Escribir "Palabra: "
	Leer palabra
	
	
	contador = 0
	
	para i=0 hasta n-1
		para j=0 hasta n-1
			arreglo[i,j] = subcadena(palabra,contador,contador)
			contador = contador + 1
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
