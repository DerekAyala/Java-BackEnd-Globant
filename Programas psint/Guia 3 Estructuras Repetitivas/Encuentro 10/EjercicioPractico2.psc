Algoritmo sin_titulo
	Definir i,j, num Como Entero
	Escribir "Ingresa el tamaño del cuadrado"
	Hacer
		Leer num
	Mientras Que num < 1 
	
	Para i=1 Hasta num Con Paso 1 Hacer
		Para j=1 Hasta num Con Paso 1 Hacer
			si i > 1 y i < num y j > 1 y j < num Entonces
				Escribir Sin Saltar "  "
			SiNo
				Escribir Sin Saltar "* "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
