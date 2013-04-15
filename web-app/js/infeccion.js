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
	agregarItem('otrosCultivosTBody', 'otrosCultivos', cultivosCounter, 'borrarCultivo',
					 [{tipo: 'text', name: 'infeccion.otrosCultivos.nombre'}, 
						{tipo: 'checkbox', name: 'infeccion.otrosCultivos.positivo'}]);
}

function borrarCultivo(num) {
	borrarItem(num, 'otrosCultivos');
}

function agregarItem(tbodyId, trId, counter, borrarFnName, tds) {
	var tdsString = '';
	$(tds).each(function() {
		tdsString += '<td>' + 
				 	'<input type="' + this.tipo + '" name="' + this.name + '" class="' + this.cssClass + '">' + 
				'</td>';
	});
	$('#' + tbodyId).append('<tr id="' + trId + counter + '">' + 
								tdsString +
								'<td>' +
									'<input type="button" onclick="' + borrarFnName + '(' + counter + ')" value="x" class="close close-red"/>' +
								'</td>' +
							'</tr>');
	var newItem = $('#' + trId + counter).find(':input');
	newItem.eq(0).focus();
	bindShortcuts(newItem);
	counter++;	
}

function borrarItem(num, itemId){
	setearFocusEnSiguienteElemento();
	$('#' + itemId + num).remove();	
}