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

	method poder(personaje) {
	}

	method usar() {
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

