Algoritmo Matriz3x3_Letras
	
	// Definicion de variables y de matriz"
	Definir fil, colum Como Entero;
	definir letra,frase Como Caracter;
	dimension letra[4,4];
	
	//Ingreso de datos
	escribir "ingrese una palabra de 9 caracteres para ingresar en nuestra matriz 3x3"
	leer frase
	escribir " "
	
	para fil <- 1 hasta 3 Hacer
		para colum <- 1 hasta 3 Hacer
			escribir "ingrese el caracter " fil, " " ,colum "de la palabra escogida";
			leer letra[fil,colum]
		FinPara
	FinPara
	
	// Muestra de datos
	escribir " "
	para fil <- 1 hasta 3 Hacer
		para colum <- 1 hasta 3 hacer
			escribir sin saltar letra[fil,colum], " ";
		FinPara
		escribir " ";
	FinPara
	escribir " ";
	escribir "la palabra ordenada es: " frase
FinAlgoritmo
