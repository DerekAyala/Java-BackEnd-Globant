Algoritmo sin_titulo
	definir practica, problemas, teorica Como Entero
	definir nombre Como Caracter
	Definir valido Como Logico
	
	Escribir "ingresar el nombre: "
	leer nombre
	
	Mientras nombre <> "" Hacer
		Escribir "Ingresar tu nota de practicas, problemas y la parte teorica"
		Leer practica,problemas,teorica
		valido = practica >= 0 y practica <= 10 y problemas >= 0 y problemas <= 10 y teorica >= 0 y teorica <= 10
		si valido == Verdadero Entonces
			Escribir "Alumn@: ", nombre, " Calificacion: ", (practica * 0.10) + ( problemas * 0.50) + ( teorica * 0.40)
		SiNo
			Escribir "Error: la calificacion va de 0 - 10"
		FinSi
		
		Escribir "ingresar el nombre: "
		leer nombre
	FinMientras
FinAlgoritmo
