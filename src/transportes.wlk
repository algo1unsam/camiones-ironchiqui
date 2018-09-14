import cargas.*
import deposito.*
import rutas.*


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
		
		return cargas.sum({carga=>carga.peso()})
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
	
	method puedeCircularPor(ruta){
		
		return (cargas.all({carga=>carga.peligrosidad() <= ruta.peligrosidadPermitida()}))
	}
}
