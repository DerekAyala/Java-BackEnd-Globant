Algoritmo sin_titulo
	definir nombre, dia, turno, festivo Como Caracter
	definir horas como entero
	definir jornal como real
	
	Escribir "Cual es tu nombre ?"
	leer nombre
	Escribir "Cual es tu turno ? DIURNO o NOCTURNO"
	validarTurno(turno)
	
	Escribir "dia de la semana ? Lunes - Domingo"
	validarDia(dia,festivo)
	
	Escribir "Horas trabajadas ?"
	validarHoras(horas)
	
	jornal = Calcular(turno,festivo,horas)
	Escribir "El total fue: ", jornal
FinAlgoritmo

funcion jornal = Calcular(turno, festivo, horas)
	definir jornal Como Real
	
	si turno == "DIURNO"
		jornal = horas * 90
	sino 
		jornal = horas * 125
	FinSi
	si festivo == "SI"
		si turno == "DIURNO"
			jornal = jornal * 1.10
		sino 
			jornal = jornal * 1.15
		FinSi
	FinSi
FinFuncion

subproceso validarTurno(turno por referencia)
	hacer 
		leer turno
		turno = Mayusculas(turno)
		validar(turno <> "DIURNO" y turno <> "NOCTURNO","DIURNO o NOCTURNO")
	Mientras Que turno <> "DIURNO" y turno <> "NOCTURNO"
FinSubProceso

subproceso validarDia(dia por referencia, festivo por referencia)
	definir diaSemana como logico
	hacer 
		leer dia
		dia = Mayusculas(dia)
		diaSemana = dia <> "LUNES" y dia <> "MARTES" y dia <> "MIERCOLES" y dia <> "JUEVES" Y dia <> "vIERNES" y dia <> "SABADO" y dia <> "DOMINGO"
		validar(diaSemana,"Lunes - Domingo")
	Mientras Que DiaSemana
	
	diafestivo(festivo,dia)
FinSubProceso

subproceso diaFestivo(festivo por referencia, dia por valor)
	Escribir "el dia", Minusculas(dia) " festivo ? Si - No"
	hacer 
		leer festivo
		festivo = Mayusculas(festivo)
		validar(festivo <> "SI" y festivo <> "NO","Si o No")
	Mientras Que festivo <> "SI" y festivo <> "NO"
FinSubProceso

subproceso validarHoras(horas por referencia)
	hacer 
		leer horas
		validar(horas < 1 y horas > 12,"Los turnos son de 12 horas")
	Mientras Que horas < 1 o horas > 12
FinSubProceso

subproceso validar(condicion,mensaje)
	si condicion
		Escribir mensaje
	FinSi
FinSubProceso
