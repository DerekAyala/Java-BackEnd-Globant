Algoritmo sin_titulo
	definir frase Como Caracter
	Definir tamanho, i Como Entero
	
	Escribir "Escriba una frase"
	Leer frase
	tamanho = Longitud(frase)
	para i = tamanho-1 Hasta 0 Hacer
		Escribir Sin Saltar SubCadena(frase,i,i) + " "
	FinPara
	Escribir ""
FinAlgoritmo
