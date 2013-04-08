$(function(){
	bindShortcuts($(document));
	//bindShortcuts($(':input'));	
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
	}
}