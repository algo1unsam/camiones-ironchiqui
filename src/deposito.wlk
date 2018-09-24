import transportes.*


object deposito{
	
	var stock =[]
	
	// TODO y si sólo quiero cargar uno? o dos? o cuatro?
	// para manejar esto lo ideal sería una colección
	method pedirMercaderia(merca1,merca2,merca3){
		
		stock.add(merca1,merca2,merca3)
		
	} 
	
	
	method llenarTransporte(transporte){
		
		stock.forEach({cosa=>transporte.cargarCon(cosa)})
	}
}
