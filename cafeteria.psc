Proceso cafeteria
	
	empanadaPollo=0;
	empanadaPolloYuca=0;
	bunuelos=0;
	papaRellena=0;
	gaseosa=0;
	speedMax=0;
	status=Verdadero;
	
	Dimension valorParcialItems[7];
	Dimension arrayOpt[7];
	Dimension arrayFactura[7];
	Dimension cantParcial[7];
	
	arrayOpt[0]='Nada'
	arrayOpt[1]='EMPANADAS DE TRIGO CON POLLO $3000';
	arrayOpt[2]='EMPANADAS DE YUCA CON POLLO Y QUESO $3000';
	arrayOpt[3]='BUÑUELOS $2500';
	arrayOpt[4]='PAPAS RELLENAS $4500';
	arrayOpt[5]='GASEOSA $2000';
	arrayOpt[6]='SPEEDMAX $2000';
	Mientras status=Verdadero Hacer
		Limpiar Pantalla;
		Escribir 'Que desea comprar: ';
		Escribir '1. EMPANADAS DE TRIGO CON POLLO $3000';
		Escribir '2. EMPANADAS DE YUCA CON POLLO Y QUESO $3000';
		Escribir '3. BUÑUELOS $2500';
		Escribir '4. PAPAS RELLENAS $4500';
		Escribir '5. GASEOSA $2000';
		Escribir '6. SPEEDMAX $2000';
		Escribir '7. Finalizar compra';
		Escribir '0. Finalizar turno';
		Leer eleccion;
		segun eleccion Hacer
			7: eleccion=7;
			0: eleccion=0;
			De Otro Modo:
				Si eleccion > 0 & eleccion < 7 Entonces
					Escribir Sin Saltar 'Que cantidad desea: ';
					leer cantidad;	
				FinSi
			
		FinSegun
		
			Segun eleccion Hacer
				1:
					precioUnit = 3000
					empanadaPollo = empanadaPollo + precioUnit*cantidad;
					valorParcial=valorParcial+valoresParciales(eleccion,precioUnit,cantidad)
					valorParcialItems[eleccion]=valorParcialItems[eleccion]+valoresParciales(eleccion,precioUnit,cantidad);
					cantParcial[eleccion] = cantParcial[eleccion]+cantidad
					Escribir 'Item agregado a su compra, EMPANADAS DE TRIGO CON POLLO,  $',3000*cantidad
				2:
					precioUnit = 3000
					empanadaPolloYuca = empanadaPolloYuca + precioUnit*cantidad;
					valorParcial=valorParcial+valoresParciales(eleccion,precioUnit,cantidad)
					valorParcialItems[eleccion]=valorParcialItems[eleccion]+valoresParciales(eleccion,precioUnit,cantidad);
					cantParcial[eleccion] = cantParcial[eleccion]+cantidad
					Escribir 'Item agregado a su compra, EMPANADAS DE YUCA CON POLLO Y QUESO  $', 3000*cantidad;
					
				3:
					precioUnit = 2500
					bunuelos = bunuelos + precioUnit*cantidad;
					valorParcial=valorParcial+valoresParciales(eleccion,precioUnit,cantidad)
					valorParcialItems[eleccion]=valorParcialItems[eleccion]+valoresParciales(eleccion,precioUnit,cantidad);
					cantParcial[eleccion] = cantParcial[eleccion]+cantidad
					Escribir 'Item agregado a su compra, BUÑUELOS  $', 2500*cantidad;
				4:
					precioUnit=4500
					papaRellena = papaRellena + precioUnit*cantidad;
					valorParcial=valorParcial+valoresParciales(eleccion,precioUnit,cantidad)
					valorParcialItems[eleccion]=valorParcialItems[eleccion]+valoresParciales(eleccion,precioUnit,cantidad);
					cantParcial[eleccion] = cantParcial[eleccion]+cantidad
					Escribir 'Item agregado a su compra, PAPAS RELLENA  $', 4500*cantidad;
				5: 
					precioUnit=2000
					gaseosa = gaseosa + precioUnit*cantidad;
					valorParcial=valorParcial+valoresParciales(eleccion,precioUnit,cantidad)
					valorParcialItems[eleccion]=valorParcialItems[eleccion]+valoresParciales(eleccion,precioUnit,cantidad);
					cantParcial[eleccion] = cantParcial[eleccion]+cantidad
					Escribir 'Item agregado a su compra, gaseosa  $', 2000*cantidad;
				6:
					precioUnit=2000
					speedMax = speedMax + precioUnit*cantidad;
					valorParcial=valorParcial+valoresParciales(eleccion,precioUnit,cantidad)
					valorParcialItems[eleccion]=valorParcialItems[eleccion]+valoresParciales(eleccion,precioUnit,cantidad);
					cantParcial[eleccion] = cantParcial[eleccion]+cantidad
					Escribir 'Item agregado a su compra, speedmax  $', 2000*cantidad;
					
				7:
					valorParcial=valorParcial+valoresParciales(eleccion,precioUnit,cantidad)
					Para i=1 Hasta 6 Hacer
						Si valorParcialItems[i]>0 Entonces
							Escribir arrayOpt[i], 'x',cantParcial[i],'   ', valorParcialItems[i]
						FinSi
						valorParcialItems[i]=0
					FinPara
					Escribir 'El total a pagar es de ', valorParcial;
					valorParcial=0
				0:
					status=Falso;
					totalRecaudo = empanadaPollo+empanadaPolloYuca+bunuelos+papaRellena+gaseosa+speedMax;
					Escribir 'Lo total recaudado en el turno fue: ';
					Si empanadaPollo > 0 Entonces
						Escribir 'EMPANADAS DE TRIGO Y POLLO : ', empanadaPollo;
					FinSi
					Si empanadaPolloYuca > 0 Entonces
						Escribir 'EMPANADAS DE YUCA CON POLLO: ', empanadaPolloYuca;
					FinSi
					Si bunuelos > 0 Entonces
						Escribir 'BUÑUELOS : ', bunuelos;
					FinSi
					Si papaRellena > 0 Entonces
						Escribir 'PAPAS RELLENAS : ', papaRellena;
					FinSi
					Si gaseosa > 0 Entonces
						Escribir 'GASEOSA : ', gaseosa;
					FinSi
					Si speedMax > 0 Entonces
						Escribir 'SPEED MAX : ', speedMax;	
					FinSi
					
					Escribir 'Total recaudado: ', totalRecaudo;
				De Otro Modo:
					Escribir 'Eleccion no valida, eliga una opcion nuevamente';
			FinSegun
			
		Esperar Tecla;
	FinMientras
FinProceso

Funcion  totalPagar<-valoresParciales(eleccion,precioUnit,cantidad)
	Dimension parcial[7];
	parcial[0]=0
	Si eleccion>0 & eleccion <7 Entonces
		parcial[eleccion]=precioUnit*cantidad
		totalPagar=totalPagar+parcial[eleccion]
	FinSi
//	cont=cont+1
//	lineaFactura = lineaFactura+1;
//		detailFact[lineaFactura] = arrayOpt[eleccion] +' x'+ ConvertirATexto(cantParcial[eleccion])
//		Escribir  detailFact[lineaFactura], ' aca'
FinFuncion



