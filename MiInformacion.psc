Proceso MiInformacion
	Definir imc, peso, altura Como Real;
	Definir nombre Como Caracter;
	Escribir "Ingrese su nombre";
	Leer nombre;
	Escribir "Indique su edad";
	Leer edad;
	Escribir "Indique su altura en metros";
	Leer altura;
	Escribir "Indique su peso en Kg";
	Leer peso;
	imc<-peso/(altura*altura);
	
	Escribir "Hola", nombre, "su edad es", edad,' y su IMC es', imc;
	
FinProceso
