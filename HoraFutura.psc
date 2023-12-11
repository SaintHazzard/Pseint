Proceso HoraFutura
	//NombreAlgoritmo: Hora futura
	
	//Entrada: Hora base, Horas que desea agregar a la base
//////	
////// Salida: Hora en formato internacional de 0 a 24 incluyendo el dia siguiente\
//////	
//////	Definir hora, minutos, s, length,i,horasUsuario,SumHoras,SumHorasH,SumHorasM,SumHorasS Como real;
	Definir horaConvertida,hor Como Caracter;
	
	
	Escribir 'Indique la hora que desea sumar';
	Leer horasUsuario;
	
	
	SumHoras <- ConvertTimeActToSeconds + horasUsuario*3600;
	
	SumHorasH = Trunc(SumHoras/3600) % 24;
	SumHorasM <- Trunc(SumHoras/60) % 60;
	SumHorasS <- SumHoras % 60;
	
	Escribir 'Su hora futura seria ', SumHorasH,':',SumHorasM,':',SumHorasS;
	
FinProceso

Funcion HoraActualaaAsegundos <- ConvertTimeActToSeconds
	Definir hora,length,i,HoraActualaaAsegundos Como Real;
	Definir horaConvertida,hor Como Caracter;
	Dimension hor[3];
	hora <- HoraActual();
	horaConvertida <- ConvertirATexto(HoraActual());
	
	length <- Longitud(ConvertirATexto(hora));
	Si length<6 Entonces
		horaConvertida='0'+horaConvertida;
	FinSi
	// Escribir HoraActual();
	Para i<-0 Hasta length/2 Con Paso 1 Hacer
		
		Si i = 0 Entonces
			hor[i]<-SUBCADENA(horaConvertida,i,i+1);
		SiNo
			hor[i]<-SUBCADENA(horaConvertida,i+1,i+2);
		FinSi
		// Escribir  hor[i];
	FinPara
	HoraActualaaAsegundos <- ConvertirANumero(hor[0])*3600 + ConvertirANumero(hor[1])*60 + ConvertirANumero(hor[2]);
FinFuncion
