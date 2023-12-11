Proceso huellaCarbono
	Definir input Como Real
	//? Datos del hogar: tipo de vivienda, número de personas, superficie habitable, etc.
	//? Datos de consumo: consumo de energía eléctrica, consumo de gas natural, consumo de gasolina, etc.
	//? Datos de hábitos: hábitos de transporte, hábitos alimenticios, hábitos de consumo, etc.
	
   //Combustibles fósiles: consumo de energía eléctrica, consumo de gas natural, consumo de gasolina, etc. HECHO
   //Alimentos: consumo de carne, consumo de productos lácteos, consumo de frutas y verduras, etc.
   // Vivienda: consumo de energía para calefacción, consumo de energía para refrigeración, consumo de agua, etc.
	//Productos y servicios: consumo de productos electrónicos, consumo de ropa, consumo de servicios de transporte, etc.
	
	
	
	Dimension tipoVivienda[4]
	Dimension consumoGas[4,3]
	Dimension consumoElectrico[4,3]
	Dimension consumoGasolina[4,3]
	Dimension menu[8]
	Dimension categorias[8]
	Dimension total[3,5]
	//Cuerpo menu
	menu[1]='Indique en metros cubicos cual es el consumo de gas mensual'
	menu[2]='Indique en Kilowats cual es el consumo electrico mensual'
	menu[3]='Indique en Litros cual es su consumo de gasolina mensual'
	menu[4]='Cuantos USD al mes gasta en compra de servicios y productos?'
	menu[5]='Cuantos kilogramos de alimentos carne consumen al mes'
	menu[6]='Cuantos kilogramos de alimentos verdura consumen al mes'
	menu[7]='Numero de personas que conviven en la misma casa'
	
	// tipo vivienda
	tipoVivienda[1]='Apartamento';
	tipoVivienda[2]='Casa';
	tipoVivienda[3]='Duplex';
	
	// Metros cubicos
	consumoGas[1,1]=5; consumoGas[1,2]=0.02
	consumoGas[2,1]=10 ; consumoGas[2,2]=0.05
	consumoGas[3,1]=15 ; consumoGas[3,2]=0.09
	// Factores de emision consumo gas
	
	factorAlimentos=0.34
	factorVivienda=0.57
	factosProductosServicios=0.23
	
	total[1,1]='Combustibles fósiles'
	total[1,2]='Alimentos'
	total[1,3]='Vivienda'
	total[1,4]='Productos y servicios'
	
	
	// kW
	consumoElectrico[1,1]=50; consumoElectrico[1,2]=0.02;
	consumoElectrico[2,1]=100; consumoElectrico[2,2]=0.03
	consumoElectrico[3,1]=150; consumoElectrico[3,2]=0.04
	//Factores emision consumo electrico
	
	// Litros
	consumoGasolina[1,1]=15; consumoGasolina[1,2]=0.01;
	consumoGasolina[2,1]=30; consumoGasolina[2,2]=0.02;
	consumoGasolina[3,1]=45; consumoGasolina[3,2]=0.04;
	
	Escribir 'Tipo de vivienda'
	Para i=1 Hasta 3 Hacer
		Escribir [i],'.',tipoVivienda[i]
	FinPara
	Leer elecVivienda;
	Para i=1 Hasta 7 Hacer
		Escribir menu[i];
		determinarFactor=Falso
		Leer input;
		Si input > 0 &input<99999  Entonces
			Escribir input > 0
			Si i > 3 & i < 8 Entonces
				categorias[i]=input
				Escribir categorias[i]
				consumo_de_productos_y_servicios=categorias[4]
				consumo_de_carne=categorias[5]
				consumoDeVegetales=categorias[6]
				numPersonas=categorias[7]
				
			FinSi
			Para j=1 Hasta 2 Hacer
				Si input <= 5 & i=1 & determinarFactor=Falso Entonces
					categorias[i]=categorias[i]+input*consumoGas[j,2]
					determinarFactor = Verdadero
					Escribir  categorias[i]
				FinSi
				Si input <= 10 & i=1 & determinarFactor=Falso Entonces
					categorias[i]=categorias[i]+input*consumoGas[j+1,2]
					determinarFactor = Verdadero
					Escribir  categorias[i]
				FinSi
				Si input > 10 & i=1 & determinarFactor=Falso Entonces
					categorias[i]=categorias[i]+input*consumoGas[j+2,2]
					determinarFactor = Verdadero
					Escribir  categorias[i]
				FinSi
			FinPara
			// Determina huella carbono consumo electrico
			Para j=1 Hasta 2 Hacer
				Si input <= 50 & i=2 & determinarFactor=Falso Entonces
					
					categorias[i]=categorias[i]+input*consumoElectrico[j,2]
					determinarFactor = Verdadero
				FinSi
				Si input <= 100 & i=2 & determinarFactor=Falso Entonces
					categorias[i]=categorias[i]+input*consumoElectrico[j+1,2]
					determinarFactor = Verdadero
				FinSi
				Si input >= 100 & i=2 & determinarFactor=Falso Entonces
					categorias[i]=categorias[i]+input*consumoElectrico[j+2,2]
					determinarFactor = Verdadero
				FinSi
			FinPara
			// Determina huella carbono consumo gasolina
			Para j=1 Hasta 2 Hacer
				Si input <= 15 & i=3 & determinarFactor=Falso Entonces
					categorias[i]=categorias[i]+input*consumoGasolina[j,2]
					determinarFactor = Verdadero
				FinSi
				Si input <= 30 & i=3 & determinarFactor=Falso Entonces
					
					categorias[i]=categorias[i]+input*consumoGasolina[j+1,2]
					determinarFactor = Verdadero
				FinSi
				Si input >= 30 & i=3 & determinarFactor=Falso Entonces
					
					categorias[i]=categorias[i]+input*consumoGasolina[j+2,2]
					
					determinarFactor = Verdadero
				FinSi
				
			FinPara
		SiNo
			Escribir 'Valor no valido';
		FinSi
		
