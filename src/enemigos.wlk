object palacio{
	
}

object fortaleza {
	
}

object torre {
	
}


object archibaldo {
	var property hogar = palacio
	
	method poderPelea(){
		return 16
	}
}

object caterina {
	var property hogar = fortaleza
	
	method poderPelea(){
		return 28
	}
}


object astra {
	var property hogar = torre
	
	method poderPelea() {
		return 14
	}
	
}

object erethia {
	var property enemigos = #{archibaldo, caterina, astra}
	
	method vencibles(capo){
		return enemigos.filter({enemigo => enemigo.poderPelea() < capo.poderPelea()})
	}
	
	method hogaresConquistables(capo){
		return self.vencibles(capo).map({enemigo => enemigo.hogar()})
	}
}
