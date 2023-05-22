Algoritmo ejercicio5
	Definir nino, nina, pnino, pnina, total como Real
	Escribir "Vamos a calcular el porcentaje de niños y niñas en el salón"
	Escribir "             **********             "
	Escribir "Por favor digite el numero de niños:"
	Leer nino 
	Escribir "Por favor digite el número de niñas:"
	Leer nina
	total = nino + nina 
	pnino = (nino * 100) / total 
	pnina = (nina * 100) / total
	Escribir "En el salón hay un total de ", total, " estudiantes"
	Escribir "de los cuales el ", pnino, "% corresponde a los niños"
	Escribir "y el ", pnina, "% corresponde a las niñas"
FinAlgoritmo
