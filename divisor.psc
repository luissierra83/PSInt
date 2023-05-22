SubProceso  divisionRestas(num Por Valor, divisor Por Valor, cociente Por Referencia, resto Por Referencia)
		cociente = 0
		resto = num
		
		Mientras resto >= divisor Hacer
			resto = resto - divisor
			cociente = cociente + 1
		FinMientras
FinSubProceso
Algoritmo NDV
Definir num, divisor, cociente, resto Como Entero

Escribir "Ingrese el número a dividir: "
Leer num
Escribir "Ingrese el divisor: "
Leer divisor

divisionRestas(num, divisor, cociente, resto)

Escribir "El cociente es: ", cociente
Escribir "El resto es: ", resto

FinAlgoritmo
