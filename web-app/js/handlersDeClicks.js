
var otrosPICounter
var drogasCounter

$(function(){
	otrosPICounter = $('.otros').length
	drogasCounter = $('.droga').length
});

function agregarOtrosAProcedimientoInvasivo(){
	$('#procedimientoInvasivoOtrosUL').append('<li id="otros' + otrosPICounter + '"><input name="procedimientoInvasivo.otros"/>' +
								'<input type="button" onclick="borrarOtrosaProcedimientoInvasivo(' + otrosPICounter + ')"/></li>');
	otrosPICounter++
}

function borrarOtrosaProcedimientoInvasivo(num) {
	$('#otros' + num).remove()
}

function agregarDroga(){
	$('#drogasTBody').append('<tr id="droga' + drogasCounter + '">' + 
								'<td>' + 
								 	'<input  name="hemorragiaDigestivaAlta.drogas.nombre">' + 
								'</td>' +
								'<td>' +
									'<input name="hemorragiaDigestivaAlta.drogas.duracion">' + 
								'</td>' +
								'<td>' +
									'<input type="button" onclick="borrarDroga(' + drogasCounter + ')"/>' +
								'</td>' +
							'</tr>')
	drogasCounter++
}

function borrarDroga(num) {
	$('#droga' + num).remove()
}