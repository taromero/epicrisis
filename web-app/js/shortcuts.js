$(function(){
	bindShortcuts($(document));
	bindShortcuts($(':input'));
});

function bindeoBorrarDroga() {
	drogasCounter--;
	borrarDroga(drogasCounter);
}

function abrirModalSave() {
	$('#save').click();
}

function abrirModalCancelar() {
	$('#cancelar').click();
}

function focusEnSeguienteDiv($element) {
	var $nextContainer = $element.closest('.container').next()
	var $firstInput = $($nextContainer.find(':input:visible').eq(0));
	if($firstInput.length == 0) {
		$($nextContainer.find('.btn').eq(0)).focus();
	} else {
		$firstInput.focus()
	}
}

function focusEnAnteriorDiv($element) {
	var $prevContainer = $element.closest('.container').prev()
	var $firstInput = $($prevContainer.find(':input:visible').eq(0));
	if($firstInput.length == 0) {
		$($prevContainer.find('.btn').eq(0)).focus();
	} else {
		$firstInput.focus()
	}
}

function bindShortcuts($element) { //use recursividad para evitar repeticion de codigo, me recibi de capo
	if($element.size() > 1){
		$element.each(function(index, value) {
			bindShortcuts($(value));
		});
	} else {
		$element.bind('keydown', 'alt+ctrl+e', agregarDroga);
		$element.bind('keydown', 'alt+ctrl+w', bindeoBorrarDroga);
		$element.bind('keydown', 'ctrl+return', abrirModalSave);
		$element.bind('keydown', 'ctrl+backspace', abrirModalCancelar);
		$element.bind('keydown', 'ctrl+right', function(event) {
			event.preventDefault();
			focusEnSeguienteDiv($element);
		});
		$element.bind('keydown', 'ctrl+left', function(event) {
			event.preventDefault();
			focusEnAnteriorDiv($element);
		});
	}
}