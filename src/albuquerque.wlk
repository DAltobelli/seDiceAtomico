import centralEolica.*
object albuquerque {
	var caudal = 150
	var centrales = #{ }
	method agregarCentralesAtomicas(unaCentral) {
		centrales.add(unaCentral) 
	}
	method caudal()= caudal
	method energiaQueMasProduce() {
		return  centrales.max({central => central.produccionEnergetica()})
	}
}