Algoritmo sin_titulo
	definir cantidadEmail, solicitudesEjecutivos, solicitudesEmergencia Como Entero
	cantidadEmail = 6
	solicitudesEjecutivos = 3
	solicitudesEmergencia = 2
	Escribir "Iniciar sesion con usuario de administrados para ver los informes de marketing"
	
	Escribir "Completando la hoja de ingresos mensuales"
	
	si solicitudesEmergencia < 0 Entonces
		Escribir "Realizando Solicitudes de emergencia"
	FinSi
	si cantidadEmail < 10 Entonces
		Escribir "Checando si hay solicitudes de ejecutivos"
		si solicitudesEjecutivos > 0 Entonces
			Escribir "Realizando Solicitudes de ejecutivos"
		FinSi
	FinSi
	si solicitudesEjecutivos > 0 Entonces
		Escribir "Realizando Solicitudes de ejecutivos"
	FinSi
	Escribir "Contestando Correos de bandeja de entrada"
	Escribir "Enviar correo de actualizacion de termino de solicitudes"
	Escribir "Regar planta"
	Escribir "Apagar computadora"
FinAlgoritmo
