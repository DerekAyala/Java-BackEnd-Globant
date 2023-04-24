Algoritmo sin_titulo
	definir frase Como Caracter
	
	Escribir "Ingresa una frase: "
	Leer frase
	ascii(frase)
	
FinAlgoritmo

subproceso ascii(frase)
	definir i Como Entero
	definir letra Como Caracter
	
	para i = 0 hasta longitud(frase)-1
		letra = subcadena(frase,i,i)
		si letra >= "M" y  letra <= "T"
			Escribir "frase"
		finsi
	FinPara
FinSubProceso