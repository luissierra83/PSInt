Algoritmo diaAnteriorESTESI

//	Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//		Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha
//			representada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede
//			asumir que dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para
//				los valores dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.
	
	Definir dia, mes, ano Como entero
	Escribir "Escriba el día: "
	Leer dia 
	
	Escribir "Escriba el mes en formato numérico. (ej: Junio = 6)"
	leer mes 
	
	Escribir "Escriba el año: "
	Leer ano
	
	si dia <> 1 Entonces
		Escribir "El día anterior al introducido es: " dia-1, "/", mes, "/", ano
	SiNo
		si dia = 1 y mes<>1 Entonces
			Escribir "El día anterior al introducido es: " 31, "/", mes-1,"/", ano 
		SiNo
			si dia = 1 y mes = 3 
				Escribir "El día anterior al introducido es: " 28, "/", mes-1,"/", ano
			sino 
				si dia = 1 y mes = 5
					Escribir "El día anterior al introducido es: " 30, "/", mes-1,"/", ano 
				SiNo
					si dia = 1 y mes = 7
						Escribir "El día anterior al introducido es: " 30, "/", mes-1,"/", ano
					SiNo
						si dia = 1 y mes = 10
							Escribir "El día anterior al introducido es: " 30, "/", mes-1,"/", ano
						SiNo
							si dia = 1 y mes = 12
								Escribir "El día anterior al introducido es: " 30, "/", mes-1,"/", ano
							SiNo
								si dia = 1 y mes = 1
									Escribir "El día anterior al introducido es: " 3, "/",12,"/", ano-1 
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			
		FinSi
		
	FinSi
	
	
FinAlgoritmo
