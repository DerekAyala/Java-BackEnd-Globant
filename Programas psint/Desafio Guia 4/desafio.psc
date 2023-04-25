Algoritmo sin_titulo
	
	menu()
	
FinAlgoritmo

SubProceso menu()
	Definir opcion Como Entero
	Hacer
		imprimirMenu()
		Hacer
			Escribir "Elegir una opcion"
			Leer opcion
			si opcion < 1 o opcion > 9
				Escribir "Opcion invalida"
			FinSi
		Mientras Que opcion < 1 o opcion > 9
		direccionamiento(opcion)
		Escribir "-----------------------------------"
	Mientras Que opcion <> 9
FinSubProceso

SubProceso direccionamiento(opcion)
	Definir largo, alto, ancho, espesor Como Entero
	inicializarVariables(largo,alto, ancho,espesor)
	segun opcion
		1:
			calcularMuro(largo,alto,espesor)
		2:
			calcularViga(largo)
		3:
			calcularColumna(largo)
		4:
			calcularContrapisos(largo,ancho,espesor)
		5:
			calcularTecho(largo,ancho,espesor)
		6:
			calcularPisos(largo,ancho)
		7:
			calcularPintura()
		8:
			calcularIluminacion()
	FinSegun
FinSubProceso

SubProceso calcularMuro(largo Por Referencia, alto Por Referencia, espesor Por Referencia)
	Definir superficie, ladrillos Como Entero
	Definir cemento, arena Como Real
	
	Hacer
		leerEspesor(espesor)
		validarDato(espesor <> 20 y espesor <> 30, "El espesor solo puede ser de 20 o 30")
	Mientras Que espesor <> 20 y espesor <> 30
	leerLargo(largo)
	leerAlto(alto)
	superficie = calcularSuperficie(largo, alto)
	si espesor == 20
		ladrillos = superficie * 90
		cemento = superficie * 10.9
		arena = superficie * 0.09
	SiNo
		ladrillos = superficie * 120
		cemento = superficie * 15.2
		arena = superficie * 0.115
	FinSi
	Escribir "Espesor: ", espesor
	Escribir "Metros Cuadrados del muro: ", superficie
	Escribir "MATERIALES"
	Escribir "Ladrillos: ", ladrillos
	Escribir "Cemento: ", cemento, " kg"
	Escribir "Arena: ", arena, " m3"
FinSubProceso

SubProceso calcularViga(largo Por Referencia)
	leerLargo(largo)
	Escribir "Metros lineal de viga: ", largo
	Escribir "MATERIALES"
	Escribir "Cemento: ", largo * 9, " kg"
	Escribir "Arena: ", largo * 0.02, " m3"
	Escribir "Piedra: ", largo * 0.02, "m2"
	Escribir "Hierro del 10: ", largo * 4, " m"
	Escribir "Hierro del 4: ", largo * 3, " m"
FinSubProceso

SubProceso calcularColumna(largo Por Referencia)
	leerLargo(largo)
	Escribir "Metros lineal de Columna: ", largo
	Escribir "MATERIALES"
	Escribir "Cemento: ", largo * 7.5, " kg"
	Escribir "Arena: ", largo * 0.016, " m3"
	Escribir "Piedra: ", largo * 0.016, "m2"
	Escribir "Hierro del 10: ", largo * 6, " m"
	Escribir "Hierro del 4: ", largo * 3, " m"
FinSubProceso

SubProceso calcularContrapisos(largo Por Referencia, ancho Por Referencia, espesor Por Referencia)
	Definir volumen Como Entero
	leerEspesor(espesor)
	leerAncho(ancho)
	leerLargo(largo)
	
	volumen = calcularVolumen(largo,ancho,espesor)
	Escribir "Metros cubicos de contrapiso: ", volumen
	Escribir "MATERIALES"
	Escribir "Cemento: ", volumen * 105, " kg"
	Escribir "Arena: ", volumen * 0.45, " m3"
	Escribir "Piedra: ", volumen * 0.9, "m3"
FinSubProceso

