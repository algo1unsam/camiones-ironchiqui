import cargas.*
import deposito.*
import rutas.*

// TODO faltan los tests

object camion {
	
	var cargas =[]
	var property cargaMax = 2000
	
	method cargarCon(carga){
		
		if(self.cargaDisponible()>= carga)
			cargas.add(carga)
			// TODO después de agregarlo al cambión hay que sacarlo del depósito
		
	}
	
	method descargar(carga){
		
		cargas.remove(carga)
	}
	
	method lleva(carga){
		
		return cargas.contains(carga)
	}
	
	method cargaActual(){
		
		return cargas.sum({carga=>carga.peso()})
	}
	
	method cargaDisponible(){
		
		return cargaMax - cargas.sum({carga=>carga.peso()})
		
	}
	
	method tenesLugarPara(carga){
		
		return (carga.peso()<= self.cargaDisponible())
		
	}
	
	
	method cargaMasPeligrosa(){ 
		
		return cargas.max({carga=>carga.peligrosidad()})
		
	}
	
	method puedeCircularPor(ruta){
		
		return (cargas.all({carga=>carga.peligrosidad() <= ruta.peligrosidadPermitida()}))
	}
}


object motoneta{
	
	var property cargaMax =100
	var cargas= []
	var peligrosidadPermitida= 5
		
		
		method cargarCon(carga){
			
			if ((carga.peligrosidad() <= peligrosidadPermitida)and (carga.peso()<=cargaMax)){
				
						cargas.add(carga)
			}
				
		}
	
}
