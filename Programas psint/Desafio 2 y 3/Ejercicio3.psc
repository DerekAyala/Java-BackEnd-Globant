Algoritmo sin_titulo
	Definir usuario, contrasenha,acepta Como Caracter
	Definir login Como Logico
	Definir intentos, saldo, menu, botellas, i, cantidad, peso Como Entero
	
	intentos = 1
	saldo = 0
	login = Falso
	Escribir "Ingresa tu usuario"
	Leer usuario
	
	si usuario == "Albus_D" Entonces
		Escribir "Ingresa tu contraseña"
		Mientras (intentos <= 3 y login <> Verdadero) 
			Leer contrasenha
			si contrasenha == "caramelosDeLimon" Entonces
				login = Verdadero
			SiNo
				Escribir "Contraseña incorrecta"
			FinSi
		FinMientras
		si intentos == 3 Entonces
			Escribir "Intentos acabados"
		FinSi
	SiNo
		Escribir "usuario incorrecto"
	FinSi
	
	Mientras login == Verdadero
		Escribir "Seleccione una opcion"
		Escribir "1- Ingresar botella"
		Escribir "2- Consultar "
		Escribir "3- salir"
		Hacer
			Leer menu
		Mientras Que menu < 1 o menu > 3
		si menu == 1 Entonces
			cantidad = 0
			Escribir "cuantas botellas vas a ingresar"
			Hacer
				Leer botellas
			Mientras Que botellas < 1
			Para i = 1 Hasta botellas Hacer
				peso = Aleatorio(100,3000)
				si peso <= 500 Entonces
					Escribir "Peso: ", peso, " Precio: ", 50
					Escribir "Acepta ? ESCRIBIR SI"
					Leer acepta
					acepta = Mayusculas(acepta)
					si acepta == "SI" Entonces
						saldo = saldo + 50
					SiNo
						Escribir "Devolviendo material"
					FinSi
					
				SiNo
					si peso > 500 y peso < 1500 Entonces
						Escribir "Peso: ", peso, " Precio: ", 125
						Escribir "Acepta ?"
						Leer acepta
						acepta = Mayusculas(acepta)
						si acepta == "SI" Entonces
							saldo = saldo + 125
						SiNo
							Escribir "Devolviendo material"
						FinSi
					SiNo
						Escribir "Peso: ", peso, " Precio: ", 200
						Escribir "Acepta ?"
						Leer acepta
						acepta = Mayusculas(acepta)
						si acepta == "SI" Entonces
							saldo = saldo + 200
						SiNo
							Escribir "Devolviendo material"
						FinSi
					FinSi
				FinSi
			FinPara
		FinSi
		si menu == 2 Entonces
			Escribir "Saldo: ", saldo
		FinSi
		si menu == 3 Entonces
			Escribir "Gracias"
			login = Falso
		FinSi
	FinMientras
	
FinAlgoritmo
