
object centralBurns {
var varillasDeUranio;

method varillasDeUranio(unaCantidad){
	varillasDeUranio=unaCantidad
}

method produccionEnergetica(){
	return (0.1)*varillasDeUranio;
}
method contaminaAmbiente (){
	return varillasDeUranio>20
	}
	
}