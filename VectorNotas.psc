Algoritmo VectorNotas
	Definir notas,i como Entero
	Dimension notas[100]
	Definir deficientes, regulares, buenos, excelentes como Entero
	Para i=1 hasta 100 hacer
		notas[i] = Aleatorio(0,20)
		Si notas[i]>=0 Y notas[i]<=5 entonces
			deficientes = deficientes + 1
		FinSi
			Si notas[i]>=6 Y notas[i]<=10 entonces
				regulares = regulares + 1
			FinSi
			
				Si notas[i]>=11 Y notas[i]<=15 entonces
					buenos = buenos + 1
				FinSi
				
					Si notas[i]>=16 Y notas[i]<=20 entonces
						excelentes = excelentes + 1
				FinSi

	FinPara
				Escribir "Deficientes: ", deficientes
				Escribir "Regulares: ", regulares
				Escribir "Buenos: ", buenos
				Escribir "Excelentes: ", excelentes
FinAlgoritmo

