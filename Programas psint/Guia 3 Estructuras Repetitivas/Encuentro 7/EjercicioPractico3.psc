Algoritmo sin_titulo
	Definir num, suma, contador Como Entero
	num = 0
	suma = 0
	contador = 0
	Mientras num <> -1 Hacer
		Escribir "Ingresa un numero a sumar"
		Leer num
		si num <> -1
			suma = suma + num
		contador = contador + 1
		FinSi
	FinMientras
	Escribir "Promedio de los ", contador, " numeros Ingresador: ", suma/contador
FinAlgoritmo
