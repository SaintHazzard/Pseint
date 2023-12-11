Proceso Year_leap
	//Años bisiestos:
	//Entrada User indicate year for verification
	//Salida: Determinate if year is leap or no.
	Escribir Sin Saltar'Ingrese el anio que quiere verificar si es bisiesto: ';
	Leer year;
	
	Si year > 1582 Entonces
		Si year % 4 = 0 | year % 400 = 0 Entonces
			Escribir 'The year ' , year , ' is a leap';
		SiNo
			Escribir 'The year ',  year , " isnt a leap";
		FinSi
	SiNo
		Si year % 4 = 0 | year % 100 = 0 Entonces
			Escribir 'The year ' , year , ' is a leap';
		SiNo
			Escribir 'The year ' , year , ' isnt a leap';
		FinSi
	FinSi
	
	
FinProceso
