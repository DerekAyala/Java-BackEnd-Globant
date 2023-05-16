Algoritmo sin_titulo
	definir ventas, tam como entero
	definir zonas como caracter
	tam = 5
	dimension ventas[4, tam], zonas[tam]
	
	obtenerZonas(zonas,tam)
	optenerVentas(ventas, zonas,tam)
	imprimirVentass(ventas, zonas,tam)
FinAlgoritmo

subproceso optenerVentas(ventas por referencia, zonas,tam)
	definir i,j, venta Como Entero
	para i=0 hasta 3
		Escribir "Vendedor ", i+1
		para j=0 hasta tam-1
			Escribir zonas[j]
			leer venta
			//venta = aleatorio(10, 90)
			ventas[i,j] = venta
		FinPara
		escribir ""
	FinPara
FinSubProceso

subproceso obtenerZonas(zonas por referencia, tam)
	zonas[0] = "NOR"
	zonas[1] = "SUR"
	zonas[2] = "EST"
	zonas[3] = "OES"
	zonas[4] = "CEN"
FinSubProceso

subproceso imprimirVentass(ventas, zonas,tam)
	definir i,j, semanaTotal, semanaVendedor Como Entero
	dimension semanaTotal[tam],semanaVendedor[tam]
	
	para i= 0 hasta tam-1
		semanaTotal[i] = 0
		semanaVendedor[i] = 0
	FinPara
	
	para i=0 hasta 3
		para j=0 hasta tam-1
			semanaVendedor[i] = semanaVendedor[i] + ventas[i,j]
			semanaTotal[j] = semanaTotal[j] + ventas[i,j]
		FinPara
		semanaVendedor[4] = semanaVendedor[4] + semanaVendedor[i]
	FinPara
	
	Escribir "TOTAL DE VENTAS POR ZONAS"
	para i=0 hasta tam-1
		Escribir zonas[i], ": ", semanaTotal[i]
	FinPara
	
	escribir ""
	
	Escribir "TOTAL DE VENTAS POR VENDEDOR"
	para i=0 hasta 3
		Escribir "VENDEDOR ", i+1,": ", semanaVendedor[i]
	FinPara
	
	escribir ""
	
	Escribir "TOTAL DE VENTAS DE TODOS LOS VENDEDORES"
	Escribir semanaVendedor[4]
FinSubProceso