Algoritmo sin_titulo
	definir tipoContrato Como Caracter
	definir comision, salarioFijo, valorHora, CantHoras, horasExtra, ventas, sueldo como real
	Escribir "escribe"
	leer tipoContrato
	segun tipoContrato Hacer
		"a":
			escribir " ingrese el monto total de las ventas de la semana"
			leer ventas
			sueldo = ventas * 0.4
			Escribir "su salario es de $", sueldo
		"b": 
			Escribir "cuanto se paga por hora?"
			leer valorHora
			Escribir "cuántas horas trabajó?"
			leer CantHoras
			Escribir "ingrese monto total de ventas de la semana"
			leer ventas
			
			sueldo=CantHoras*valorHora + ventas*0.25
			
			Escribir  "su salario es de $" , sueldo
		"c":
			Escribir "cuanto se paga por hora?"
			leer valorHora
			Escribir "cuántas horas trabajó?"
			leer CantHoras
			si cantHoras>40 Entonces
				horasExtra = (cantHoras-40)*valorHora*1.5
				sueldo = 40*valorHora + horasExtra
				Escribir "su sueldo es de $", sueldo 
			SiNo
				sueldo = cantHoras* valorHora
				Escribir "su sueldo es de $", sueldo 
			FinSi
		De Otro Modo:
			Escribir "El contrato NO es válido!!"
	FinSegun
	
FinAlgoritmo