SubProceso calcularTecho(largo Por Referencia, ancho Por Referencia, espesor Por Referencia)
	Definir resultado Como Entero
	leerEspesor(espesor)
	leerAncho(ancho)
	leerLargo(largo)
	
	resultado = calcularSuperficie(largo,ancho)
	Escribir "Metros cubicos de contrapiso: ", resultado
	Escribir "MATERIALES"
	Escribir "Cemento: ", resultado * 33, " kg"
	Escribir "Arena: ", resultado * 0.072, " m3"
	Escribir "Piedra: ", resultado * 0.072, "m3"
	Escribir "Hierro del 8: ", resultado * 7, " m"
	Escribir "Hierro del 6: ", resultado * 6, " m"
FinSubProceso

SubProceso calcularPisos(largo Por Referencia, ancho Por Referencia)
	Definir resultado Como Entero
	leerAncho(ancho)
	leerLargo(largo)
	
	resultado = calcularSuperficie(largo,ancho)
	Escribir "Metros cubicos de pisos: ", resultado
	Escribir "Metros cubicos de pisos considerando un 10% extra para recortes: ", resultado * 1.10
FinSubProceso

SubProceso calcularPintura()
	Definir superficie Como Entero
	Hacer
		Escribir "Escribe la superficie del muro"
		leer superficie
		validarDato(superficie > 0, "Escribe una superficie valida")
	Mientras Que superficie > 0
	Escribir "Superficie: ", superficie
	Escribir "Litros necesarios: ", superficie / 6
FinSubProceso

SubProceso calcularIluminacion()
	Definir superficie Como Entero
	Hacer
		Escribir "Escribe la superficie de la habitacion"
		leer superficie
		validarDato(superficie > 0, "Escribe una superficie  de habitacion valida")
	Mientras Que superficie > 0
	Escribir "Superficie: ", superficie
	Escribir "Iluminacion: ", superficie * 0.20
FinSubProceso

SubProceso leerLargo(largo Por Referencia)
	Hacer
		Escribir "Escribe el largo"
		leer largo
		validarDato(largo < 0,"Ingresa un numero positivo")
	Mientras Que largo < 0
FinSubProceso

SubProceso leerAlto(alto Por Referencia)
	Hacer
		Escribir "Escribe el Alto"
		leer alto
		validarDato(alto < 0,"Ingresa un numero positivo")
	Mientras Que alto < 0
FinSubProceso

SubProceso leerAncho(ancho Por Referencia)
	Hacer
		Escribir "Escribe el Alto"
		leer ancho
		validarDato(ancho < 0,"Ingresa un numero positivo")
	Mientras Que ancho < 0
FinSubProceso

SubProceso leerEspesor(espesor Por Referencia)
	Hacer
		Escribir "Escribe el Espesor"
		leer espesor
		validarDato(espesor < 0,"Ingresa un numero positivo")
	Mientras Que espesor < 0
FinSubProceso

SubProceso validarDato(condicion,mensaje)
	si condicion
		Escribir mensaje
	FinSi
FinSubProceso
Funcion superficie = calcularSuperficie(largo,alto)
	Definir superficie Como Entero
	superficie = largo * alto
FinFuncion

Funcion volumen = calcularVolumen(largo, ancho, espesor)
	volumen = largo * ancho * espesor
FinFuncion

SubProceso inicializarVariables(largo Por Referencia, alto Por Referencia, ancho Por Referencia,espesor Por Referencia)
	largo = 0
	alto = 0
	ancho = 0
	espesor = 0
FinSubProceso

SubProceso imprimirMenu
	Escribir "Menu"
	Escribir "1.- Calcular muro de ladrillo"
	Escribir "2.- Calcular viga de hormigon"
	Escribir "3.- Calcular clumnas de hormigon"
	Escribir "4.- Calcular contrapisos"
	Escribir "5.- Calcular techo"
	Escribir "6.- Calcular pisos"
	Escribir "7.- Calcular pintura"
	Escribir "8.- Calcular iluminacion"
	Escribir "9.- salir"
FinSubProceso
	