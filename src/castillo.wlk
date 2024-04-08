object castilloDePiedra {
	var property baul = #{}
	
	method guardarTodosLosArtefactos(artefactos){
		baul.addAll(artefactos)
	}
	
	method poderInvocacion(personaje) {
		return baul.map({artefacto => artefacto.poder(personaje)}).maxIfEmpty(0)
	}
}