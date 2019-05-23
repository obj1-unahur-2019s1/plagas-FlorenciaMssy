class Plaga{
	var property 
}
class PlagaCucaracha {
	
var property pesoPromedio
var property poblacion
	
method danioProducido(){
	return poblacion/2
}	
method trasmiteEnfermedades (){
	return pesoPromedio >= 10 and poblacion >=10
}
}

class PlagaPulga {

var property poblacion
	
method danioProducido(){
	return poblacion * 2
}

method transmiteEnfermedades(){
	 return poblacion >=10
}
}

class PlagaMosquitos {
var property poblacion

method danioProducido(){
	return poblacion
}

method transmiteEnfermedad(){
	return poblacion >=10 && poblacion % 3 == 0
}
}