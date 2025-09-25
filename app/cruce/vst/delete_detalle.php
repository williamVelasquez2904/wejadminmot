<?php require '../../../cfg/base.php'; ?>
<?php $row_detalle = $mcruce->poride_detalle($ide); ?>

<?php if(empty($row_detalle)): ?>
    <div class="modal-body">
        <div class="alert alert-warning">No existe detalle para el registro seleccionado.</div>
    </div>
<?php else: ?>
    <?php foreach($row_detalle as $r): ?>
        <form action="" class="op2 form-horizontal">
            <?php echo $fn->modalHeader('delete_detalle.php - Borrar detalle del cruce... 25-09-2025') ?>

            <div class="modal-body">
                <div class="alert alert-danger">¿Realmente desea borrar el registro seleccionado .....?</div>
                <div class="msj"></div>
                <div class="form-group">
                    <label for="" class="control-label col-sm-3 bolder">Nota:</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="compra" value="<?php echo $r->compra_num ?>" disabled>
                    </div>
                </div>
            </div>
            <?php echo $fn->modalFooter(1) ?>
            <input type="text" class="form-control" name="ide" value="<?php echo $r->crudeta_ide ?>">
        </form>
    <?php endforeach; ?>
<?php endif; ?>
<!-- Botón Marcar como enviado en la parte superior derecha -->
<button type="button" class="btn btn-secondary btn-sm pull-right" id="btnMarcarEnviado" style="margin:10px;">
    <span class="fa fa-upload"></span>
    <font size="4"> Marcar como enviado</font>
</button>

<div class="modal-body">
    <form action="" class="op_insert_det_cruce">
        <!-- ...contenido del formulario... -->
    </form>
    <div class="lista_detalle"></div>
</div>
<script>
	$(function(){
		var formulario = '.op2';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				
			},

			messages: {
				
			},

			invalidHandler: function (event, validator) { //display error alert on form submit   
				$('.alert-danger', $(formulario)).show();
			},

			highlight: function (e) {
				$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
			},

			success: function (e) {
				$(e).closest('.form-group').removeClass('has-error').addClass('has-info');
				$(e).remove();
			},

			submitHandler: function (form) {
				$.post('prc-mcruce-delete_detalle',$(formulario).serialize(),function(data){
					if(data==1) {
						alert('antes de llamar de nuevo a insert detalle');
						/*modal('vst-cruce-insert_detalle','ide=<?php echo $r->cruce_encab_ide ?>');*/

						load('vst-cruce-lista_detalle','','.admin_cruce');
						alert('Registro eliminado correctamente');
						/*cerrarmodal();*/
					} else {
						alerta('.msj','danger','Imposible eliminar. Existe una restricción de clave foránea')
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>