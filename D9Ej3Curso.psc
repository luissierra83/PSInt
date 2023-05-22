Algoritmo D8Ej3Curso
	
	///Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
	///N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
	///Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves
	///de sus estudiantes:
		//? Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
		//reprueba el curso si tiene una nota final inferior a 6.5
		//? Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
		//? La mayor nota obtenida en las exposiciones.
		//? Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
		//El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
		//las 3 notas y calculará todos informes claves que requiere el docente.
	
	
	Definir N,i Como Entero
	Definir int, expo, parc,final,SumPromRep, contPromRep, PromRep como Real
	Definir contPorc, porc75, expoMayor Como Real
	Escribir "Ingrese la cantidad de alumnos"
	Leer N
	
	SumPromRep = 0
	contPromRep = 0
	contPorc = 0
	expoMayor = 0
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir "Para estudiante ",i," nota Intregrador: "
		Leer int
		Escribir "Para estudiante ",i," nota Exposición: "
		Leer expo
		Escribir "Para estudiante ",i," nota Parcial: "
		Leer parc
		
		final = int*0.35 + expo*0.25 + parc*0.4
		Escribir "El promedio final del estudiante ", i, " es ", final
		
		//Calculamos el promedio de los estudiantes que reprobaron el curso.
		Si final < 6.5 Entonces
			SumPromRep = SumPromRep + final
			contPromRep = contPromRep + 1
			PromRep = SumPromRep/contPromRep
		Fin Si
		
		//? Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
		Si final > 7.5 Entonces
			contPorc = contPorc + 1
			porc75 = (contPorc*100)/N
		Fin Si
		
		//? La mayor nota obtenida en las exposiciones.
		si expoMayor < expo Entonces
			expoMayor = expo
			
		FinSi
		
	Fin Para
	
	Escribir "El promedio final de los estudiantes que reprobaron el curso es ", PromRep
	Escribir "el porcentaje mayor a 7.5 es de: " porc75 " %"
	Escribir "la nota mayor de exposición es de: " expoMayor
	
	
FinAlgoritmo
