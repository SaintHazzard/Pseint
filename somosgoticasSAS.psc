Funcion vConsumido <- calculoConsumo(estrato_cliente,metros_consumidos)
	ValorMetroCubico = 3000;
	segun estrato_cliente Hacer
		1: estrato = 0.05;
		2: estrato = 0.04;
		3: estrato = 0.03;
		4: estrato = 0.02;
		De Otro Modo:
			estrato = 0
	FinSegun
	valorMetroConDescuento=(ValorMetroCubico)-(ValorMetroCubico)*estrato;
	valorDescuento = (ValorMetroCubico)*estrato*metros_consumidos;
	
	Escribir 'Valor metro cubico: ', valorMetroConDescuento ;
	Escribir  'Descuento ', vConsumido*estrato
	vConsumido = metros_consumidos*valorMetroConDescuento;
FinFuncion


Proceso somosgoticasSAS
	Escribir 'Nombre del cliente';
	Leer nombre_cliente;
	Escribir 'Direccion del cliente';
	leer direccion;
	Escribir 'Estrato del cliente';
	leer estrato_cliente;
	Escribir 'Metros cubicos consumidos por el cliente';
	leer metros_consumidos;
	Limpiar Pantalla
	Escribir 'Nombre cliente', ': ',nombre_cliente;
	Escribir 'Direccion cliente', ': ',direccion;
	Escribir 'Estrato', ': ',estrato_cliente;
	Escribir 'Metros cubicos consumidos: ', metros_consumidos, ': '
//	Escribir calculoConsumo(estrato_cliente,metros_consumidos);
	subTotal = calculoConsumo(estrato_cliente,metros_consumidos);
	Escribir 'Subtotal: ', subTotal;
	Escribir 'Valor IVA(10%): ', subTotal*0.10;
	Escribir 'Total, a pagar  ', subTotal*1.10;	
	
FinProceso



	