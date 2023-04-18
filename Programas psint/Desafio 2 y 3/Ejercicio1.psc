Algoritmo sin_titulo
	Definir num, i, j Como Entero
	Para i=1 Hasta 5 Hacer
		Escribir "un numero entre 1 y 20"
		Hacer
			Leer num
			si num < 1 o num > 20 Entonces
				Escribir "Favor de ingresar un numero entre 1 y 20"
			FinSi
		Mientras Que num < 1 o num > 20
		Escribir Sin Saltar num , " "
		para j = 1 Hasta num Hacer
			Escribir Sin Saltar "* "
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
