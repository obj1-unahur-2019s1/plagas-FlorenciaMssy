class Hogar {
	
var property mugre = 300
var property confort = 100
	
method esBueno(){
	
	return mugre / 2 <= confort
}
method esAtacado(plaga){
	mugre = mugre + plaga.nivelDanio()
}
}
class Huerta{
	
var property produccion = 0
var property nivel = 0

method esBueno(){
	
	return produccion > configHuerta.nivel()
}
method esAtacado(plaga){
	produccion = produccion - (plaga.nivelDanio() / (10/100))
	if (plaga.transmiteEnfermedades()){
		produccion = produccion - 10
	}
}
}


object configHuerta{

var property nivel = 20
}	
class Mascota {
var property nivelSalud = 500

method esBueno(){
	return nivelSalud > 250
}
method esAtacado(plaga){
	if(plaga.transmiteEnfermedades())
	{nivelSalud = nivelSalud - plaga.nivelDanio()}
}
}

class Barrio {
	
var elementos= []

method agregarElemento(elemento){
	elementos.add(elemento)}
	
method elementosBuenos(){
	return elementos.filter({elemento => elemento.esBueno()})
}
method elementosMalos(){
	return elementos.filter({elemento => not elemento.esBueno()})
}
method esCopado(){
	return self.elementosBuenos().size() > self.elementosMalos().size()
}
}
