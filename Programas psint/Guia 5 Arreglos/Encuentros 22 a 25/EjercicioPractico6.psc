Algoritmo sin_titulo
	definir arreglo, i, j, num, n Como Entero
	
	Escribir "Tamaño de la matriz: "
	Hacer
		Leer n
	Mientras Que n < 1 o n > 10
	dimension arreglo(n,n)
	
	Escribir "Ingresa un numero: "
	para i=0 hasta n-1
		para j=0 hasta n-1
			Hacer
				Leer num
			Mientras Que num < 1 o num > 9
			arreglo[i,j]= num
		FinPara
	FinPara
	escribir ""
	matrizMagica(arreglo,n)
FinAlgoritmo

subproceso matrizMagica(matriz,n)
	definir filas, columnas, diagonalP, diagonalS Como Entero
	dimension filas[n], columnas[n]
	inicializar(filas,columnas,diagonalP,diagonalS,n)
	definir i, j como entero
	para i=0 hasta n-1
		para j=0 hasta n-1
			filas[i] = filas[i] + matriz[i,j]
			si i == j
				diagonalP = diagonalP + matriz[i,j]
			FinSi
			columnas[i] =columnas[i] + matriz[j,i]
			Escribir sin saltar matriz[j,i], " "
		FinPara
		escribir ""
	FinPara
	
	j = n-1
	
	para i=0 hasta n-1 Hacer
		diagonalS = diagonalS + matriz[i,j]
		j = j - 1
	FinPara
	
	
	
	// COMPARAR
	definir magico Como Logico
	magico = Verdadero
	
	si diagonalP <> diagonalS Entonces
		magico = falso
	FinSi
	
	i = 0
	mientras i < n-1 y magico == verdadero
		si filas[i] <> filas[i+1]
			magico = falso
		FinSi
		si columnas[i] <> columnas[i+1]
			magico = falso
		FinSi
		i= i +1
	FinMientras
	
	si diagonalP <> diagonalS Entonces
		magico = falso
	FinSi
	
	si magico == Verdadero
		Escribir "MATRIZ MAGICA"
	SiNo
		escribir "NO ES MAGICA"
	FinSi
FinSubProceso

subproceso inicializar(filas por referencia, columnas por referencia, diagonalP por referencia, diagonalS por referencia, n)
	definir i Como Entero
	para i=0 hasta n-1
		filas[i] = 0
		columnas[i] = 0
	FinPara
	
	diagonalP = 0
	diagonalS = 0
	
FinSubProceso
	