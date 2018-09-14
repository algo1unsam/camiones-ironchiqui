import transportes.*


object deposito{
	
	var stock =[]
	
	method pedirMercaderia(merca1,merca2,merca3){
		
		stock.add(merca1,merca2,merca3)
		
	} 
	
	
	method llenarCamion(camion){
		
		stock.forEach({cosa=>camion.cargarCamionCon(cosa)})
	}
}
