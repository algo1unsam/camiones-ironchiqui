object knightRider {

	var property peso = 500

	method peligrosidad() {
		return 10
	}

}

// TODO acá habría que tratar de usar objetos, y no strings
// usar string no está mal pero tratamos que de que sea la última de las soluciones a aplicar
// acá había que usar objetos y que cada uno conozca su peligrosidad
object bumblebee {

	var property peso = 800
	var property modo = 'auto'

	method peligrosidad() {
		// TODO esto tambien se puede escribir así:
		// return if(self.modo()=='auto') 15 else 30
		if (self.modo() == 'auto') return 15 else return 30
	}

}

object paqueteLadrillos {

	var property cantLadrillos = 1
	var property pesoladrillo = 2

	method peso() {
		return cantLadrillos * pesoladrillo
	}

	method peligrosidad() {
		return 2
	}

}

object contenedor {

	var pesoPropio = 100
	var property cargas = []

	method cargarCon(carga) {
		cargas.add(carga)
	}

	method peso() {
		return (cargas.sum({ carga => carga.peso() }) + pesoPropio)
	}

	method descargar(carga) {
		cargas.remove(carga)
	}

	method peligrosidad() {
		if (cargas != null) return cargas.max({ carga => carga.peligrosidad() }) else return 0
	}

}

object embalaje {

	// TODO emvuelve cualquier cosa, pero solo UNA (sino sería casi lo mismo que el contenedor)
	// fijate que dice "El peso es el peso de LA COSA que tenga adentro"
	var cosas = []

	method peso() {
		return cosas.sum({ cosa => cosa.peso() })
	}

	method peligrosidad() {
		return (cosas.sum({ cosa => cosa.peligrosidad() })) / 2
	}

}

