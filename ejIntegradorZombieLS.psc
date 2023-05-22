Algoritmo ejIntegradorZombieLS
	Definir key,matriz, vector Como Caracter
	Definir total,error,i,j,m,val, cont,genA, genB Como Entero
	Definir ValEntr Como Logico	
	i=0
	j=0
	genA=0
	genB=0
	Escribir "El apocalipsis Zombie ha comenzado!!"
	Esperar 1 Segundos
	Escribir "Por favor escribe la secuencia que puede detenerlo"
	Escribir "Recuerda que la secuencia solo debe contener A, B, C y D"
	Escribir "y debe ser de 9, 16 o de 1369 caracteres!!"
	Escribir "Tu tranquilo... vamos a ingresar el código en el sistema!"
	Esperar 1 Segundos
		Hacer
		key = "BCAADCCBABCCBABB"
 		Escribir "Vamos a comprobar si tu secuencia es de la longitud correcta"
		Escribir "Si no vuelve a digitar la secuencia"
	Mientras Que (Longitud(key) = 8 o Longitud(key) = 15 o Longitud(key) = 1368)
	total = Longitud(key)
	Dimension matriz(total-1,total-1)
	validEntry(key,i,j,total,ValEntr)
	Escribir "La longitud es correcta! Ahora vamos a analizar los elementos!"	
	Si ValEntr = Falso Entonces
		Escribir "Lo siento! tu secuencia no funciona!  Debes volver a empezar!"
	SiNo
		Escribir "Secuencia aprobada!  Vamos a pasarla a la matriz de prueba!"
		
	FinSi
	Esperar 2 Segundos
	si total=9 Entonces
		m=3
	SiNo	
		si total=16 Entonces
			m=4	
		SiNo
			
			si total=1369 Entonces
				m=37
			FinSi
		FinSi
		
	FinSi
			
	Dimension vector(total)
	para i=0 Hasta total-1 Hacer
		vector(i)=Subcadena(key,i,i)
	FinPara
	Escribir "veamos el vector:"
	Para i=0 Hasta total-1 Hacer
		Escribir sin saltar "[",vector(i), "]"
	FinPara
	Escribir " "
	Escribir "Esta es la matriz:"
	cont=0
	para i=0 Hasta m-1 Hacer
		para j=0 Hasta m-1 Hacer
			matriz(i,j)=vector(cont)
			cont=cont+1
			FinPara
		FinPara
		
	para i=0 Hasta m-1
		para j=0 Hasta m-1 Hacer
			Escribir Sin Saltar "[",matriz(i,j),"]"
		FinPara
		Escribir " "
	FinPara


FinAlgoritmo

Subproceso validEntry(key,i,j,total,ValEntr Por Referencia)
	para i = 0 Hasta total -1
		Si Subcadena(key,i,i) = "A" o Subcadena(key,i,i) = "B" o Subcadena(key,i,i) = "C" o Subcadena(key,i,i) = "D" Entonces
			ValEntr = Verdadero
		SiNo
			ValEntr = Falso
		FinSi
	FinPara	
FinSubProceso

SubProceso comparaDiag (matriz, i,j,m, genA, cont)
	cont=0
	para i=0 Hasta m-1 Hacer
		cont=cont+1
		mientras cont <= m-1 Hacer
			si matriz(i,i) == matriz(cont,cont) Entonces
				genA=3
			SiNo
				genA=2
			FinSi
			
		FinMientras
	FinPara
FinSubProceso

SubProceso comparaDiagInv (matriz, i,j,m, genB, cont)
	cont=0
	para i=0 Hasta m-1 Hacer
		cont=cont+1
		mientras cont <= m-1 Hacer
			si matriz(i,m-i) == matriz(cont,(m-1)-cont) Entonces
				genB=3
			SiNo
				genB=2
			FinSi
			
		FinMientras
	FinPara
FinSubProceso




	