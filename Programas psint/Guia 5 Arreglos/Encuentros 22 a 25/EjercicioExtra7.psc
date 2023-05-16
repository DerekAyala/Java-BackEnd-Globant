Algoritmo sin_titulo
	definir ventas, tam como entero
	definir productos como caracter
	tam = 5
	dimension ventas[tam, tam], productos[tam]
	
	obtenerProductos(productos,tam)
	imprimirProductos(productos, tam)
	optenerVentas(ventas, productos,tam)
	imprimirVentass(ventas, productos,tam)
FinAlgoritmo

subproceso optenerVentas(ventas por referencia, productos,tam)
	definir i,j, venta Como Entero
	para i=0 hasta tam-1
		Escribir "Ventas del producto ", productos[i], " por dia"
		para j=0 hasta tam-1
			//Escribir "Dia ", j+1
			//leer venta
			venta = aleatorio(10, 50)
			ventas[i,j] = venta
		FinPara
		escribir ""
	FinPara
FinSubProceso

subproceso obtenerProductos(productos por referencia, tam)
	definir i Como Entero
	definir producto como caracter
	para i=0 hasta tam-1
		Escribir "Nombre del ", i+1," producto"
		leer producto
		productos[i] = producto
	FinPara
FinSubProceso

subproceso imprimirProductos(productos, tam)
	definir i Como Entero
	para i=0 hasta tam-1
		Escribir "Nombre del ", i+1," producto: ", productos[i]
	FinPara
	escribir ""
FinSubProceso

subproceso imprimirVentass(ventas, productos,tam)
	definir i,j, semanaTotal, semanaProducto, fav Como Entero
	dimension semanaTotal[tam+1], fav[tam+1]
	
	para i= 0 hasta tam
		fav[i] = 0
		semanaTotal[i] = 0
	FinPara
	
	
	Escribir "  Lu| Ma| Mi| Ju| Vi| Total"
	para i=0 hasta tam-1
		escribir sin saltar "", productos[i], " "
		semanaProducto = 0
		para j=0 hasta tam-1
			semanaProducto = semanaProducto + ventas[i,j]
			semanaTotal[j] = semanaTotal[j] + ventas[i,j]
			si ventas[i,j] > fav[j]
				fav[j] = ventas[i,j]
				fav[5] = fav[5] + ventas[i,j]
			FinSi
			Escribir sin saltar ventas[i,j], "| "
		FinPara
		Escribir sin saltar semanaProducto
		semanaTotal[5] = semanaTotal[5] + semanaProducto
		escribir ""
	FinPara
	
	Escribir sin saltar "t "
	para i= 0 hasta tam
		escribir sin saltar semanaTotal[i], " "
	FinPara
	
	escribir ""
	Escribir sin saltar "f "
	para i= 0 hasta tam
		escribir sin saltar fav[i], "  "
	FinPara
	escribir ""
FinSubProceso
