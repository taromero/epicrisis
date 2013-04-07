$(function(){	
	$(document).bind('keyup', 'alt+ctrl+e', agregarDroga);
	$(document).bind('keyup', 'alt+ctrl+w', function() {
		drogasCounter--;
		borrarDroga(drogasCounter);
	});
});