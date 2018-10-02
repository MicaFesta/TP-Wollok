// Punto 1: Hechicer�a

class Personaje {
	var hechizoFavorito
	var artefactosDeLucha = [ ]
	var fuerzaOscura = 5
	var nombre
	
	constructor(unNombre, unHechizoFavorito, unosArtefactosDeLucha){
		nombre = unNombre
		hechizoFavorito = unHechizoFavorito
		artefactosDeLucha = unosArtefactosDeLucha
	}

	method seCreePoderoso() {
		return hechizoFavorito.esPoderoso()
	}

	method estaCargado() {
		return (artefactosDeLucha.size() >= 5)
	}
	
	method eclipse() {
		fuerzaOscura = fuerzaOscura * 2
	}
}

class EspectroMalefico {
	var nombre

	constructor(unNombre){
		nombre = unNombre
	}

	method esPoderoso() {
		return true
	}

	method nivelDeHechizeria() {
		return ( 3 * 17 ) + fuerzaOscura
	}
	
}

class Logos {
	var nombre
	var valorPorElCualLoMultiplico

	constructor(unNombre, unValor){
		nombre = unNombre
		valorPorElCualLoMultiplico = unValor
	}

	method esPoderoso() {
	}

	method nivelDeHechizeria() {
		return ( nombre.size() * valorPorElCualLoMultiplico ) + fuerzaOscura
	}
}

class Basico {

	method esPoderoso() {
		
		return false
	}

	method poderDeHechizeria() {
		return 10
	}
}

//Punto 2: Lucha 

class Espada {

	method poderDeLucha() {
		return 3
	}
}

class Hacha {

	method poderDeLucha() {
		return 3
	}
}

class Lanza {

	method poderDeLucha() {
		return 3
	}
}

class CollarDivino {
var cantidadPerlas

	constructor(unasPerlas){
		cantidadPerlas = unasPerlas
	}
	

	method poderDeLucha() {
		return cantidadPerlas
	}
}

class MascarasOscuras {
	var indiceOscuridad

	constructor(unIndiceDeOscuridad){
		indiceOscuridad = unIndiceDeOscuridad
	}

	method poderDeLucha() {
		return 4.max((fuerzaOscura / 2 ) * indiceOscuridad)
	}
}

//Punto 3

class CotaDeMalla {
	var calidad

	constructor(unaCalidad){
		calidad = unaCalidad
	}

	method poderDeLucha(nivelDeHechizeria, poderDeHechizeria) {
		return calidad
	}
}

class Bendicion {

	method poderDeLucha(nivelDeHechizeria, poderDeHechizeria) {
		return nivelDeHechizeria
	}
}

class Hechizo { //se toma poder de hechicer�a como el nivel del hechizo favorito, ya que la consiga no lo aclara
	method poderDeLucha(nivelDeHechizeria, poderDeHechizeria) {
		return poderDeHechizeria
	}
}

class Ninguno {

	method poderDeLucha(nivelDeHechizeria, poderDeHechizeria) {
		return 2
	}
} 

object espejo { 
	method poderDeLucha ( listaDeArtefactos ) { 
		return listaDeArtefactos.max({ listaDeArtefactos.map({artefacto => artefacto.poderDeLucha()})}) 
	} 
}
