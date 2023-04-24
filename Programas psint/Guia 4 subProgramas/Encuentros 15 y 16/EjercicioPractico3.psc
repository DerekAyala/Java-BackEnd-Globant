Algoritmo sin_titulo
	definir n1,n2, cociente, residuo como entero
	
	cociente = 0
	Escribir "Ingresa dos numeros"
	Leer n1,n2
	si n1 < n2 Entonces
		residuo = n1
	sino 
		resta(n1,n2,cociente,residuo)
	FinSi
	
	Escribir "Residuo: ", residuo, " Cociente: ", cociente
FinAlgoritmo

subproceso resta(n1,n2,cociente por referencia, residuo por referencia)
	si n1 >= n2 Entonces
		residuo = n1 - n2
		cociente = cociente + 1
		n1 = residuo
		resta(n1,n2,cociente,residuo)
	FinSi
FinSubProceso
