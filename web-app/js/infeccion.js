$(function() {
	$('.resultado').each(function() {
		if($('.realizado#' + $(this).attr('id')).is(':checked') == false) {
			$(this).hide();
		}
	});
	$('.realizado').on('click', function() {
		if($(this).is(':checked')) {
			$('.resultado#' + $(this).attr('id')).show()
		} else {
			$('.resultado#' + $(this).attr('id')).hide()
		}
	});

	cultivosCounter = $('.otrosCultivos').length
});

function agregarCultivo(){
	$('#otrosCultivosTBody').append('<tr id="otrosCultivos' + cultivosCounter + '">' + 
								'<td>' + 
								 	'<input type="text" name="infeccion.otrosCultivos.nombre">' + 
								'</td>' +
								'<td>' +
									'<input type="checkbox" name="infeccion.otrosCultivos.positivo""/>' +
								'</td>' +
								'<td>' +
									'<input type="button" onclick="borrarCultivo(' + cultivosCounter + ')" value="x" class="close close-red"/>' +
								'</td>' +
							'</tr>');
	var nuevacultivo = $('#otrosCultivos' + cultivosCounter).find(':input');
	nuevacultivo.eq(0).focus();
	bindShortcuts(nuevacultivo);
	cultivosCounter++;
}

function borrarCultivo(num) {
	setearFocusEnSiguienteElemento();
	$('#otrosCultivos' + num).remove();	
}