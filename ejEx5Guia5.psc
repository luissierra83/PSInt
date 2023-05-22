//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
//primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
//deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
//la matriz de la siguiente forma:
//	3 + 5 = 8
//	4 + 3 = 7
//	1 + 4 = 5
//

Algoritmo sin_titulo
	definir matriz, i, j, n Como Entero
	Escribir "ingrese cuantas filas desea que tenga su matriz"
	leer n
	
	Dimension matriz(n,3)
	Escribir "ingrese los números de la matriz"
	para i<-0 hasta n-1 Hacer
		para j<-0 hasta 1 Hacer
			leer matriz(i,j)
		FinPara
		
	FinPara
	
	para i<-0 hasta n-1
		matriz(i,2) = matriz(i,1)+matriz(i,0)
		
	FinPara
	
	para i<-0 hasta n-1 Hacer
		
			Escribir sin saltar "[", matriz(i,0),"] + [" , matriz(i,1),"] = [", matriz(i,2), "]"
			
		Escribir ""
	FinPara
FinAlgoritmo
