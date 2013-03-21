class BootStrap {

    def init = { servletContext ->
    	environments {
            development {
				Epicrisis.findAll().each { it.delete() }
            	Epicrisis epicrisis = Epicrisis.build(hemorragiaDigestivaAlta: HemorragiaDigestivaAlta.build())
                epicrisis.hemorragiaDigestivaAlta.drogas = [new Droga('heroina', 3, epicrisis.hemorragiaDigestivaAlta), 
															new Droga('crack', 10, epicrisis.hemorragiaDigestivaAlta), 
															new Droga('speedball', 7, epicrisis.hemorragiaDigestivaAlta)] 
				
				epicrisis.save(flush: true, failOnError: true)

            }
            production {
            	//Epicrisis.build()
            }
        }
    }
    def destroy = {
    }
}
