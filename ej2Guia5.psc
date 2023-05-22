//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.
Algoritmo ej2Guia5
	Definir matriz, i, j, var1, ia, ib como enteros
	Dimension matriz(5,5)
	ia=0
	ib=0
	para i=0 hasta 4 Hacer
		para j=0 Hasta 4 Hacer
			matriz(i,j)=aleatorio(1,100)
		FinPara
	FinPara
	Hacer
		Escribir "Escribe un número entre 1 y 100, si está en nuestra matríz te lo diremos:"
		Leer var1
	Mientras Que var1<1 o var1>100 
	para i=0 Hasta 4 Hacer
		para j=0 Hasta 4 Hacer
			si matriz(i,j) == var1 Entonces
				ia=i
				ib=j
			FinSi
		FinPara
	FinPara
	Si ia<>0 Entonces
		Escribir "Tu número está en la posición: (",ia,",",ib,")"	
	SiNo
		Escribir "Lo siento tu número no esta en la matriz"
	FinSi
	

FinAlgoritmo
