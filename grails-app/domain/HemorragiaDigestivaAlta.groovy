
class HemorragiaDigestivaAlta {

	Boolean variceral
	List<Droga> drogas
	String antibioticoProfilactico
	TratamientoEndoscopico tratamientoEndoscopico
	
	static constraints = {
		antibioticoProfilactico inList: ['ciprofloxanina', 'ceftriaxona']
	}
	
}
