Algoritmo notasVerdFals
	Definir nota1, nota2, nota3 Como Real
	Definir Cnota1, Cnota2, Cnota3 Como Logico
	
	Escribir "Por favor escribe tus tres notas, vamos a ver si están en el rango"
	Escribir "Recuerda que el rango correcto es entre 1 y 10"
	Leer nota1, nota2, nota3
	//condicionales
	si nota1 >= 1 o nota1 <=10 Entonces
		Cnota1 = Verdadero
	SiNo
		Cnota2 = Falso
	FinSi
	
	si nota2 >= 1 o nota2 <=10 Entonces
		Cnota2 = Verdadero
	SiNo
		Cnota2 = Falso	
	FinSi
	si nota3 >= 1 o nota3 <=10 Entonces
		Cnota3 = Verdadero
	SiNo
		Cnota3 = Falso	
	FinSi
	// hora de responder desde las variables lógicas
	Si Cnota1 == Verdadero Entonces
		Escribir "La nota 1 es correcta"
	SiNo
		Escribir "La nota 1 es incorrecta"
	FinSi
	Si Cnota2 == Verdadero Entonces
		Escribir "La nota 2 es correcta"
	SiNo
		Escribir "La nota 2 es incorrecta"
	FinSi
	Si Cnota3 == Verdadero Entonces
		Escribir "La nota 3 es correcta"
	SiNo
		Escribir "La nota 3 es incorrecta"
	FinSi
FinAlgoritmo
