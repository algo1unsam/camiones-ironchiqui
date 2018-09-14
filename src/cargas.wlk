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
		var pesoladrillo= 2
		
		 
		method peso(){
			
			return cantLadrillos * pesoladrillo
			
		}
		
		method peligrosidad(){
			
			return 2
		}
	}