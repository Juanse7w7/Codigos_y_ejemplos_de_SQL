Algoritmo sin_titulo
	Definir cantidaralumnos, avance Como Entero;
	Definir nota,acumulador, promedio Como Real;
	Definir contarAprobados, contarReprobados Como Entero;
	acumulador = 0
	contarAprobados = 0
	contarReprobados = 0
	
	
	Escribir "ingrese la cantidad de alumnos";
	Leer cantidaralumnos;
	Para avance = 1 Hasta cantidaralumnos Con Paso 1 Hacer
		Escribir "ingrese nota: ",avance
		Leer nota;
		acumulador = acumulador + nota;
		si nota >= 4 Entonces
			contarAprobados = contarAprobados +1;
		SiNo
			contarReprobados = contarReprobados +1; 
		FinSi
	FinPara
	promedio = acumulador/cantidaralumnos;
	Escribir "el promedio del curso es: ",promedio;

FinAlgoritmo
