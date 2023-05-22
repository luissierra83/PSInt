Algoritmo ejercicio4
	Definir n Como Caracter
	Definir vector, a_vector, b_vector, c_vector Como Real
	
	Escribir "Indique el tamaño de los vectores"
	Leer vector
	
	Dimension a_vector[vector], b_vector[vector], c_vector[vector]
	
	Hacer
		Limpiar Pantalla
		Escribir "Indique que desea realizar"
		Escribir "A. Llenar vector A"
		Escribir "B. Llenar vector B"
		Escribir "C. Llenar Vector C con la suma de los vectores A y B."
		Escribir "D. Llenar Vector C con la resta de los vectores B y A."
		Escribir "E. Mostrar vectores"
		Escribir "F. Salir"
		Leer n
		
		Segun Mayusculas(n)
			"A":
				Limpiar Pantalla
				Escribir "Llenando vector A..."
				fillVector(a_vector, vector)
				Esperar 2 Segundos
				Escribir "Proceso finalizado. Presione una tecla para continuar."
				Esperar Tecla
				Limpiar Pantalla
			"B":
				Limpiar Pantalla
				Escribir "Llenando vector B..."
				fillVector(b_vector, vector)
				Esperar 2 Segundos
				Escribir "Proceso finalizado. Presione una tecla para continuar."
				Esperar Tecla
				Limpiar Pantalla
			"C":
				Limpiar Pantalla
				Escribir "Realizando operación: C = A + B"
				addVectors(a_vector, b_vector, c_vector, vector)
				Esperar 2 Segundos
				Escribir "Proceso finalizado. Presione una tecla para continuar."
				Esperar Tecla
				Limpiar Pantalla
			"D":
				Limpiar Pantalla
				Escribir "Realizando operación: C = B - A"
				subtractVectors(a_vector, b_vector, c_vector, vector)
				Esperar 2 Segundos
				Escribir "Proceso finalizado. Presione una tecla para continuar."
				Esperar Tecla
				Limpiar Pantalla
			"E":
				Limpiar Pantalla
				Escribir "Indique el vector que desea mostrar (A, B o C)"
				Leer n
				Segun Mayusculas(n)
					"A":
						showVector(a_vector, vector, "A")
					"B":
						showVector(b_vector, vector, "B")
					"C":
						showVector(c_vector, vector, "C")
					De Otro Modo:
						Escribir "La opción ingresada es incorrecta"
				FinSegun
			"F":
				Escribir "Saliendo..."
			De Otro Modo:
				Escribir "La opción ingresada es incorrecta"
		FinSegun
	Mientras Que Mayusculas(n) <> "F"
	
FinAlgoritmo

Funcion fillVector(v, s)
	Definir i Como Entero
	Para i = 0 Hasta s - 1
		v[i] = Aleatorio(-100, 100)
	FinPara
FinFuncion

Funcion addVectors(v1, v2, v3, s)
	Definir i Como Entero
	Para i = 0 Hasta s - 1
		v3[i] = v1[i] + v2[i]
	FinPara
FinFuncion

Funcion subtractVectors(v1, v2, v3, s)
	Definir i Como Entero
	Para i = 0 Hasta s - 1
		v3[i] = v2[i] - v1[i]
	FinPara
FinFuncion

Funcion showVector(v, s, l)
	Definir i Como Entero
	Para i = 0 Hasta s - 1
		Escribir l, "[", i, "]: ", v[i]
	FinPara
	Escribir "Presione una tecla para continuar"
	Esperar Tecla
FinFuncion