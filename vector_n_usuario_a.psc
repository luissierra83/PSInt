Algoritmo vector_n_usuario_a
//	Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
	//	usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
	definir vector, i, suma, n, num1  Como Entero
	definir promedio Como Real
	escribir "ingrese el tama�o del vector"
	leer n
	i=0
	suma=0
	dimension vector(n)
	para i=0 hasta n-1 Hacer
		escribir "ingrese un n�mero entero"
		leer vector(i)
	FinPara
	para i=0 hasta n-1 Hacer
		suma = suma+vector(i)
		escribir suma
	FinPara
	promedio = suma / n
	escribir "el promedio es de los numeros es " promedio
FinAlgoritmo

	