Algoritmo sin_titulo
	definir muestra, arreglo Como Caracter
	definir tam, long Como Entero
	definir muestraValida como logico
	
	muestra = mayusculas("BCAADCCBABCCBABB")
	muestraValida = validarMuestra(muestra)
	si muestraValida == verdadero
		segun longitud(muestra)
			9:
				tam = 3
			16:
				tam = 4
			1369:
				tam = 37
		FinSegun
		dimension arreglo(tam,tam)
		llenarArreglo(arreglo, tam, muestra)
		imprimirArreglo(arreglo, tam)
		genZ(arreglo,tam)
	FinSi
FinAlgoritmo

funcion valido =  validarMuestra(muestra)
	definir valido Como Logico
	definir i, long como entero
	definir base como caracter
	valido = Verdadero
	i=0
	mientras i < longitud(muestra) y valido == Verdadero
		base = subcadena(muestra,i,i)
		si base <> "A" y base <> "B" y base <> "C" y base <> "D"
			escribir "Entrada no valida"
			valido = falso
		FinSi
		i = i+1
	FinMientras
	
	long = (longitud(muestra))
	
	si long <> 9 y long <> 16 y long <> 1369
		valido = falso
		escribir "Entrada no valida"
	FinSi
finfuncion

subproceso validar(condicion, mensaje)
	si condicion
		escribir mensaje
	FinSi
FinSubProceso

subproceso llenarArreglo(arreglo por referencia, tam, muestra)
	definir i, j, contador Como Entero
	contador = 0
	para i=0 hasta tam-1
		para j=0 hasta tam-1
			arreglo[i,j] = subcadena(muestra,contador,contador)
			contador = contador + 1
		FinPara
	FinPara
FinSubProceso

subproceso genZ(arreglo,tam)
	definir i, j Como Entero
	definir bandera Como Logico
	bandera = verdadero
	
	j=0
	i=0
	Mientras i < tam-1 y bandera == verdadero
		si arreglo[i,j] <> arreglo[i+1,j+1]
			bandera = falso
		FinSi
		i = i + 1
		j = j + 1
	finMientras
	
	j=tam-1
	i=0
	
	Mientras i < tam-1 y bandera == verdadero
		si arreglo[i,j] <> arreglo[i+1,j-1]
			bandera = falso
		FinSi
		i = i + 1
		j = j - 1
	finMientras
	
	validar(bandera == verdadero, "GEN Z")
	validar(bandera <> verdadero, "No se encontro el gen Z")
FinSubProceso

subproceso imprimirArreglo(arreglo, tam)
	definir i, j Como Entero
	para i=0 hasta tam-1
		para j=0 hasta tam-1
			escribir sin saltar arreglo[i,j], " "
		FinPara
		escribir ""
	FinPara
	Escribir ""
FinSubProceso
	