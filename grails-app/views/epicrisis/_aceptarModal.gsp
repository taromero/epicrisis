<script>
  $(function(){ 
    $('#confirmar').click(function() {
      $('#savePosta').click();
    });
    $('#cerrar').click(function() {
      $('#aceptarModal').modal('hide');
    });
  });
</script>

<div class="modal hide fade" id="aceptarModal">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Guardar Cambios?</h3>
  </div>
  <div class="modal-body">
    <p>Confirma si queres guardar los cambios</p>
  </div>
  <div class="modal-footer">
    <input type="button" id="cerrar" class="btn" value="Cerrar"/>
    <input type="button" id="confirmar" class="btn btn-primary" value="Guardar"/>
  </div>
</div>