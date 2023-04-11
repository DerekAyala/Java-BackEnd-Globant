Algoritmo sin_titulo
	Definir suma, num Como entero
	definir op Como Caracter
	suma = 0
	Hacer
		Escribir "Ingresa un numero positivo"
		Hacer
			Leer num
		Mientras Que num < 0
		suma = suma + num
		Escribir "quiere ingresar otro numero SI o NO"
		Leer op
		op = Mayusculas(op)
		Escribir "---"
	Mientras Que op <> "NO"
	Escribir "La suma de los numeros ingresados es: ", suma
FinAlgoritmo
