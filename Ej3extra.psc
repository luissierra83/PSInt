//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud
Algoritmo Ej3extra
	Definir vectorNom Como Caracter
	definir vectorLon Como Entero
	definir i, n Como Entero
	Escribir "Ingrese el tamaño de los vectores"
	leer n
	Dimension vectorNom(n), vectorLon(n)
	
	para i=0 hasta n-1 Hacer
		Escribir "Ingrese nombre"
		leer vectorNom(i)
		vectorLon(i)=Longitud(vectorNom(i))
	FinPara
	para i=0 hasta n-1 Hacer
		Escribir vectorNom(i), " tiene ", vectorLon(i), " caracteres"
	FinPara
	
	
FinAlgoritmo
