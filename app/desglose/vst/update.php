<?php require '../../../cfg/base.php'; ?> 
<?php foreach($mdesglose->poride($ide) as $r): ?>
	<form action="" class="op_upd_desglose form-horizontal">
		<?php echo $fn->modalHeader('Editar Desglose') ?>
		<div class="modal-body">
			<div class="msj"></div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 bolder">Monto:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="mto" value="<?php echo $r->desglose_monto ?>">
				</div>
			</div>
		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->desglose_ide ?>">
	</form>
<?php endforeach; ?>
<script>
	$(function(){
		var formulario = '.op_upd_desglose';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				des: {
					mto: true,
				}
			},

			messages: {
				des: {
					mto: 'Obligatorio',
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
				$.post('prc-mdesglose-update',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-desglose-lista','','.lista');
						alerta('.msj','success','Registro modificado correctamente');
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