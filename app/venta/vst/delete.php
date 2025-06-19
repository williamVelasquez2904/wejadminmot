<?php require '../../../cfg/base.php'; ?>
<?php foreach($mventa_wh->poride($ide) as $r): ?>
	<form action="" class="op2 form-horizontal">
		<?php echo $fn->modalHeader('Borrar Venta') ?>
		<div class="modal-body">
			<div class="alert alert-danger">¿19-06-2025 Realmente desea borrar esta Venta?</div>
			<div class="msj"></div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Cliente:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="des" value="<?php echo $r->cliente_venta ?>" disabled>
				</div>
			</div>
		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->venta_ide ?>">
	</form>
<?php endforeach; ?>
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
				$.post('prc-mventa_wh-delete',$(formulario).serialize(),function(data){
					if(data==1) {
						load('vst-venta-lista','','.lista');
						alert('Venta eliminada correctamente');
						cerrarmodal();
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