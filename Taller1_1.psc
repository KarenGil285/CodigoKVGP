Funcion resultado=residuo(n1)
	x=n1 mod 2
	resultado=x
Fin Funcion
Funcion resultado=punto1(n)
	x= residuo(n)
	z=0
	Si x==0 Entonces
		f=n
		Imprimir "Los números son"
		Para c=1 Hasta n Con Paso 1 Hacer
			f=f+2
			z=z+f
			imprimir f
		Fin Para
	SiNo
		f=n+1
		imprimir "los números son:"
		Para c=1 Hasta n Con Paso 1 Hacer
			z=z+f
			imprimir f
			f=f+2
		Fin Para
	Fin Si
	Imprimir "La suma es:"
	resultado=z
Fin Funcion

Algoritmo Taller1
	imprimir "Hola ingresa los N números para la suma"
	leer n
	Imprimir punto1(n)
FinAlgoritmo