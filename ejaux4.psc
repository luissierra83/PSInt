//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20

Algoritmo ej4aux
	Definir estud, i, notas, d Como Entero
	Escribir "Vamos a mostrar los resultados de 100 estudiantes al azar"
	d = 100
	Dimension estud(d)
	Para i=0 Hasta 99 Hacer
		notas = Aleatorio(0, 20)
		Escribir notas
	FinPara
	Segun notas Hacer
		0,5:
			Escribir "Deficiente"
		6,10:
			Escribir "Regulares"
		11,15:
			Escribir "Buenos"
		16,20:
			Escribir "Excelentes"
	Fin Segun
FinAlgoritmo
