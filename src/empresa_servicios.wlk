import profesionales.*
import universidades.*

class EmpresaServicios {
	var empresa = []
	var property honorarioRef 
	
	method honorarioRef(_cantidad){
		honorarioRef = _cantidad
	}
	
	method agregarProfesional(_profesional){
		empresa.add(_profesional)
	}
	
	method quitarProfesional(_profesional){
		empresa.remove(_profesional)
	}
	
	method profesionalesCaros(){
		return empresa.filter{caros=>caros.honorariosPorHora()>honorarioRef}
		
	}
	
	method universidadesFormadoras(){
		return empresa.map{u=>u.universidad()}
		
	}
	
	method profesionalMasBarato(){
		return empresa.min{b=>b.honorariosPorHora()}
		
	}
	
	method provinciaCubierta(_provincia){
		return empresa.any{p=>p.provinciasDondePuedeTrabajar()==_provincia}
		
		
	}
	
	method cuantosEstudiaronEn(_universidad){
		return empresa.count{u=>u.universidad()==_universidad}
	}
	
	
}
