Proceso Que_Nota_Necesito
//Entrada: N1, N2 Y NL
//Salida: Minima nota en C3 posible para aprobar NF con 60
	Definir C1,C2,C3,Nl,Nf,Nc Como Real;
	
	
	Escribir 'Ingrese la nota C1';
	Leer C1;
	Escribir 'Ingrese la nota C2';
	Leer C2;
	Escribir 'Ingrese la nota del laboratorio';
	Leer Nl;
	Nf<-60;
	
	Nc <- (Nf-(Nl*0.3)/0.7);
	
	C3<- trunc((3*Nc)-C1-C2);
	
	Si 	C3 < 0 Entonces
		Escribir 'La materia ya esta aprobada';
	SiNo
		Escribir 'La nota necesaria para pasar en el tercer certamen es de ', C3;
	FinSi
	
FinProceso
