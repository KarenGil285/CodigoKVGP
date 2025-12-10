Funcion resultado <-dado(n)
resultado=azar(n)+1
Fin Funcion
Algoritmo Taller
	f=0
	Para c=1 Hasta 50 Con Paso 1 Hacer
		x=dado(6)
		imprimir x, "," Sin Saltar
		Si x==1 Entonces
			f=f+1
		FinSi
	Fin Para
	Imprimir "Numero de veces que sale 1:"
	imprimir f
FinAlgoritmo
