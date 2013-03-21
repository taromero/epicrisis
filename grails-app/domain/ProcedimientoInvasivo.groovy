
class ProcedimientoInvasivo {
	String accesoVenoso
	String veda
	String vcc
	List<String> otros
	Boolean uti
	
	static hasMany = [otros: String]
	
	static constraints = {
		accesoVenoso inList: ['periferico', 'central'], nullable: true
		veda inList: ['diagnostica', 'terapeutica'], nullable: true
		vcc inList: ['diagnostica', 'terapeutica'], nullable: true
	}
}
