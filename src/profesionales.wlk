import universidades.*


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	var provinciasDondePuedeTrabajar
	var honorariosPorHora
	
	method universidad() { 
		return universidad
	}
	method universidad(univ) { 
		universidad = univ
	}
	
	method provinciasDondePuedeTrabajar() {
		provinciasDondePuedeTrabajar = universidad.provincia()
		return provinciasDondePuedeTrabajar
	}
	
	method honorariosPorHora() {
	   honorariosPorHora = universidad.honorariosRecomendados()
	  return honorariosPorHora
	
	}

}

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	var honorariosPorHora
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() {
		honorariosPorHora = 3000
		return honorariosPorHora
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var provinciaDondePuedeTrabajar
	var honorariosPorHora
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar(){return provinciaDondePuedeTrabajar} 
	method provinciasDondePuedeTrabajar(_provincia){provinciaDondePuedeTrabajar = _provincia}
	
	method honorariosPorHora(){return honorariosPorHora}
	method honorariosPorHora(_cantidad) { honorariosPorHora = _cantidad }
	
	
}
