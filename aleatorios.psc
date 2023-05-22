//Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios. Después,
//hacer una función que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
//función debe devolver el resultado de está validación, para mostrar el mensaje en el
//algoritmo. Nota: recordar el uso de las variables de tipo lógico.
Algoritmo aleatorios
	Definir arreglo1, arreglo2, i Como Entero
	Definir igualdad Como Logico
	i=0
	Dimension arreglo1(9)
	Dimension arreglo2(9)
	sonIguales(i,arreglo1,arreglo2,igualdad)
	Escribir "¿Todos sus valores son iguales?"
	Escribir "La respuesta es:", igualdad
FinAlgoritmo

SubProceso sonIguales (i Por Valor,arreglo1 Por Referencia, arreglo2 Por Referencia, igualdad Por Referencia)
	para i=0 Hasta 8 Hacer
		arreglo1(i)=aleatorio(1,9)
		arreglo2(i)=aleatorio(1,9)
	FinPara
	para i=0 Hasta 8 Hacer
		si arreglo1(i) == arreglo2(i) Entonces
			igualdad = Verdadero
		SiNo
			igualdad = Falso
		FinSi
	FinPara
FinSubProceso
	