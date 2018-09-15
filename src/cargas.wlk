object knightRider {
	
	var property peso = 500
	
	method peligrosidad(){
		
		return 10
	}
	
	}

	object bumblebee{
		var property peso= 800
		var property modo = 'auto'
		method peligrosidad(){
			
			if(self.modo()=='auto')
				return 15
				
				else
					return 30
		}
				
		
	}
	
	object paqueteLadrillos{
		var property cantLadrillos = 1
		var property pesoladrillo= 2
		
		 
		method peso(){
			
			return cantLadrillos * pesoladrillo
			
		}
		
		method peligrosidad(){
			
			return 2
		}
	}
	
	
	object contenedor{
		var pesoPropio = 100
		var property cargas= []
		
		method cargarCon(carga){
		
			cargas.add(carga)
		
	}
		
		method peso(){   
			
			return (cargas.sum({carga=>carga.peso()}) + pesoPropio)
			
		}
		
		method descargar(carga){
		
		cargas.remove(carga)
	}
		
		method peligrosidad(){
			
			if(cargas != null )
			
				return	cargas.max({carga=>carga.peligrosidad()})
				
			else 
				
				return 0	
			
		}
	}
	
object embalaje{
	
	var cosas=[]
	
	method peso(){
		
		return cosas.sum({cosa=>cosa.peso()})
	}
	
	method peligrosidad(){
		
		return (cosas.sum({cosa=>cosa.peligrosidad()}))/2
		
		
		
	}
}