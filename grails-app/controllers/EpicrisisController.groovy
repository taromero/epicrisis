
class EpicrisisController {

	def edit() {
		def epicrisisAEditar = Epicrisis.get(params.id)
		return [epicrisis: epicrisisAEditar]
	}

	def update() {
		def epicrisisAActualizar = Epicrisis.get(params.id)

		def aux = params.hemorragiaDigestivaAlta

		epicrisisAActualizar.procedimientoInvasivo.properties = params.procedimientoInvasivo

		def dsf = params.hemorragiaDigestivaAlta.drogas

		epicrisisAActualizar.hemorragiaDigestivaAlta.drogas.each { it.delete(flush: false) }
		epicrisisAActualizar.hemorragiaDigestivaAlta.drogas = []

		for(int i = 0; i < dsf.nombre.size(); i++) {
			epicrisisAActualizar.hemorragiaDigestivaAlta.addToDrogas(new Droga(dsf.nombre.getAt(i), new Integer(dsf.duracion.getAt(i))))
		}

		epicrisisAActualizar.hemorragiaDigestivaAlta.properties = params.hemorragiaDigestivaAlta

		epicrisisAActualizar.save(failOnError: true)
		redirect(action: 'edit', id: params.id)
	}

}
