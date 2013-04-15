
class Cultivo {
	String nombre
	Boolean positivo //null significa no realizado

	static belongsTo = [infeccion: Infeccion]

	static constraints = {
		positivo nullable:true
	}
}