<?php require '../../../cfg/base.php'; 
echo "IDE=  ".$ide;?>

<?php foreach($mdesglose->lista_detallevta($ide) as $r): ?>
	<form action="" class="opdelete form-horizontal">
		<?php echo $fn->modalHeader('Borrar Venta') ?>
		<div class="modal-body">
			<div class="alert alert-danger">¿Realmente desea borrar el registro seleccionado?</div>
			<div class="msj"></div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Monto:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="nota" value="<?php echo $r->nota ?>" disabled>
				</div>
			</div>
		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="text" class="form-control" name="ide" value="<?php echo $r->desgvtadet_ide ?>">
	</form>
<?php endforeach; ?>
<script>
	$(function(){
		var formulario = '.opdelete';
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
				$.post('prc-mdesglose-delete_detalleventa',$(formulario).serialize(),function(data){
					if(data==1) {
						load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
						/*load('vst-desglase-lista','','.lista');*/
						alert('Registro eliminado correctamente');
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