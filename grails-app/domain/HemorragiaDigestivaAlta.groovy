
class HemorragiaDigestivaAlta {

	Boolean variceral
	String antibioticoProfilactico
	TratamientoEndoscopico tratamientoEndoscopico
	
	static hasMany = [drogas: Droga] 
	
	static mapping = {
		drogas sort: 'nombre'
	}
	
	static constraints = {
		antibioticoProfilactico inList: ['ciprofloxanina', 'ceftriaxona']
	}
	
}
