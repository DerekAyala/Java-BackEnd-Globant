Algoritmo sin_titulo
	definir arreglo, i, j, num Como Entero
	dimension arreglo(3,3)
	
	para i=0 hasta 2
		para j=0 hasta 2
			Escribir "Ingresa un numero: "
			leer num
			arreglo[i,j]= num
		FinPara
	FinPara
	
	para i=0 hasta 2
		para j=0 hasta 2
			escribir sin saltar arreglo[i,j], " "
		FinPara
	FinPara
FinAlgoritmo
