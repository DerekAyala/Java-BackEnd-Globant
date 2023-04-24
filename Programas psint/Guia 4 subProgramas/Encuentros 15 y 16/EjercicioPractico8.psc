Algoritmo sin_titulo
	definir dia,mes,anio como entero
	
	solicitarDatos(dia,mes,anio)
	
	
	escribir "Dia actual: ", dia,"/",mes,"/",anio
	diaAnterior(dia,mes,anio)
	escribir "Dia anterior: ", dia,"/",mes,"/",anio
FinAlgoritmo

subproceso solicitarDatos(dia por referencia, mes por referencia, anio por referencia)
	Escribir "Escribe el dia"
	leer dia
	
	Escribir "Escribe el mes"
	leer mes
	
	Escribir "Escribe el anio"
	leer anio
FinSubProceso

subproceso diaAnterior(dia por referencia, mes por referencia, anio por referencia)
	si mes == 1 y dia == 1
		dia = 31
		mes = 12 
		anio = anio - 1
	SiNo
		si dia == 1
			dia = 31
			mes = mes - 1
		SiNo
			dia = dia - 1
		FinSi
	FinSi
FinSubProceso
	