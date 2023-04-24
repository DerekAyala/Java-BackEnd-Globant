Algoritmo sin_titulo
	definir frase, fraseNueva Como Caracter
	Escribir "Ingresa una frase: "
	Leer frase
	frase = minusculas(frase)
	vocalesRepetidas(frase, fraseNueva)
	Escribir frase
	Escribir fraseNueva
FinAlgoritmo

subproceso vocalesRepetidas(frase, fraseNueva por referencia)
	definir ca,ce,ci,co,cu como entero
	ca = 0
	ce = 0
	ci = 0
	co = 0
	cu = 0
	definir i Como Entero
	definir letra Como Caracter
	fraseNueva = ""
	para i = 0 hasta longitud(frase)-1
		letra = subcadena(frase,i,i)
		compararVocal(letra,fraseNueva,ca,ce,ci,co,cu)
	FinPara
FinSubProceso

subproceso compararVocal(letra, fraseNueva por referencia,ca por referencia,ce por referencia,ci por referencia,co por referencia,cu por referencia)
	segun letra
		"a":
			comparacion(letra, ca,fraseNueva)
			ca = ca + 1
		"e":
			comparacion(letra, ce,fraseNueva)
			ce = ce + 1
		"i":
			comparacion(letra, ci,fraseNueva)
			ci = ci + 1
		"o":
			comparacion(letra, co,fraseNueva)
			co = co + 1
		"u":
			comparacion(letra, cu,fraseNueva)
			cu = cu + 1
		De Otro Modo:
			fraseNueva = concatenar(fraseNueva,letra)
	FinSegun
FinSubProceso

subproceso comparacion(letra, contador,fraseNueva por referencia)
	si contador > 0
		fraseNueva = concatenar(fraseNueva,"")
	SiNo
		fraseNueva = concatenar(fraseNueva,letra)
	FinSi
FinSubProceso
	