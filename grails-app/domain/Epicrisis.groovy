import org.jadira.usertype.dateandtime.joda.PersistentDateTime
import org.joda.time.DateTime

class Epicrisis {

	Long dni
	Integer nroHistoriaClinica
	DateTime fechaIngreso
	DateTime fechaEgreso
	List<String> medicacionAlIngreso
	Infeccion infeccion	
	MotivoIngreso motivoIngreso
	ProcedimientoInvasivo procedimientoInvasivo
	Ascitis ascitis
	InsuficienciaRenal insuficienciaRenal
	Hcc hcc
	EncefalopatiaHepatica encefalopatiaHepatica
	HemorragiaDigestivaAlta hemorragiaDigestivaAlta
	HepatitisAguda hepatitisAguda
	
    static constraints = {
		encefalopatiaHepatica nullable:true 
    }
	
}

