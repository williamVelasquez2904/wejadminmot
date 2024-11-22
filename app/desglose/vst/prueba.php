<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('60%');
?>
	<?php
	var_dump("Ide:".$ide);
	
	 echo $fn->modalHeader("Prueba de ventana emergente") 
	 ?>

<?php foreach($mdesglose->pordesglose_ide($ide) as $r): ?>
	<div class="modal-body">
		<div class="msj"></div>
		<form action="" class="op20 form-horizonta">	

				<label for="" class="control-label col-sm-12 col-xs-12 bolder">eliminar nota asociada a desglose</label>

			<br>
			<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12">
				<span class="i fa fa-plus fa-2x"></span> 
				<font size="4"> Insertar</font>
			</button>
			
			<div class="clearfix"></div>
		
			<input type="hidden" class="form-control" name="ide" value="<?php echo $ide ?>"> 
			<input type="hidden" class="form-control" name="clien_ide" value="<?php echo $clien_ide ?>">
		</form>
		<div class="notas"></div>
	</div>
	<?php echo $fn->modalFooter(2); ?>
<?php endforeach; ?>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script> 
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
					if(data==1) {
						load('vst-desglose-vernotas','','.notas');
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