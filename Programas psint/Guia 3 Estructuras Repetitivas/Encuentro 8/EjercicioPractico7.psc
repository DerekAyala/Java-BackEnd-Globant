Algoritmo sin_titulo
	definir numAzar, num Como Entero
	numAzar = azar(10) + 1
	Hacer
		Escribir "Adivina el numero"
		Leer num
		si num < numAzar Entonces
			Escribir "El numero es mayor"
		FinSi
		si num > numAzar Entonces
			Escribir "El numero es menor"
		FinSi
	Mientras Que num <> numAzar
FinAlgoritmo
