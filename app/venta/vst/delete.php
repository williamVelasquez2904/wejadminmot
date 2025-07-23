<style>
  @keyframes parpadeo {
    0% { opacity: 1; }
    50% { opacity: 0.3; }
    100% { opacity: 1; }
  }
  /* Estilo para el botón habilitado */
  #btnDelete.enabled {
    background-color: #28a745 !important;
    border-color: #28a745 !important;
    color: white !important;
  }
</style>
<?php require '../../../cfg/base.php'; ?>
<?php foreach($mventa_wh->poride($ide) as $r): ?>
  <form action="" class="op2 form-horizontal">
    <?php echo $fn->modalHeader('22julBorrar Venta') ?>
    
    <div class="modal-body">
      <!-- Mensaje de advertencia parpadeante -->
      <div class="alert alert-danger text-center bolder" style="font-size:1.4em;">
        <div style="animation: parpadeo 1s infinite;">
          ⚠️ ¿Realmente desea borrar esta Venta: <?php echo $ide ?>?
        </div>

        <!-- Checkbox de confirmación -->
        <div class="form-group text-center" style="margin-top:10px;">
          <label>
            <input type="checkbox" id="confirmDelete"> He leído y confirmo que deseo borrar esta venta.
          </label>
        </div>
      </div>

      <div class="msj"></div>

      <!-- Información del cliente -->
      <div class="form-group">
        <label for="" class="control-label col-sm-3 bolder">Cliente:</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" name="des" value="<?php echo $r->cliente_venta ?>" disabled>
        </div>
      </div>
    </div>

    <!-- Botones del modal -->
    <div class="modal-footer">
      <button class="btn btn-default" type="button" data-bb-handler="cancel" data-dismiss="modal">Cerrar</button>
      <button class="btn btn-primary" type="submit" id="btnDelete" disabled>
        Borrar
      </button>
    </div>

    <!-- Campo oculto con el ID de la venta -->
    <input type="hidden" class="form-control" name="ide" value="<?php echo $r->venta_ide ?>">
  </form>
<?php endforeach; ?>

<script>
$(document).on('change', '#confirmDelete', function() {
  const deleteBtn = $('#btnDelete');

  if ($(this).is(':checked')) {
    deleteBtn.prop('disabled', false);
    deleteBtn.addClass('enabled').html('🗑️ Confirmar Borrado');
  } else {
    deleteBtn.prop('disabled', true);
    deleteBtn.removeClass('enabled').html('Borrar');
  }
});
</script>

<!-- Validación del formulario y envío -->
<script>
  $(function(){
    var formulario = '.op2';
    $(formulario).validate({
      errorElement: 'div',
      errorClass: 'help-block',
      focusInvalid: true,
      rules: {},

      messages: {},

      highlight: function (e) {
        $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
      },

      success: function (e) {
        $(e).closest('.form-group').removeClass('has-error').addClass('has-info');
        $(e).remove();
      },

      submitHandler: function (form) {
        if (confirm("¿Estás seguro de que deseas borrar esta venta permanentemente?")) {
          $.post('prc-mventa_wh-delete',$(form).serialize(),function(data){
            if(data==1) {
              load('vst-venta-lista','','.lista');
              alert('VENTA ELIMINADA CORRECTAMENTE !!!');
              cerrarmodal();
            } else {
              alerta('.msj','danger','Imposible eliminar. Existe una restricción de clave foránea');
            }
          });
        }
      }

    });
  });
</script>