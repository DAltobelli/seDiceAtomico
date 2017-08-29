
object centralExBosque {
var capacidad

method capacidad(unaCapacidad){
	capacidad=unaCapacidad
}

method produccionEnergetica(unaCiudad){
	return (0.5)+capacidad*unaCiudad.riquezaDelSuelo()
	}
method contaminaAmbiente ()=true
}