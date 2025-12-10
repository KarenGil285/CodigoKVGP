Funcion resultado=adivina(x,n)
	Si n>x Entonces
		Imprimir "El número marcado es mayor"
		resultado=false
	SiNo
		Si n<x Entonces
			Imprimir "El número marcado es menor"
			resultado=false
		SiNo
			Imprimir "El número marcado es igual ", " Bien hecho"
			resultado=true
		Fin Si
	Fin Si
Fin Funcion
Algoritmo taller1
	x=Azar(50)+1
	imprimir x
	imprimir "Adivina el número de 1 a 50"
	intentos=5
	Mientras intentos>0 y intentos<= 5 hacer
		leer a
		intentos=intentos-1
		z=adivina(x,a)
		Si a==x y z==true Entonces
		    intentos=6
	    sino
			imprimir "Tienes ", intentos, " Intentos"
		Fin Si
	Fin Mientras
	Si x<>a Entonces
		imprimir "Agotaste los intentos, gracias"
	FinSi
FinAlgoritmo