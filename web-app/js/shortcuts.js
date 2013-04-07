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

function bindShortcuts($element) {
	$element.bind('keydown', 'alt+ctrl+e', agregarDroga);
	$element.bind('keydown', 'alt+ctrl+w', bindeoBorrarDroga);
	$element.bind('keydown', 'ctrl+return', abrirModalSave);
	$element.bind('keydown', 'ctrl+backspace', abrirModalCancelar);
}