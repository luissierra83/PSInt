Algoritmo aprueba70
	Definir nota1, nota2, nota3, promedio Como Real
	Escribir "Por favor digita las tres notas (de 1 a 100) de tu semestre:"
	Escribir "Recuerda que solo apruebas si tu promedio es 70 o más"
	Leer nota1, nota2, nota3
	promedio = (nota1 + nota2 + nota3) / 3
	si nota1 >= 1 y nota1 <= 100 y nota2 >= 1 y nota2 <= 100 y nota3 >= 1 y nota3 <= 100 Entonces
		si promedio >= 70 Entonces
			Escribir "Aprobaste!"
		SiNo
			Escribir "Lo siento, reprobaste"
		FinSi
	SiNo
		Escribir "Digita los valores correctos por favor"
 	FinSi
	
FinAlgoritmo
