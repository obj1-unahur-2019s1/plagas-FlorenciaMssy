class Hogar {
	
var property mugre = 300
var property confort = 100
	
method esBueno(){
	
	return mugre / 2 <= confort
}
}
class Huerta{
	
var property produccion = 0
var property nivel = 0

method esBueno(){
	
	return produccion > configHuerta.nivel()
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
