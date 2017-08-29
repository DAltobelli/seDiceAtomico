import springfield.*
import turbina.*
object centralEolica {

var turbinas=[turbina]

method contaminaAmbiente ()=false
method agregarTurbinas(unaTurbina){
	turbinas.add(unaTurbina)
}
method produccionEnergetica(){
	return turbinas.sum({turbina=>turbina.produccionEnergetica()})
	}
}

object turbina{
	method produccionEnergetica(){
		return 0.2*springfield.vientos()
	}
}