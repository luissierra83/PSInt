Algoritmo descuentoSeptOctNov
	Definir mes, mesfix Como Caracter
	Definir compra, descuento Como Real
	Escribir "Vamos a definir el valor de tu compra teniendo en cuenta que si"
	Escribir "la realizaste en septiembre, octubre o noviembre tienes un 10% de descuento"
	Escribir "por favor digita el mes en el cual efectuaste la compra"
	Leer mes
	Escribir "Por favor digita el valor de la compra realizada"
	Leer compra
	descuento = compra * 0.1
	mesfix = Minusculas(mes)
	si mesfix == "septiembre" o mesfix == "octubre" o mesfix == "noviembre" Entonces
		Escribir "Aplicas al descuento, el costo de tu compra es de $", compra - descuento
	SiNo
		Escribir "Lo siento, no aplicas a descuento, tu compra es de $", compra
	FinSi
FinAlgoritmo
