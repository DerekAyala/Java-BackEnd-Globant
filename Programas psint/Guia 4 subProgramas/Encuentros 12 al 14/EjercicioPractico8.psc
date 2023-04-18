Algoritmo sin_titulo
	definir usuario, contra Como Caracter
	definir i como entero
	definir validar Como Logico
	i=3
	
	validar = falso
	
	mientras i > 0 y validar == falso
		Escribir "Turnos restantes: ", i
		Escribir "Ingresa el usuario:"
		Leer usuario
		Escribir "Ingresa la contraseña:"
		Leer contra
		
		validar = Login(usuario,contra,i)
		Escribir ""
	FinMientras
	
	si validar == Verdadero
		Escribir "bienvenido"
	sino
		escribir validar
	FinSi
FinAlgoritmo

funcion validar = Login( usuario,contra, i por referencia)
	definir validar Como logico
	si i > 0
		si usuario == "usuario1"
			si contra == "asdasd"
				validar = verdadero
			SiNo
				Escribir "Fallaste la contraseña"
			FinSi
		SiNo
			escribir "Fallaste en el usuario"
		FinSi
		i = i - 1
	SiNo
		validar = falso
		Escribir "Te quedaste sin turnos"
	FinSi
FinFuncion
