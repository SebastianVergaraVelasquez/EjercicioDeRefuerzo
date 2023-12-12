Algoritmo maquinaDeAlimentos
	
	Definir a,b,c como entero;
	Definir producto Como Caracter;
	Definir cantidadMonedas, denominacionMoneda, valorProducto, sumaDePago, vuelto Como Entero;
	seleccionarProducto(eleccion, producto, cantidadMonedas, denominacionMoneda, valorProducto, sumaDePago, vuelto, sumaVuelto);

FinAlgoritmo


Funcion condicionesDeCompra (cantidadMonedas, denominacionMoneda, valorProducto, sumaDePago, vuelto, sumaVuelto)
	
	Escribir 'Ingrese monedas 10, 50 o 100?'
	Repetir
		Repetir
			Leer denominacionMoneda;
		Hasta Que denominacionMoneda =10 o denominacionMoneda =50 o denominacionMoneda =100
		
		sumaDePago = sumaDePago + denominacionMoneda;
		vuelto = sumaDePago - valorProducto;
		
	Hasta Que sumaDePago >= valorProducto
	si vuelto = 0 Entonces
		Escribir 'No hay vuelto';
	SiNo
		si vuelto < 50 Entonces
			Escribir 'Su vuelto es'
			Mientras sumaVuelto < vuelto
				Escribir '10';
				sumaVuelto = sumaVuelto +10;
			FinMientras
		SiNo
			si vuelto = 50 Entonces
				Escribir 'Su vuelto es'
				sumaVuelto = vuelto;
				Escribir sumaVuelto;
			SiNo
				Escribir'Su vuelto es';
				sumaVuelto = 50;
				Escribir sumaVuelto;
				Mientras sumaVuelto < vuelto
					sumaVuelto = sumaVuelto + 10;
					Escribir '10';
				FinMientras
			FinSi
		FinSi
	FinSi
	
FinFuncion

Funcion seleccionarProducto (eleccion, producto, cantidadMonedas, denominacionMoneda, valorProducto, sumaDePago, vuelto, sumaVuelto)
	Escribir 'Que producto desea A, B, C?';
	Leer producto;
	
	Segun producto Hacer
		"A":
			Escribir 'Produto: ', eleccion;
			valorProducto = 270;
			Escribir valorProducto;
			condicionesDeCompra(cantidadMonedas, denominacionMoneda, valorProducto, sumaDePago, vuelto, sumaVuelto);
		"B":
			Escribir 'Produto: ', eleccion;
			valorProducto = 340;
			Escribir valorProducto;
			condicionesDeCompra(cantidadMonedas, denominacionMoneda, valorProducto, sumaDePago, vuelto, sumaVuelto);
		"C": 
			Escribir 'Produto: ', eleccion;
			valorProducto = 390;
			Escribir valorProducto;
			condicionesDeCompra(cantidadMonedas, denominacionMoneda, valorProducto, sumaDePago, vuelto, sumaVuelto);
	FinSegun
FinFuncion
	