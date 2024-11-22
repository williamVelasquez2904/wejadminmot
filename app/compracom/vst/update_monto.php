<?php require '../../../cfg/base.php'; ?>
<?php foreach($mcompracom->poride_detalle($ide) as $r):  ?>
	<form action="" class="op2 form-horizontal">
		<?php echo $fn->modalHeader("Editar Monto asignado en Compra. Ide de la compra: $ide") ?>
		<div class="modal-body">
			<div class="msj"></div>

			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Monto Asignado</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="number" name="mto" class="form-control" value="<?php echo$r->compracom_deta_monto ?>"  >
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Observación</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="observ" class="form-control" value="<?php echo$r->compracom_deta_observ ?>"  >
					</div>
				</div>
			</div>
			
		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->compracom_deta_ide ?>">
		<input type="hidden" class="form-control" name="compra_encab_ide" value="<?php echo $compra_encab_ide ?>">
		<input type="hidden" class="form-control" name="orden_ide" value="<?php echo $orden_ide ?>">
		<input type="hidden" class="form-control" name="req_det_ide" value="<?php echo $req_det_ide ?>">
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
				mto: {
					required: true,
				}
			},

			messages: {
				mto_contado: {
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
				$.post('prc-mcompracom-update_montodetalle',$(formulario).serialize(),function(data){
					
					if(!isNaN(data)) {
						
						alerta('.msj','success','Registro modificado correctamente');
					} else {
						alerta('.msj','danger',data)
					}
					modal('vst-compracom-detmtocompra',
								'orden_ide=<?php echo $orden_ide; ?>&compra_encab_ide=<?php echo $compra_encab_ide; ?>&det_req_ide=<?php echo $req_det_ide; ?>')
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 