Algoritmo sin_titulo
	definir minimo, maximo, num, suma Como Entero
	Escribir "Ingresa el minimo"
	Leer minimo
	Escribir "Ingresa el maximo"
	leer maximo
	
	Escribir "Ingresa un numero"
	Leer num
	
	suma = 0
	
	Mientras num >= minimo y num <= maximo Hacer
		suma = suma + num
		Escribir "Ingresa otro numero"
		Leer num
	FinMientras
	Escribir "La suma de los numeros dentro del rango es: ", suma
	
FinAlgoritmo
