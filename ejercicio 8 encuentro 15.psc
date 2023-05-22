Algoritmo sin_titulo
//	Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//		Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha
//			representada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede
//			asumir que dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para
//				los valores dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.
	
	definir dia, mes, anio como entero
	escribir "por favor ingrese que dia es hoy"
	leer dia 
	escribir "por favor ingrese que mes es este en formato númerico, por ejemplo mayo=05"
	leer mes 
	escribir "que año es este"
	leer anio
	
	
	ayer(dia,mes,anio)
	
FinAlgoritmo

subproceso ayer(dia,mes,anio)
	
	dia=dia-1
	
//	definir i como entero 
	
//	i=0
	si  dia<1 o dia=0 entonces
		mes=mes-1
		
		si  mes=0 Entonces
			
			mes=12
			anio=anio-1
			
			FinSi
				
			
			Segun mes Hacer
				1,3,5,7,8,10,12:
					dia=31
				4,6,9,11:
					dia=30
				2:
					dia=29
			Fin Segun
		
		Fin si
		escribir" el día de ayer fue " , dia , "/" ,mes, "/", anio "."
		
				

FinSubProceso

	
