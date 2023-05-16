Algoritmo sin_titulo
	definir arreglo, n,m como entero
	
	Escribir "cantidad de filas: "
	Hacer
		Leer n
	Mientras Que n < 1
	m=3
	dimension arreglo[n, m]
	
	llenarMatriz(arreglo, n,m)
	imprimirMatriz(arreglo, n,m)
FinAlgoritmo

subproceso llenarMatriz(arreglo por referencia, n,m)
	definir i,j, num Como Entero
	para i=0 hasta n-1
		para j=0 hasta m-1
			si j == m-1
				arreglo[i,j] = arreglo[i,j -1] + arreglo[i,j -2]
			SiNo
				Escribir "Ingresa un numero: "
				Leer num
				arreglo[i,j] = num
			FinSi
		FinPara
	FinPara
FinSubProceso

subproceso imprimirMatriz(arreglo por referencia, n,m)
	definir i,j Como Entero
	para i=0 hasta m-1
		para j=0 hasta n-1
			segun j
				m-1:
					Escribir sin saltar "= ", arreglo[i,j]
				0:
					Escribir sin saltar arreglo[i,j], " + "
				De Otro Modo:
					Escribir sin saltar arreglo[i,j], " "
			FinSegun
			si j == m-1
				
			SiNo
				
			FinSi
			
		FinPara
		escribir ""
	FinPara
FinSubProceso
