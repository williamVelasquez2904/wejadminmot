<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('80%');
//$r = $mrequisicion->poride($ide)
/*$r = $mcompra->pordesglose_ide($ide);*/
/*$r = $mdesglose->pordesglose_ide($ide);*/

?>
	<?php echo $fn->modalHeader("[vernotas.php] (11-09-2024) Seleccionar notas de entrega del cliente <b>$clien_ide</b>") ?>
	<!-- <?php //echo $fn->modalHeader("*vernotas.php* Seleccionar notas de entrega del cliente <b>$clien_ide</b>") ?> -->
	<div class="modal-body">
		<div class="msj"></div>
		<form action="" class="op9 form-horizontal">	

				<label for="" class="control-label col-sm-12 col-xs-12 bolder">SELECCIONE nota de entrega</label>
				<div class="col-sm-12 col-xs-12 selnotas"></div>

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

<script>
	load('vst-desglose-select.notas','ide=<?php echo $ide ?>&clien_ide=<?php echo $clien_ide; ?>','.selnotas');
	load('vst-desglose-lista_notas','ide=<?php echo $ide ?>','.notas');
</script>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script>
<script>
	$(function(){
		var formulario = '.op9';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				mtod: {
					required: true,
				}
			},

			messages: {
				mtod: {
					required: 'Obligatorio',
				}
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
				$.post('prc-mdesglose-insertnota',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-desglose-lista_notas','ide=<?php echo $ide ?>','.notas');
						alerta('.msj','success','Registro incluido correctamente');
					} else {
						alerta('.msj','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 