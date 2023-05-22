//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
//muestre por pantalla.
Algoritmo extra1guia5
	Definir vec1, vec2, i, f Como Entero
	Dimension vec1(5)
	Dimension vec2(5)
	
	para i=0 Hasta 4 Hacer
		vec1(i) = Aleatorio(1,100) 
		Escribir Sin Saltar vec1(i), " , "
	FinPara
	Escribir "Hola amigos!"
	para f=0 Hasta 4 Hacer
		vec2(f) = Aleatorio(1,100)
		Escribir Sin Saltar vec2(f), " , "
	FinPara
	
	
FinAlgoritmo
