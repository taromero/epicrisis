$(function(){	
	$(document).bind('keydown', 'alt+ctrl+e', agregarDroga);
	$(document).bind('keydown', 'alt+ctrl+w', bindeoBorrarDroga);
	$(document).bind('keydown', 'ctrl+return', abrirModalSave);
	$(document).bind('keydown', 'ctrl+backspace', abrirModalCancelar);
	$(document).find(':input').bind('keydown', 'alt+ctrl+e', agregarDroga);
	$(document).find(':input').bind('keydown', 'alt+ctrl+w', bindeoBorrarDroga);
	$(document).find(':input').bind('keydown', 'ctrl+return', abrirModalSave);
	$(document).find(':input').bind('keydown', 'ctrl+backspace', abrirModalCancelar);
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