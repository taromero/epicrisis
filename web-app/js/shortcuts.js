$(function(){	
	$(document).bind('keydown', 'alt+ctrl+e', agregarDroga);
	$(document).bind('keydown', 'alt+ctrl+w', function() {
		drogasCounter--;
		borrarDroga(drogasCounter);
	});
	$(document).bind('keydown', 'ctrl+return', function() {
		$('#save').click();
	});
	$(document).bind('keydown', 'ctrl+backspace', function() {
		$('#cancelar').click();
	});
});