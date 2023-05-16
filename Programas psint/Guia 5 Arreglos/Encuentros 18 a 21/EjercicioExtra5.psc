Algoritmo sin_titulo
	definir vector, frase, entrada como caracter
	definir i, posicion como entero
	dimension vector[20]
	
	escribir "Ingrese una frase"
	leer frase
	
	para i=0 hasta 19 Hacer
		vector[i] = subcadena(frase,i,i)
	FinPara
	
	escribir "Ingrese un caracter"
	leer entrada
	
	hacer 
		escribir "Ingrese una posicion"
		leer posicion
	Mientras Que posicion < 1 y posicion > 19
	
	reordenamiento(vector, posicion, entrada)
	escribir ""
FinAlgoritmo

subproceso reordenamiento(vector por referencia, posicion, entrada)
	definir izq, der Como Entero
	der = contarEspacios(vector, posicion, 1)
	izq = contarEspacios(vector, posicion, -1)
	
	mostrarVector(vector)
	si der < izq
		desplazamiento(vector, 19, posicion + 1,  -1)
	SiNo
		desplazamiento(vector, 0, posicion - 1,  1)
	FinSi
	
	vector[posicion] = entrada
	escribir ""
	mostrarVector(vector)
FinSubProceso

subproceso mostrarVector(vector)
	definir i Como Entero
	i = 0
	para i=0 hasta 19 Hacer
		Escribir sin saltar vector[i]
	FinPara
FinSubProceso

subproceso desplazamiento(vector por referencia, inicio, final, direccion)
	definir i como entero
	para i=inicio hasta final con paso direccion Hacer
		vector[i] = vector[i + direccion]
	FinPara
FinSubProceso

funcion contador = contarEspacios(vector, posicion, direcion)
	definir i, contador como entero
	i = posicion
	contador = 0
	mientras vector[i] <> " "
		contador = contador + 1
		i = i + direcion
	FinMientras
FinFuncion
