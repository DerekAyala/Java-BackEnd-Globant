Algoritmo sin_titulo
	Definir multiplo2, multiplo3, i Como Entero
	multiplo2 = 0
	multiplo3 = 0
	Para i = 1 Hasta 10
		si i mod 2 = 0 Entonces
			multiplo2 = multiplo2 + 1
		FinSi
		si i mod 3 = 0 Entonces
			multiplo3 = multiplo3 + 1
		FinSi
	FinPara
	Escribir "multiplos de 2: ", multiplo2
	Escribir "multiplos de 3: ", multiplo3
FinAlgoritmo
