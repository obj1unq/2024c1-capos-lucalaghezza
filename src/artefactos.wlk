object espadaDelDestino {

	var primeraVez = true

	method poder(personaje) {
		return personaje.poderBase() * self.coeficiente()
	}

	method coeficiente() {
		return if (primeraVez) {
			1
		} else {
			0.5
		}
	}

	method usar() {
		primeraVez = false
	}

}

object libroDeHechizos {

	var property hechizos = []

	method poder(personaje) {
		return if (!hechizos.isEmpty()) {
			hechizos.first().poder(personaje)
		} else {
			0
		}
	}

	method usar() {
		if (!hechizos.isEmpty()) {
			hechizos.remove(hechizos.first())
		}
	}

}

object collarDivino {

	var usos = 0

	method poder(personaje) {
		return 3 + self.extra(personaje)
	}

	method extra(personaje) {
		return if (personaje.poderBase() > 6) {
			usos
		} else {
			0
		}
	}

	method usar() {
		usos += 1
	}

}

object armaduraDeAceroValyrio {

	method poder(personaje) {
		return 6
	}

	method usar() {
	}

}



// HECHIZOS

object bendicion {
	method poder(personaje){
		return 4
	}
}

object invibisilidad {
	method poder(personaje){
		return personaje.poderBase()
	}
}

object invocacion {
	method poder(personaje){
		return personaje.poderInvocacion()
	}
}

