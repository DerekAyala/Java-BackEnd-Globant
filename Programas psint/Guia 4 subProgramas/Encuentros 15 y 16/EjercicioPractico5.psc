Algoritmo sin_titulo
	definir frase, fraseNueva Como Caracter
	fraseNueva = ""
	
	Escribir "Ingresa una frase: "
	Leer frase
	espaciador(frase,fraseNueva)
	Escribir frase
	Escribir fraseNueva
	
FinAlgoritmo

subproceso espaciador(frase, fraseNueva por referencia)
	definir i Como Entero
	definir letra Como Caracter
	
	para i = 0 hasta longitud(frase)-1
		letra = subcadena(frase,i,i)
		si letra == " " o  letra == ","
			fraseNueva = concatenar(fraseNueva,letra)
		sino
			fraseNueva = concatenar(fraseNueva,letra + " ")
		FinSi
	FinPara
FinSubProceso