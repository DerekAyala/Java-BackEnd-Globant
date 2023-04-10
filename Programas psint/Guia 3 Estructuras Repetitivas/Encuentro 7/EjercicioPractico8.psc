Algoritmo sin_titulo
	Definir num, contador Como Entero
	
	
	Escribir "Ingresa un numero"
	Leer num
	contador = 1
	
	Mientras trunc(num / 10) <> 0 Hacer
		num = trunc(num/10)
		contador= contador + 1
	FinMientras
	Escribir "Digitos: ", contador
	
FinAlgoritmo
