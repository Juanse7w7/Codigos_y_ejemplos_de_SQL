Algoritmo CalculadoraDescuento
    Definir precioProducto, porcentajeDescuento, descuento, precioFinal Como Caracter
	Escribir " Calculadora de descuento "
    Escribir "Ingrese el precio del producto:
    Leer precioProducto
	
    Escribir "Ingrese el porcentaje de descuento:
    Leer porcentajeDescuento
	
    descuento <- precioProducto * (porcentajeDescuento / 100)
    precioFinal <- precioProducto - descuento
	
    Escribir Monto del descuento: ", descuento
    Escribir "Precio final: , precioFinal
FinAlgoritmo
