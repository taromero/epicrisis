<script>
  $(function(){ 
    $('#confirmarCancelacion').click(function() {
      $('#abortPosta').click();
    });
    $('#cerrarCancelarModal').click(function() {
      $('#cancelarModal').modal('hide');
    });
    $('#cancelarModal').on('shown', function () {
      $('#confirmarCancelacion').focus();
    })
  });
</script>

<div class="modal hide fade" id="cancelarModal">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Cancelar/abortar los Cambios?</h3>
  </div>
  <div class="modal-body">
    <p>Perderas todos los cambios realizados</p>
  </div>
  <div class="modal-footer">
    <input type="button" id="cerrarCancelarModal" class="btn" value="Cerrar"/>
    <input type="button" id="confirmarCancelacion" class="btn btn-primary" value="Cancelar"/>
  </div>
</div>