//		Escribir 'Su ', tipoVivienda[elecVivienda], ' tiene una huella de carbono de ', categorias[i]*numPersonas, ' Kg/CO2 por mes con ', numPersonas, ' ciclo ', i;
		Esperar Tecla
	FinPara
	
	Para i=1 Hasta 3 Hacer
//		Escribir total[2,1]
		
		total[2,1]=ConvertirATexto(ConvertirANumero(total[2,1])+(categorias[i]*numPersonas))
//		Escribir total[2,1]
		total[2,2]=ConvertirATexto(((0.1416*consumo_de_carne)+(0.0053*consumoDeVegetales)))
		total[2,3]=ConvertirATexto(categorias[1]+categorias[2])
		total[2,4]=ConvertirATexto(consumo_de_productos_y_servicios * 0.03060 * numPersonas)
	FinPara 
	Escribir categorias[1]
	Escribir categorias[2]
	Escribir categorias[3]
	Para i=1 Hasta 3 Hacer
		totalHogar=ConvertirANumero(total[2,i])+totalHogar
		Escribir 'La huella de carbono por, ',total[1,i],' ', total[2,i],' Kg/CO2 por mes';
	FinPara
	Escribir 'La huella de carbono total del hogar es de, ', totalHogar, ' Kg/CO2 por mes'
	
	

FinProceso




//Si input - 49 <= consumoElectrico[j,1] & i=2 & determinarFactor=Falso Entonces
//	Escribir consumoElectrico[j,1]
//	Escribir consumoElectrico[j,2]
//	categorias[i]=categorias[i]+input*consumoElectrico[j,2]
//	Escribir 'Entra si'
//	determinarFactor = Verdadero
//FinSi
//Si input - 49 > consumoElectrico[j,1] & i=2 & determinarFactor=Falso  Entonces
//	Escribir 'Entra sino'
//	Escribir consumoElectrico[j+1,2]
//	categorias[i]=categorias[i]+input*consumoElectrico[j+1,2]
//	determinarFactor = Verdadero
//FinSi
