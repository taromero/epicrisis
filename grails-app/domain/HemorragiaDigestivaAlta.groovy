
class HemorragiaDigestivaAlta {

	Boolean variceral
	String antibioticoProfilactico
	TratamientoEndoscopico tratamientoEndoscopico
	
	static hasMany = [drogas: Droga] 
	
	static constraints = {
		antibioticoProfilactico inList: ['ciprofloxanina', 'ceftriaxona']
	}
	
}
