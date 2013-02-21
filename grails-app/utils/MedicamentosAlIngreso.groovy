
enum MedicamentosAlIngreso {
	ESPIRONOLACTONA("ESPIRONOLACTONA"), 
	FUROSEMIDA("FUROSEMIDA"), 
	PROPRANOLOL("PROPRANOLOL"), 
	ANTIBIOTICO_PROFILACTICO("ANTIBIOTICO PROFILACTICO")
	
	private MedicamentosAlIngreso(final String text) {
		this.text = text
	}
	
	private final String text
	
	String toString() {
		return text
	}
}
