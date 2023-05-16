Algoritmo sin_titulo
	Definir vector,tam, num, buscar, i Como Entero
	Definir bandera Como Logico
	bandera = Falso
	
	Hacer
		Escribir "Ingresa el tamaño"
		Leer tam
	Mientras Que tam < 0
	
	Dimension vector[tam]
	
	Para i=0 Hasta tam - 1 Hacer
		Escribir "Ingresa un numero para llenar el vector"
		Leer num
		vector[i] = num
	FinPara
	
	Escribir i
	
	Escribir "Ingresa el numero a buscar"
	Leer buscar
	
	
	Mientras i >= 1 y bandera == Falso
		si vector[i-1] == buscar
			bandera = Verdadero
			Escribir "Numero encontrado"
		FinSi
		i = i -1
	FinMientras
	
	si bandera == Falso
		Escribir "No se encontro el numero"
	FinSi
FinAlgoritmo
