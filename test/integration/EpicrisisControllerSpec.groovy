import grails.plugin.spock.IntegrationSpec;


class EpicrisisControllerSpec extends IntegrationSpec{
	
	def 'deberia aceptar un mapa de con listas de nombres y duraciones para actualizar las drogas'() {
		given: 'una epicrisis con 3 drogas'
			Epicrisis epi = Epicrisis.build(hemorragiaDigestivaAlta: HemorragiaDigestivaAlta.build())
			epi.save(failOnError:true)
			
			epi.hemorragiaDigestivaAlta.drogas = [new Droga('milonga', 9, epi.hemorragiaDigestivaAlta),
													new Droga('faso', 5, epi.hemorragiaDigestivaAlta),
													new Droga('fafafa', 9, epi.hemorragiaDigestivaAlta)]
			epi.save()
		when: 'le llega a la edicion un mapa con una lista de nombres y duraciones que contienen una ' + 
				'de las drogas existentes y otra nueva'
			def epiController = new EpicrisisController()
			epiController.params.id = epi.id
			epiController.params.hemorragiaDigestivaAlta = ['drogas': ['nombre': ['heroina', 'nombre que no estaba'], 'duracion': [3, 7]]]

			epiController.update()
			epi = Epicrisis.get(epi.id)
		then: 'la epicrisis debe tener solo estas 2 drogas que le llegaron en el mapa'
			epi.hemorragiaDigestivaAlta.drogas*.nombre.contains('heroina')
			epi.hemorragiaDigestivaAlta.drogas*.nombre.contains('nombre que no estaba')
			epi.hemorragiaDigestivaAlta.drogas.size() == 2
		and: 'las drogas solo deben quedar en la BD las drogas que no se borraron'
			Droga.count() == 2
	}

}
