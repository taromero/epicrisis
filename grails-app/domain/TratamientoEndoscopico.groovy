
class TratamientoEndoscopico {
	
	String tratamiento
	Boolean sangradoEnLaEndoscopia
	Boolean balonDeSB
	Boolean controlDeHemorragiaA6Horas
	Boolean resangradoAl5toDia

	static constraints = {
		tratamiento inList: ['ligadura', 'exclerosis']
	}

}