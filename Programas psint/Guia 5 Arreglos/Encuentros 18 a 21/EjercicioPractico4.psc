Algoritmo sin_titulo
	Definir opcion Como Caracter
	Definir a, b, c, tam Como Entero
	
	Hacer
		Escribir "Tamaño de los vectores"
		Leer tam
		validar(tam < 1, "Tamaño invalido")
	Mientras Que tam < 1
	
	dimension a[tam]
	dimension b[tam]
	dimension c[tam]
	
	inicializarVectores(a, b, c, tam)
	
	Hacer
		imprimirMenu()
		
		hacer
			Leer opcion
			opcion = Mayusculas(opcion)
			validar(opcion < "A" o opcion > "F", "opcion invalida")
		Mientras Que opcion < "A" o opcion > "F"
		
		segun opcion hacer
			"A":
				opcionA(a, tam)
			"B":
				opcionB(b, tam)
			"C":
				opcionC(c, a, b,tam)
			"D":
				opcionD(c, a, b, tam)
			"E":
				opcionE(a, b, c, tam)
			De Otro Modo:
				Escribir "Gracias"
		FinSegun
	Mientras Que opcion <> "F"
FinAlgoritmo

subproceso opcionA(a por referencia, tam)
	definir i como entero
	
	para i=0 hasta tam-1
		a[i] = Aleatorio(-100,100)
	FinPara
	
FinSubProceso

subproceso opcionB(b por referencia, tam)
	definir i como entero
	
	para i=0 hasta tam-1
		b[i] = Azar(100)
	FinPara
FinSubProceso

subproceso opcionC(c por referencia, a, b,tam)
	definir i como entero
	
	para i=0 hasta tam-1
		escribir a[i] ," + ", b[i], " = ",a[i] + b[i]
		c[i] = a[i] + b[i]
	FinPara
FinSubProceso

subproceso opcionD(c por referencia, a, b, tam)
	definir i como entero
	
	para i=0 hasta tam-1
		escribir a[i] ," - ", b[i], " = ",a[i] - b[i]
		c[i] = a[i] - b[i]
	FinPara
FinSubProceso

subproceso opcionE(a por referencia, b por referencia, c por referencia, tam)
	definir opcion Como Caracter
	Hacer
		Escribir "Eliga cual vector mostrar A, B o C"
		leer opcion
		opcion = mayusculas(opcion)
		validar(opcion < "A" y opcion > "C","Opcion invalida")
	Mientras Que opcion < "A" y opcion > "C"
	segun opcion
		"A":
			mostrarVector(a,tam)
		"B":
			mostrarVector(b,tam)
		"C":
			mostrarVector(c,tam)
	FinSegun
FinSubProceso

subproceso mostrarVector(vector,tam)
	escribir "Entre"
	definir i como entero
	para i=0 hasta tam-1 Hacer
		escribir sin saltar vector[i], " "
	FinPara
	escribir ""
FinSubProceso

subproceso inicializarVectores(a por referencia, b por referencia, c por referencia, tam)
	definir i como entero
	para i=0 hasta tam-1 Hacer
		a[i] = 0
		b[i] = 0
		c[i] = 0
	FinPara
FinSubProceso

SubProceso validar(condicion,mensaje)
	si condicion
		Escribir mensaje
	FinSi
FinSubProceso

subproceso imprimirMenu()
	Escribir "--------------------------------------------"
	Escribir "Menu"
	Escribir "A- Llenar Vector A"
	Escribir "B- Llenar Vector B"
	Escribir "C- Llenar Vector C con la suma de A y B"
	Escribir "D- Llenar Vector C con la resta de A y B"
	Escribir "E- Mostras A, B o C"
	Escribir "F- salir"
	Escribir ""
FinSubProceso
