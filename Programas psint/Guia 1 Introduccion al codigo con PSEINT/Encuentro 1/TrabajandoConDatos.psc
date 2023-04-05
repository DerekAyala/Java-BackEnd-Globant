Algoritmo TrabajandoConDatos
	Definir edad1,edad2 Como Entero
	Definir promedio Como Real
	definir apellido como caracter
	definir iguales, mayorDeEdad Como Logico
	Escribir "Ingrese el apellido de la familia y luego las 2 edades de los hermanos"
	leer apellido
	leer edad1,edad2
	
	promedio = (edad1 + edad2)/2
	Escribir "El promedio de la familia ", apellido, ' es ', promedio
	
	Escribir "Edad 1 (",edad1," años) menor al promedio ? ", edad1 > promedio
	Escribir "Edad 2 (",edad2," años) menor al promedio ? ", edad2 > promedio
	
	iguales = (edad1 == edad2)
	
	Escribir "Tienen la misma edad? ", iguales
	
	mayorDeEdad = (edad1 > 18) o (edad2 >18)
	Escribir "Al menos uno es mayor de edad? ", mayorDeEdad
	
FinAlgoritmo
