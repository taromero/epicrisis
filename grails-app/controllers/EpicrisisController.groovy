import grails.converters.JSON


class EpicrisisController {

	def edit() {
		def epicrisisAEditar = Epicrisis.get(params.id)
		def drogas = Droga.findAll()
		return [epicrisis: epicrisisAEditar, drogas: drogas as JSON]
	}

	def update() {
		def epicrisisAActualizar = Epicrisis.get(params.id)

		epicrisisAActualizar.procedimientoInvasivo.properties = params.procedimientoInvasivo

		def dsf = params.hemorragiaDigestivaAlta.drogas

		epicrisisAActualizar.hemorragiaDigestivaAlta.drogas.each { it.delete(flush: false) }
		epicrisisAActualizar.hemorragiaDigestivaAlta.drogas = []

		for(int i = 0; i < dsf.nombre.size(); i++) {
			epicrisisAActualizar.hemorragiaDigestivaAlta.addToDrogas(new Droga(dsf.nombre.getAt(i), new Integer(dsf.duracion.getAt(i))))
		}

		epicrisisAActualizar.hemorragiaDigestivaAlta.properties = params.hemorragiaDigestivaAlta
		
		parsearHCC(epicrisisAActualizar, params)
		parsearEncefalopatiaHepatica(epicrisisAActualizar, params)

		epicrisisAActualizar.save(failOnError: true)
		redirect(action: 'edit', id: params.id)
	}

	private parsearEncefalopatiaHepatica(Epicrisis epicrisisAActualizar, params) {
		if(params.encefalopatiaHepatica.values().any { it != '' }) {
			if(epicrisisAActualizar.encefalopatiaHepatica == null) {
				epicrisisAActualizar.encefalopatiaHepatica = new EncefalopatiaHepatica()
			}
			epicrisisAActualizar.encefalopatiaHepatica.properties = params.encefalopatiaHepatica
			epicrisisAActualizar.encefalopatiaHepatica.save(failOnError: true)
		}
	}

	private parsearHCC(Epicrisis epicrisisAActualizar, params) {
		if(params.hcc.values().any { it != '' }) {
			if(epicrisisAActualizar.hcc == null) {
				epicrisisAActualizar.hcc = new Hcc()
			}
			epicrisisAActualizar.hcc.properties = params.hcc
			epicrisisAActualizar.hcc.save(failOnError: true)
		}
	}

}
