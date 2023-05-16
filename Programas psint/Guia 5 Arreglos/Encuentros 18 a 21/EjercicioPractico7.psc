Algoritmo sin_titulo
	definir vector1, vector2, i, tam como entero
	definir igualdar como logico
	
	Escribir "Tamaño de los vectores"
	Leer tam
	
	dimension vector1[tam], vector2[tam]
	
	crearVector(vector1, vector2, tam)
	escribir "son iguales: " comparar(vector1, vector2, tam)
FinAlgoritmo

subproceso crearVector(vector1 por referencia, vector2 por referencia, tam)
	definir i como entero
	para i=0 hasta tam-1 Hacer
		vector1[i] = azar(10)
		vector2[i] = azar(10)
	FinPara
FinSubProceso

funcion iguales = comparar(vector1, vector2, tam)
	definir iguales Como Logico
	definir i como entero
	iguales = verdadero
	i = 0
	mientras i < tam - 1 y iguales == verdadero
		si vector1[i] <> vector2[i]
			iguales = falso
		FinSi
		i = i + 1
	FinMientras
FinFuncion
	