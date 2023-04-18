Algoritmo sin_titulo
	definir contador, num, i Como Entero
	
	contador = 0
	
	Escribir "Escribe un numero"
	Leer num
	
	Hacer
		num = trunc(num/10)
		contador = contador + 1
	Mientras Que num <> 0
	Escribir "digitos: ", contador
FinAlgoritmo
