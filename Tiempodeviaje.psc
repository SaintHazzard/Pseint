Proceso Tiempodeviaje
//Nombre Algoritmo: Tiempo de viaje
//Entrada: Tiempo que dura un tramo           
//Salida: Total de tiempo en el viaje 
	
	Escribir 'Indique duracion del tramo en minutos del tramo';
	tramoStatus = Verdadero;
	num=0;
	Mientras tramoStatus = Verdadero Hacer
		Leer tramo;
		num = num + tramo;
		Si tramo = 0 Entonces
			tramoStatus = Falso;
		FinSi
	FinMientras
	
	Si num%60 < 10 Entonces
		Escribir 'El tiempo transcurrido fue de ', trunc(num/60),':0', num%60,' HH:MM';
	SiNo
		Escribir 'El tiempo transcurrido fue de ', trunc(num/60),':', num%60,' HH:MM';
	FinSi
	
FinProceso
