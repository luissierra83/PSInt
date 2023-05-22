//Realizar un programa que permita visualizar el resultado del producto de una matriz de
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//inicializarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se
//realiza la multiplicación entre matrices consultar el siguiente link:
Algoritmo exEj6Guia5
	Definir Matriz, vector, vectorMult, i, j, suma como enteros
	Dimension matriz(3,3)
	Dimension vector(3)
	Dimension vectorMult(3)
	Dimension suma(3)
	Para i=0 Hasta 2 Hacer
		para j=0 hasta 2 Hacer
			matriz(i,j) = Aleatorio(1,9)
		FinPara
	FinPara
	Escribir "Esta es nuestra matriz:"
	Para i=0 Hasta 2 Hacer
		para j=0 hasta 2 Hacer
			Escribir "[",matriz(i,j),"]"
		FinPara
		Escribir""
	FinPara
	Escribir "Ahora vamos a definir un vector de 3 numeros"
	para i=0 Hasta 2 Hacer
		vector(i) = Aleatorio(1,9)
	FinPara
	Escribir "Espera mientras suscede la magia"
	Escribir "Este es nuestro vector:"
	para i=0 Hasta 2 Hacer
		Escribir sin saltar "[",vector(i),"]"
	FinPara
	Escribir "La multiplicación de ambos es:"
	Para i=0 Hasta 2
		Suma(i)=0
		para j =0 Hasta 2
			vectorMult(i)= vector(i)*matriz(1,j)
			suma(i) = suma(i) + vector(i)
		FinPara
	FinPara
	para i=0 Hasta 2 Hacer
		Escribir sin saltar "[",suma(i),"]"
	FinPara
FinAlgoritmo
