import cargas.*
import deposito.*

object camion {
	
	var cargas =[]
	var property cargaMax = 2000
	
	method cargarCamionCon(carga){
		
		if(self.cargaDisponible()>= carga )
		
		cargas.add(carga)
		
	}
	
	method descargar(carga){
		
		cargas.remove(carga)
	}
	
	method lleva(carga){
		
		return cargas.contains(carga)
	}
	
	method cargaActual(){
		
		return cargas.sum()
	}
	
	method cargaDisponible(){
		
		return cargaMax - cargas.sum()
		
	}
	
	method tenesLugarPara(carga){
		
		return (carga.peso()<= self.cargaDisponible())
		
	}
	
	
	method cargaMasPeligrosa(){
		
		return cargas.max({carga=>carga.peligrosidad()})
		
	}
}
