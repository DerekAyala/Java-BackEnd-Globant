Algoritmo sin_titulo
	Definir menor, mayor, suma, contador, num Como Entero
	mayor = 0
	contador = 0
	suma = 0
	Hacer
		Escribir "Escriba un numero"
		Leer num
		si num <> 0 Entonces
			suma = suma + num
			contador = contador + 1
			si contador == 1 Entonces
				menor = num
			FinSi
			si num < menor Entonces
				menor = num
			FinSi
			si num > mayor Entonces
				mayor = num
			FinSi
		FinSi
	Mientras Que num <> 0
	Escribir "Numero Mayor: ", mayor
	Escribir "Numero Menor: ", menor
	Escribir "Promedio: ", suma/contador
	
FinAlgoritmo
