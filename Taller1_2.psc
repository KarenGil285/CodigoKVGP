Funcion asterisco (n)
	Para c=1 Hasta n Con Paso 1 Hacer
		imprimir "*" Sin Saltar
	Fin Para
	
Fin Funcion

Algoritmo taller
	imprimir "Longitud piramide"
	Leer n
	z=1
	Para i=1 Hasta n Con Paso 1 Hacer
		asterisco(z)
		z=z+2
		imprimir ""
	Fin Para
FinAlgoritmo
