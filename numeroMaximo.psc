Algoritmo numeroMaximo
	Definir numMax, numMin, sum, numInit, cont Como Entero
	sum = 0
	numMax = 0
	cont = 0
	numMin = 0
	Hacer
		Escribir "Digite un n�mero:"
		Leer numInit
		cont = cont + 1
		sum = sum + numInit
		
		Mientras numInit > numMax Hacer
			numMax = numInit
		FinMientras
	
	Mientras Que numInit <> 0
	Escribir "El promedio es:", sum/cont
	Escribir "El n�mero m�ximo es:", numMax 
	Escribir "El n�mero m�nimo es:", numMin
FinAlgoritmo
