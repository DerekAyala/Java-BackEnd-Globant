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
	
	escribir "Ingrese una posicion"
	leer posicion
	
	si posicion <= 19
		si vector[posicion] == "" o vector[posicion] == " "
			vector[posicion] = entrada
			para i=0 hasta 19 Hacer
				Escribir sin saltar vector[i]," "
			FinPara
		SiNo
			escribir "Ocupado"
		FinSi
		escribir ""
	FinSi
FinAlgoritmo
