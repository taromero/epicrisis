function agregarDroga(){
	agregarItem('drogasTBody', 'droga', drogasCounter, 'borrarDroga',
					 [{tipo: 'text', name: 'hemorragiaDigestivaAlta.drogas.nombre'}, 
						{tipo: 'text', name: 'hemorragiaDigestivaAlta.drogas.duracion', cssClass: 'duracion'}]);
}

function borrarDroga(num) {
	borrarItem(num, 'droga')
	setearFocusEnSiguienteElemento();
}