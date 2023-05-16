Algoritmo sin_titulo
	definir arreglo, i, j, num, n, m Como Entero
	
	Escribir "Numero de filas: "
	Leer  n
	
	Escribir "Numero de columnas: "
	Leer  m
	
	dimension arreglo(n,m)
	
	para i=0 hasta n-1
		para j=0 hasta m-1
			num = aleatorio(0,10)
			arreglo[i,j]= num
		FinPara
	FinPara
	
	calcularSuma(arreglo,n,m)
FinAlgoritmo

subproceso calcularSuma(matriz, n,m)
	definir i, j, suma como entero
	suma = 0
	para i=0 hasta n-1
		para j=0 hasta m-1
			Escribir sin saltar matriz[i,j], " "
			suma = suma + matriz[i,j]
		FinPara
		escribir ""
	FinPara
	
	Escribir "Suma de los valores: ", suma
FinSubProceso
	