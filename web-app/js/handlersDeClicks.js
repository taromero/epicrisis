
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
	otrosPICounter++
}

function borrarOtrosaProcedimientoInvasivo(num) {
	$('#otros' + num).remove()
}

function agregarDroga(){
	$('#drogasTBody').append('<tr id="droga' + drogasCounter + '">' + 
								'<td>' + 
								 	'<input type="text" name="hemorragiaDigestivaAlta.drogas.nombre">' + 
								'</td>' +
								'<td>' +
									'<input type="text" name="hemorragiaDigestivaAlta.drogas.duracion">' + 
								'</td>' +
								'<td>' +
									'<input type="button" onclick="borrarDroga(' + drogasCounter + ')" value="x" class="close close-red"/>' +
								'</td>' +
							'</tr>')
	drogasCounter++
}

function borrarDroga(num) {
	$('#droga' + num).remove()
}