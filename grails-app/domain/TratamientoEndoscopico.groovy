
class TratamientoEndoscopico {
	
	String tratamiento
	Boolean sangradoEnLaEndoscopia
	Boolean balonDeSB
	Boolean controlDeHemorragiaA6Horas
	Boolean resangradoAl5toDia

	static constraints = {
		tratamiento inList: ['ligadura', 'exclerosis']
	}

	def TratamientoEndoscopico(String tratamiento,
			Boolean sangradoEnLaEndoscopia, Boolean balonDeSB,
			Boolean controlDeHemorragiaA6Horas, Boolean resangradoAl5toDia) {
		this.tratamiento = tratamiento
		this.sangradoEnLaEndoscopia = sangradoEnLaEndoscopia
		this.balonDeSB = balonDeSB
		this.controlDeHemorragiaA6Horas = controlDeHemorragiaA6Horas
		this.resangradoAl5toDia = resangradoAl5toDia
	}	
	
}