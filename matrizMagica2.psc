Algoritmo matrizMagica2
	Definir matriz, matriz2,matriz3, matriz4,i, var1,var2,suma, sumaX, pos,sumadiag1, sumadiag2 Como Entero
	Definir pruebah, pruebav, pruebad, resultado Como Logico
	var2 = 0
	sumaX = 0
	sumadiag1=0
	sumadiag2=0
	Escribir "Vamos a construir una matriz mágica"
	Escribir "Es decir que la suma de sus filas, columnas y diagonales sea la misma."
	Escribir "Primero define el tamaño de la matriz"
	Hacer
		Escribir "Por favor escribe un valor entre 2 y 9"
		Leer var1
	Mientras Que var1<1 o var1 > 9 
	Dimension matriz(var1,var1)
	Dimension matriz2(var1)
	Dimension matriz3(var1)
	Dimension matriz4(var1)
	Escribir "Tu matriz es de ",var1," x ",var1
	Escribir "Ahora vamos a rellenar cada posición"
	//para rellenar la matrix
	para pos=0 Hasta var1-1 Hacer
		Para i=0 Hasta var1-1 Hacer
			suma=0
			Escribir "Digita para la posición: (",pos,",",i,")"
			Leer var2
			Matriz(pos,i)= var2
		FinPara
	FinPara
	//para sumar filas
	Para pos=0 Hasta var1-1 Hacer
		para i=0 Hasta var1-1 Hacer
			sumaX = sumaX + Matriz(pos,i)
		FinPara
		matriz2(pos) = sumaX
		sumaX=0
	FinPara
	Escribir matriz2(1)
	//para sumar columnas
	Para pos=0 Hasta var1-1 Hacer
		para i=0 Hasta var1-1 Hacer
			sumaX = sumaX + Matriz(i,pos)
		FinPara
		matriz3(pos) = sumaX
		sumaX=0
	FinPara
	Escribir matriz3(0)
	//para sumar diagonal principal
	Para pos=0 Hasta var1-1 Hacer
			sumadiag1 = sumadiag1 + Matriz(pos,pos)
	FinPara
	Escribir sumadiag1
	//para sumar diagonal inversa
	Para pos=0 Hasta var1-1 Hacer
		sumadiag2 = sumadiag2 + Matriz(pos,(var1-1)-pos)
	FinPara
	Escribir sumadiag2
	//comparar filas
	para pos=0 hasta var1-1 Hacer
		var2 = matriz2(pos)
		para pos= 1 Hasta var1-1 Hacer
			si var2 == matriz2(pos) Entonces
				pruebah=Verdadero
			SiNo
				pruebah=falso
			FinSi
		FinPara
	FinPara
	//comparar columnas
	para pos=0 hasta var1-1 Hacer
		var2 = matriz3(pos)
		para pos= 1 Hasta var1-1 Hacer
			si var2 == matriz3(pos) Entonces
				pruebav=Verdadero
			SiNo
				pruebav=falso
			FinSi
		FinPara
	FinPara
	//comparar diagonales
	Si sumadiag1==sumadiag2 Entonces
		pruebad = Verdadero
	SiNo
		pruebad = falso
	FinSi
	
	//salida
	Si pruebad == pruebah y pruebad == pruebav Entonces
		resultado=Verdadero
	SiNo
		resultado=falso
	FinSi
	
	Limpiar Pantalla
	Escribir "Es una matriz mágica?"
	Escribir resultado
	
FinAlgoritmo

