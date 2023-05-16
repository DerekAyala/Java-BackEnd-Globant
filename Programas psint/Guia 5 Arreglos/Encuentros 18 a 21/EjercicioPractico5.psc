Algoritmo sin_titulo
	definir vector, i, tam, num, mayor como entero
	
	Escribir "Ingresar tamaño"
	Leer tam
	
	dimension vector[tam]
	
	para i=0 hasta tam -1
		Escribir "Ingresa un numero para ingresarlo"
		Leer num
		vector[i] = num
	FinPara
	mayor = calcular(vector, tam)
	Escribir mayor
FinAlgoritmo

funcion mayor = calcular(vector, tam)
	definir mayor, i Como Entero
	mayor = 0
	para i=0 hasta tam -1
		si mayor < vector[i]
			mayor = vector[i]
		FinSi
	FinPara
finfuncion
	