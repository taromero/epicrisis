
class Droga {

	String nombre
	Integer duracion
	HemorragiaDigestivaAlta hemorragiaDigestivaAlta
	
	static belongsTo = [hemorragiaDigestivaAlta : HemorragiaDigestivaAlta]
	
	def Droga(String nombre, Integer duracion, HemorragiaDigestivaAlta hda = null) {
		this.nombre = nombre
		this.duracion = duracion
		this.hemorragiaDigestivaAlta = hda
	}	
	
	
}
