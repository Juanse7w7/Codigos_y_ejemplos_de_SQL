Algoritmo ClasificadorNumero
    Escribir "Este algoritmo clasifica si un número es positivo, negativo o neutro."
    Escribir "Escriba un número:"
    Leer num
	
    Si num > 0 Entonces
        Escribir "El número ", num, " es positivo."
    Sino 
		Si num < 0 Entonces
			Escribir "El número ", num, " es negativo."
		Sino
			Escribir "El número ", num, " es neutro."
		Fin Si
	Fin Si
FinAlgoritmo
