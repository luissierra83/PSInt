Algoritmo eureka
	Definir pass Como Caracter
	Definir cont Como Entero
	cont = 0
	Hacer
			Escribir "Por favor digite la contraseña:"
			Leer pass
			cont = cont + 1
	
	Mientras Que pass <> "eureka" y cont < 3
	si pass == "eureka" Entonces
		Escribir "Acceso concedido"
	SiNo
		Escribir "Total de intentos fallido"
	FinSi
	
FinAlgoritmo
