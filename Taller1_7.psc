Funcion resultado <- mes (m)
	Segun m Hacer
		1:
			resultado= "Enero"
		2:
			resultado= "Febrero"
		3:
			resultado= "Marzo"
		4:
			resultado= "Abril"
		5:
			resultado= "Mayo"
		6:
			resultado= "Junio"
		7:
			resultado= "Julio"
		8:
			resultado= "Agosto"
		9:
			resultado= "Septiembre"
		10:
			resultado= "Octubre"
		11:
			resultado= "Noviembre"
		De Otro Modo:
			resultado= "Diciembre"
	Fin Segun
Fin Funcion
Funcion resultado <- bisiesto (a)
	b=a mod 4
	c=a mod 100
	d=a mod 400
	Si b==0 y d<>0 o d==0 Entonces
		resultado=1
	SiNo
		resultado=0
	FinSi
Fin Funcion
Funcion verifica=verifica_año (a)
	Si a<0 entonces
		verifica=0
	Sino
		verifica=1
	FinSi
FinFuncion
Funcion verifica=verifica_mes (m)
	Si m<1 o m>12 entonces
		verifica=0
	Sino
		verifica=1
	FinSi
FinFuncion
Funcion verifica=verifica_dia (d,m,a)
	Si m==4 o m==6 o m==9 o m==11  Entonces
		Si d<1 o d>30 Entonces
			verifica=0
		SiNo
			verifica=1
		Fin Si
	SiNo
		Si m==1 o m==3 o m==5 o m==7 o m==8 o m==10 o m==12 Entonces
			Si d<1 o d>31 Entonces
				verifica=0
			SiNo
				verifica=1
			Fin Si
		SiNo
			
			Si m==2 Entonces
				yearbi=bisiesto(a)
				Si yearbi==1 Entonces
					Si d>=1 y d<=29 Entonces
						verifica=1
					Fin Si
				SiNo
					Si d>=1 y d<=28 Entonces
						verifica=1
						sino
							verifica=0
						fin Si 
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinFuncion
Algoritmo Punto7
	Imprimir "Día " Sin Saltar
	leer d
	Imprimir "Mes " Sin Saltar
	leer m
	Imprimir "Año " Sin Saltar
	leer a
	x=bisiesto(a)
	w=verifica_año(a)
	z=verifica_mes(m)
	v=verifica_dia(d,m,a)
	Si w=1 y z=1 y v=1 Entonces
		p=mes(m)
		Imprimir "Fecha: ", d," ", p," ",a
	SiNo
		Imprimir "Error Fecha invalida"
	Fin Si

	
FinAlgoritmo
