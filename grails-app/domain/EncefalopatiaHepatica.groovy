
class EncefalopatiaHepatica {

	Integer grado
	String causa
	String tratamiento
	Boolean reversion
	
	static constraints = {
		grado range: 1..4
	}
	
}
