Algoritmo sin_titulo
	Definir limite,num,suma Como Entero
	
	Escribir "Ingresa El limite"
	leer limite
	
	suma=0
	
	Mientras suma < limite Hacer
		Escribir "Limite restante: ", limite - suma
		Escribir "Ingresa un numero a sumar"
		leer num
		suma= suma + num
		Escribir "Suma Actual: ", suma
	FinMientras
FinAlgoritmo
