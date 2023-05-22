//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.
Algoritmo ej1Guia5
	Definir matriz, i, j, pos, var Como Entero
	Escribir "Vamos a rellenar una matriz de 3x3"
	Dimension matriz(3,3)
	para pos=0 Hasta 2 Hacer
		Para i=0 Hasta 2 Hacer
			Escribir "Digita para la posición: (",pos,",",i,")"
			Leer var
			Matriz(pos,i)= var
		FinPara
	FinPara
	Escribir "La matriz que escribiste es:"
	Para i=0 Hasta 2
		para j=0 Hasta 2
			Escribir sin saltar matriz(i,j)
		FinPara
		Escribir "  "
	FinPara
FinAlgoritmo
