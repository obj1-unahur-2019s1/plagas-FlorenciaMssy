class Plaga{
	var property poblacion
	method transmiteEnfermedades(){
		return poblacion >=10
	}
	method atacar(elemento){
	poblacion = (poblacion *(10/100))
		elemento.esAtacado(self)
	}
}
class PlagaCucaracha inherits Plaga{
	
var property pesoPromedio
	
method danioProducido(){
	return poblacion/2
}	
override method transmiteEnfermedades(){
	return pesoPromedio >= 10 and super()
}
override method atacar(elemento){
	pesoPromedio = pesoPromedio + 2
	super(elemento)
}
}
class PlagaPulga inherits Plaga{
	
method danioProducido(){
	return poblacion * 2
}

}
/*override method atacar(elemento){
	
}
}*/
class PlagaGarrapatas inherits Plaga {
method danioProducido(){
	return poblacion * 2
}
override method atacar(elemento){
	poblacion = (poblacion *(20/100))
	elemento.esAtacado()
} 	
}
class PlagaMosquitos inherits Plaga {

method danioProducido(){
	return poblacion
}
override method transmiteEnfermedades(){
	return super() && poblacion % 3 == 0
}
override method atacar(elemento){
	poblacion = (poblacion *(10/100))
}
}