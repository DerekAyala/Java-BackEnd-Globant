Algoritmo sin_titulo
	definir frase, fraseNueva Como Caracter
	fraseNueva = ""
	
	Escribir "Ingresa una frase: "
	Leer frase
	frase = Minusculas(frase)
	vocales(frase,fraseNueva)
	Escribir frase
	Escribir fraseNueva
	
FinAlgoritmo

subproceso vocales(frase, fraseNueva por referencia)
	definir i Como Entero
	definir letra Como Caracter
	
	para i = 0 hasta longitud(frase)-1
		letra = subcadena(frase,i,i)
		segun letra
			"a":
				fraseNueva = concatenar(fraseNueva,"@")
			"e":
				fraseNueva = concatenar(fraseNueva,"#")
			"i":
				fraseNueva = concatenar(fraseNueva,"$")
			"o":
				fraseNueva = concatenar(fraseNueva,"%")
			"u":
				fraseNueva = concatenar(fraseNueva,"*")
			De Otro Modo:
				fraseNueva = concatenar(fraseNueva,letra)
		FinSegun
	FinPara
FinSubProceso
