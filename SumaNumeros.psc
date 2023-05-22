Algoritmo SumaNumeros
    Definir num, suma Como Entero
    Definir op Como caracter
    
    suma = 0
    op = "s"
    
    Mientras (op = "s") O (op = "S") Hacer
        Escribir "Ingrese un número entero positivo:"
        Leer num
        
        Mientras num <= 0 Hacer
            Escribir "Error. Ingrese un número entero positivo:"
            Leer num
        Fin Mientras
        
        suma = suma + num
        
        Escribir "Desea introducir otro número? (s/n)"
        Leer op
        
        Mientras Mayusculas(op) <> "S" y Mayusculas(op) <> "N" Hacer
            Escribir "Error. Ingrese s para sí o n para no:"
            Leer op
        Fin Mientras
    Fin Mientras
    
    Escribir "La suma de los números introducidos es: ", suma
Fin Algoritmo