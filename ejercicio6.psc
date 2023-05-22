Algoritmo ejercicio6
	Definir matriz, num, card como entero
	x=1
	mientras  x = 1 Hacer
	Escribir "Ingresar el tamaño de la matris entre 1 y 9"
	Leer card
	si car > 0 y car < 10 Entonces
		Dimension matriz(card,card)
		llenar(matriz, card)
		ver(matriz, card)
		suma(matriz, card)
	SiNo
		Escribir "El numero ingresado no corresponde al rango"
		x = 2
	FinSi
	FinMientras
	
FinAlgoritmo

SubProceso llenar(matriz, card)
	Definir i, j Como Entero
	Para i<-0 Hasta card-1 Con Paso 1 Hacer
		Para j<-0 hasta card-1 Con Paso 1 Hacer
			Hacer
				Escribir "Ingresar digito entre 1 y 9"
				Leer matriz(i,j)
			Mientras Que matriz(i,j)<1 y matriz(i,j)>9
		Fin Para
	Fin Para
FinSubProceso

SubProceso ver(matriz, card)
	Definir i, j Como Entero
	Para i<-0 Hasta card-1 Con Paso 1 Hacer
		Para j<-0 hasta card-1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[i,j] " "
		Fin Para
		Escribir " "
	Fin Para
FinSubProceso

SubProceso suma(matriz, card)
	Definir i, j, sum1, sum2, cont Como Entero
	sum1 = 0
	Para i<-0 Hasta card-1 Con Paso 1 Hacer
		Para j<-0 hasta card-1 Con Paso 1 Hacer
			si i = 0 Entonces
				sum1 = sum1 + matriz(i,j)
			FinSi
			
		Fin Para
	Fin Para
	
FinSubProceso

