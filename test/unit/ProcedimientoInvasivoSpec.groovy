import grails.buildtestdata.mixin.Build;
import spock.lang.Specification

@Build(ProcedimientoInvasivo)
class ProcedimientoInvasivoSpec extends Specification{
	
	def 'acceso venoso se puede llenar con PERIFERICO o CENTRAL o null'() {
		given: 'acceso venoso PERIFERICO o CENTRAL o vacio'
			def procedimientoInvasivo = ProcedimientoInvasivo.buildWithoutSave(accesoVenoso: accesoVenoso)
		expect: 'pasa la validacion'
			procedimientoInvasivo.validate()
		where: 
			accesoVenoso << ['PERIFERICO', 'CENTRAL', null]
	}
	
	def 'acceso venoso no se puede llenar con valores distintos a PERIFERICO o CENTRAL'() {
		given: 'acceso venoso distinto de PERIFERICO o CENTRAL o vacio'
			def procedimientoInvasivo = ProcedimientoInvasivo.buildWithoutSave(accesoVenoso: accesoVenoso)
		expect: 'no pasa la validacion'
			procedimientoInvasivo.validate() == false
		where:
			accesoVenoso << ['PERIFERICOSSS', 'central', 'PEDRO']
	}
	 
}
