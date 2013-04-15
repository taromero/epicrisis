
class Infeccion {

	String nombre
	List<Cultivo> otrosCultivos
	Hemocultivo hemocultivos
	Urocultivo urocultivo
	String antibioticoUsado
	Boolean shockSeptico
	Boolean curacion

	static hasMany = [cultivos: Cultivo]
	static hasOne = [hemocultivos: Cultivo, urocultivo: Urocultivo,
					 ascitis: Ascitis]
	
}
