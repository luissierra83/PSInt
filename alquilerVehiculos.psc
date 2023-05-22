Algoritmo alquilerVehiculos
	Definir horas, nafta, Cnafta, Cminutos Como Real
	Escribir "Bienvenido a la plataforma de cobro de Te llevo a todos lados"
	Escribir "Por favor digita la cantidad de horas que usaste el vehículo:"
	Leer horas
	si horas <= 2 Entonces
		Escribir "Tu tarifa es de $400"
	SiNo
		Escribir "Por favor digita la cantidad de galones de nafta usados en el servicio:"
		Leer nafta
		Cnafta = nafta * 40
		Cminutos = (horas * 60) * 5.2
		Escribir "Tu tarifa es de $", Cnafta + Cminutos
	FinSi
	
FinAlgoritmo
