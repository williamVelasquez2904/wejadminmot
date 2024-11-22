<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('60%'); 
?>
<?php foreach($mdesglose->pordesglose_ide($ide) as $r): ?>
	<form action="" class="op_delete_nota form-horizontal">
		<?php echo $fn->modalHeader('Borrar Nota para desglose') ?>
		<div class="modal-body">
			<div class="alert alert-danger">¿Realmente desea borrar el registro seleccionado?</div>
			<div class="msj"></div>

			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Id:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="ide2" id="ide2" value="<?php echo $r->desgnota_ide ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Cliente:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="des" value="<?php echo $r->clien_nombre1 ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Nota:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="des" value="<?php echo $r->compra_num ?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Monto:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="des" value="<?php echo $r->compra_monto ?>" disabled>
				</div>
			</div>

		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->desgnota_ide ?>">
	</form>
<?php endforeach; ?>
<script>
	$(function(){
		var formulario = '.op_delete_nota';
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
				$.post('prc-mdesglose-delete_nota',$(formulario).serialize(),function(data){
					alert(data);
					if(data==1) {
						load('vst-desglose-vernotas','','.notas');
						alert('Registro eliminado correctamente');
						cerrarmodal();
					} else {
						alerta('.msj','danger','Imposible eliminar. Existe una restricción de clave foránea. '+ data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>