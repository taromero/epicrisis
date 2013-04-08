
var otrosPICounter
var drogasCounter

$(function(){
	otrosPICounter = $('.otros').length
	drogasCounter = $('.droga').length
});

function agregarOtrosAProcedimientoInvasivo(){
	$('#procedimientoInvasivoOtros').append('<tr id="otros' + otrosPICounter + '"><td><input type="text" name="procedimientoInvasivo.otros"/></td>' +
								'<td><input type="button" onclick="borrarOtrosaProcedimientoInvasivo(' + otrosPICounter + ')"' + 
								'value="x" class="close close-red"/></td></tr>');
	var nuevoOtro = $('#otros' + otrosPICounter).find(':input').eq(0);
	nuevoOtro.focus();
	bindShortcuts(nuevoOtro);
	otrosPICounter++
}

function borrarOtrosaProcedimientoInvasivo(num) {
	setearFocusEnSiguienteElemento();
	$('#otros' + num).remove();
}

function agregarDroga(){
	$('#drogasTBody').append('<tr id="droga' + drogasCounter + '">' + 
								'<td>' + 
								 	'<input type="text" name="hemorragiaDigestivaAlta.drogas.nombre">' + 
								'</td>' +
								'<td>' +
									'<input type="text" name="hemorragiaDigestivaAlta.drogas.duracion"  class="duracion">' + 
								'</td>' +
								'<td>' +
									'<input type="button" onclick="borrarDroga(' + drogasCounter + ')" value="x" class="close close-red borrarDroga"/>' +
								'</td>' +
							'</tr>')
	var nuevaDroga = $('#droga' + drogasCounter).find(':input');
	nuevaDroga.eq(0).focus();
	bindShortcuts(nuevaDroga);
	drogasCounter++;
}

function borrarDroga(num) {
	setearFocusEnSiguienteElemento();
	$('#droga' + num).remove();
}

function setearFocusEnSiguienteElemento(){
	var active = document.activeElement
	var inputs = $(active).closest('tbody').find(':input');
  	if(inputs.eq( inputs.index(active)+ 1 ).focus().length == 0) { //si estoy en el ultimo tr
  		var trs = $(active).closest('tbody').find('tr');
  		trs.eq( trs.length-2 ); //voy al anteultimo tr (el ultimo es el que voy a eliminar)
  		trs.find(':input').eq(0).focus();
  	}
}

$(function() {
	$('#save').click(function() {
		$('#aceptarModal').modal();
	});

	$('#cancelar').click(function() {
		$('#cancelarModal').modal();
		$('#confirmarCancelacion').focus();
	});
});