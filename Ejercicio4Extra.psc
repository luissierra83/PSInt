//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20

Algoritmo Ejercicio4Extra
	Definir vector, d, i, contadorD, contadorR, contadorB, contadorE como Entero;	
	contadorB = 0;
	contadorD = 0;
	contadorE = 0;
	contadorR = 0;
	d = 100;	
	Dimension  Vector(d)	
	Para i <- 0 Hasta d - 1 Con Paso 1 Hacer
		vector(i) = Aleatorio(0, 20);		
		Si vector(i) <= 5 Entonces
			contadorD = contadorD + 1;
		SiNo
			Si vector(i) >= 6 & vector(i) <= 10 Entonces
				contadorR = contadorR + 1;
			SiNo
				Si vector(i) >= 11 & vector(i) <= 15 Entonces
					contadorB = contadorB + 1;
				SiNo
					Si vector(i) >= 16 & vector(i) <= 20 Entonces
						contadorE = contadorE + 1;
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara	
	Escribir "Habra una cantidad de: " contadorD, " Alumnos Deficientes";
	Escribir "Habra una cantidad de: " contadorR, " Alumnos Regulares";
	Escribir "Habra una cantidad de: " ContadorB, " Alumnos Buenos";
	Escribir "Habra una cantidad de: " ContadorE, " Alumnos Excelentes";
FinAlgoritmo