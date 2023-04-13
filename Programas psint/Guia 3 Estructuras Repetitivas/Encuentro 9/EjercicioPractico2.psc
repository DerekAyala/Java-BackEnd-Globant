Algoritmo sin_titulo
	definir frase Como Caracter
	Definir tamanho, i Como Entero
	
	Escribir "Escriba una frase"
	Hacer
		Leer frase
		tamanho = Longitud(frase)
	Mientras Que tamanho < 1
	
	para i = 0 Hasta tamanho-1
		Escribir Sin Saltar SubCadena(frase,i,i) + " "
	FinPara
	Escribir ""
FinAlgoritmo
