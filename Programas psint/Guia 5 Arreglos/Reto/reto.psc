Algoritmo sin_titulo
	definir arreglo Como Caracter
	Definir  n,m Como Entero
	n = 9
	m = 12
	Dimension arreglo(n,m)
	inciarMatriz(arreglo,n,m)
	agregarPalabra(arreglo,0,"VECTOR")
	agregarPalabra(arreglo,1,"MATRIX")
	agregarPalabra(arreglo,2,"PROGRAMA")
	agregarPalabra(arreglo,3,"SUBPROGRAMA")
	agregarPalabra(arreglo,4,"SUBPROCESO")
	agregarPalabra(arreglo,5,"VARIABLE")
	agregarPalabra(arreglo,6,"ENTERO")
	agregarPalabra(arreglo,7,"PARA")
	agregarPalabra(arreglo,8,"MIENTRAS")
	imprimirMatriz(arreglo,n,m)
	acomodarPalabra(arreglo,n,m)
	imprimirMatriz(arreglo,n,m)
FinAlgoritmo

SubProceso inciarMatriz(arreglo Por Referencia, n,m)
	Definir i,j Como Entero
	Para i=0 hasta n-1
		para j=0 Hasta m-1
			arreglo[i,j] = ""
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatriz(arreglo,n,m)
	Definir i,j Como Entero
	Para i=0 hasta n-1
		para j=0 Hasta m-1
			si arreglo[i,j] <> ""
				Escribir Sin Saltar arreglo[i,j], " | "
			SiNo
				escribir Sin Saltar "  | "
			FinSi
		FinPara
		Escribir ""
	FinPara
	Escribir "----------------------------------------------"
FinSubProceso

SubProceso agregarPalabra(arreglo Por Referencia,fila,palabra)
	definir i Como Entero
	para i=0 Hasta Longitud(palabra)-1
		arreglo(fila,i) = Subcadena(palabra,i,i)
	FinPara
FinSubProceso


funcion r = buscarR(arreglo,fila,m)
	Definir i,j,r Como Entero
	Definir encontrada Como Logico
	encontrada = Falso
	i=0
	Mientras i<m-1 y encontrada == Falso
		si arreglo(fila,i) == "R"
			encontrada=Verdadero
			r=i
		FinSi
		i = i + 1
	FinMientras
FinFuncion

SubProceso acomodarPalabra(arreglo Por Referencia,n,m)
	Definir i,j, posicion,r,contador Como Entero
	Definir alineado Como Logico
	// obtiene la posicion de la primera R de la linea 0
	posicion = buscarR(arreglo,0,m)
	
	Para i=0 hasta n-1
		// obiene la r de la actual linea
		r=buscarR(arreglo,i,m)
		// los espacios que avanza
		contador=0
		// compara
		Mientras r<> posicion
			// recorre la palabra hasta que este alineada con la primera R un lugar a la vez hasta que se alinea
			Para j=m-1 Hasta 1 Con Paso -1
				arreglo[i,j] = arreglo[i,j-1]
			FinPara
			// va borrando sus pasos
			Para j=0 Hasta contador
				arreglo[i,j] = ""
			FinPara
			contador = contador + 1
			// revalida si R es igual a la posicion de la primera r
			r=buscarR(arreglo,i,m)
		FinMientras
	FinPara
FinSubProceso
	