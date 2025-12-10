Funcion resultado <- mayor (a,b)
	Si a>b Entonces
		resultado=a
	SiNo
		Si b>a Entonces
			resultado=b
		SiNo
			Si b=a Entonces
				resultado=0
			Fin Si
		Fin si
	Fin Si
Fin Funcion
Funcion resultado <- menor (a,b)
	Si a>b Entonces
		resultado=b
	SiNo
		Si b>a Entonces
			resultado=a
		SiNo
			Si b=a Entonces
				resultado=0
			Fin Si
		Fin si
	Fin Si
Fin Funcion
Funcion resultado= MCD(a,b)
	Mientras a mod b<>0 hacer 
		x=a
		a=b
		b=x mod b
	FinMientras
	resultado=b
FinFuncion
Funcion resultado=mcm(a,b)
	x=MCD(a,b)
	resultado=(a*b)/x
FinFuncion
Algoritmo Taller1
	imprimir "Ingrese números (Términe con un negativo)"
	Leer n1
	leer n2
	a=mayor (n1,n2)
	b=menor (n1,n2)
	si a>b Entonces
		m=mcm(a,b)
	sino
		Si a=b Entonces
			m=n1
		FinSi
	FinSi
	Repetir
		leer c
		x=c
		Si x>0 Entonces
			m=mcm(m,x)
		Fin Si
	Hasta Que x<0
	imprimir "El mcm es:", m
FinAlgoritmo
