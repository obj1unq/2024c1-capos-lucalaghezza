import artefactos.*
import castillo.*

object rolando{
	
	var property capacidad = 2
	var property artefactos = #{}
	var property hogar = castilloDePiedra
	const property historialDeArtefactos = []
	var property poderBase = 5
	
	method encontrar(artefacto){
		if(self.puedeAgregar()){
			artefactos.add(artefacto)
		}
		historialDeArtefactos.add(artefacto)
	}
	
	method puedeAgregar(){
		return artefactos.size()<capacidad
	}
	
	method poderPelea(){
		return self.poderBase() + self.poderArtefactos()
	}
	
	method poderArtefactos() {
		return artefactos.sum({ artefacto => artefacto.poder(self)})
	}
	
	method batalla(){
		artefactos.forEach({artefacto => artefacto.usar()})
		poderBase += 1
	}
	
	method irAlHogar(){
		self.guardarArtefactosEnHogar()
		self.liberarEspacio()
	}
	
	method guardarArtefactosEnHogar(){
		hogar.guardarTodosLosArtefactos(artefactos)
	}
	
	method liberarEspacio(){
		artefactos.clear()
	}
	
	method posee(artefacto){
		return self.todasLasPosesiones().contains(artefacto)
	}
	
	method todasLasPosesiones(){
		return artefactos.union(hogar.baul())
	}
	
	method poderInvocacion(){
		return hogar.poderInvocacion(self)
	}
	
	method enemigosVencibles(tierra){
		return tierra.enemigos(self)
	}

}