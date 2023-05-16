Algoritmo sin_titulo
	definir arreglo, i, j, num Como Entero
	definir encontrado como logico
	dimension arreglo(5,5)
	
	para i=0 hasta 2
		para j=0 hasta 2
			arreglo[i,j]= aleatorio(0,10)
		FinPara
	FinPara
	
	Escribir "Numero a encontrar: "
	Leer  num
	
	encontrado = Falso
	
	i=0
	
	mientras i <= 2 y encontrado == falso
		j=0
		mientras j <= 2 y encontrado == falso
			si num == arreglo[i,j]
				encontrado = verdadero
			SiNo
				j= j + 1
			FinSi
		FinMientras
			i = i + 1
		
	FinMientras
	si encontrado == Verdadero
		Escribir "Fila: ", i, " Columa: ", j
	SiNo
		Escribir "No fue encontrado"
	FinSi
FinAlgoritmo
