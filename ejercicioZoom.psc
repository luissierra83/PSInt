Algoritmo ejercicioZoom
	Definir horaEntrada, minutoEntrada Como Entero
	//Bloque de texto explicativo
	Escribir "Hola! A trav�s de este programa vamos a ver tu puntualidad"
	Escribir "Recuerda que la hora oficial de ingreso es a las 19 horas (7 p.m.)"
	Escribir "(Trabajaremos el formato de 24 horas, tenlo en cuenta)"
	
	Escribir "Por favor digita la hora de ingreso (sin minutos):"
	Leer horaEntrada
	Escribir "Ahora ingresa los minutos luego de la hora de ingreso:"
	Leer minutoEntrada
	si horaEntrada >= 0 y horaEntrada <= 24 Entonces
		si horaEntrada == 19 y minutoEntrada <= 15 Entonces
			Escribir "�Llegaste a tiempo! Tienes presente."
		SiNo
			si horaEntrada < 19 Entonces
				Escribir "�Es a�n muy pronto para ingresar! Regresa a las 19 horas"
			SiNo
				si horaEntrada >= 19 o minutoEntrada >= 16 Entonces
					Escribir "Hoy tendr�s tardanza. Recuerda avisarle a tus coaches cuando llegar�s tarde." 
					Escribir "Ma�ana te esperamos a tiempo, tu participaci�n en el equipo es VITAL"
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir "Digita un valor correcto!"
	FinSi
FinAlgoritmo
