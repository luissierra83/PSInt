Algoritmo SumaNumeros
    Definir num, suma Como Entero
    Definir op Como caracter
    
    suma = 0
    op = "s"
    
    Mientras (op = "s") O (op = "S") Hacer
        Escribir "Ingrese un n�mero entero positivo:"
        Leer num
        
        Mientras num <= 0 Hacer
            Escribir "Error. Ingrese un n�mero entero positivo:"
            Leer num
        Fin Mientras
        
        suma = suma + num
        
        Escribir "Desea introducir otro n�mero? (s/n)"
        Leer op
        
        Mientras Mayusculas(op) <> "S" y Mayusculas(op) <> "N" Hacer
            Escribir "Error. Ingrese s para s� o n para no:"
            Leer op
        Fin Mientras
    Fin Mientras
    
    Escribir "La suma de los n�meros introducidos es: ", suma
Fin Algoritmo