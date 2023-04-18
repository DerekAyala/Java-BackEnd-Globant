Algoritmo sin_titulo
	definir rad, resultado Como Real
	
	Escribir "Ingresa el radio del circulo"
	leer rad
	resultado = AreaCirculo(rad)
	Escribir "El area del circulo es: ", resultado
	
FinAlgoritmo

funcion area = AreaCirculo(radio)
	Definir area Como Real
	area = pi * (radio*radio)
FinFuncion
