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
	$($element.closest('.container').next().find(':input:visible').eq(0)).focus()
}

function focusEnAnteriorDiv($element) {
	$($element.closest('.container').prev().find(':input:visible').eq(0)).focus()
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