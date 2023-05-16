Algoritmo sin_titulo
	definir arreglo, i, j, num Como Entero
	dimension arreglo(3,3)
	
	num=1
	para i=0 hasta 2
		para j=0 hasta 2
			arreglo[i,j]= num
			num = num + 1
		FinPara
	FinPara
	
	para i=0 hasta 2
		para j=0 hasta 2
			escribir sin saltar arreglo[i,j], " "
		FinPara
	FinPara
FinAlgoritmo
