import centralBurns.*
import centralExBosque.*

object springfield {
var vientos= 10;
var riquezaDelSuelo=0.9;
var centrales =#{};
var centralesContaminantes=#{};

method riquezaDelSuelo()= riquezaDelSuelo
method vientos()= vientos 

method agregarCentrales(unaCentral){
	centrales.add(unaCentral);
}
method agregarContaminante(unaCentral){
	if(unaCentral.contaminaAmbiente()) {
	centralesContaminantes.add(unaCentral);
	}
}

method cubrioNecesidadesSuministro(){
	return (self.energiaTotal())>20
}

method estaEnElHorno(){
	return(self.energiaTotal()>30||self.sonTodasContaminantes())}

method energiaTotal(){
	return centrales.sum({central=>central.produccionEnergetica()})
}
method sonTodasContaminantes(){
	return(centrales.size()==centralesContaminantes.size())
}
method energiaQueMasProduce() {
		return  centrales.max({central => central.produccionEnergetica()})
	}
}

