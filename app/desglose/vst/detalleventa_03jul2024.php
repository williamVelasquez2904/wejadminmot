<?php 
extract($_POST);
$desglose_ide=$_SESSION['desglose_ide'];
?>
<?php require '../../../cfg/base.php'; ?>
<form action="" class="op_detalle_vta form-horizontal">
	<?php echo $fn->modalHeader('detalleventa.php 03/07/2024 - Agregar Monto para una Nota de entrega') ?>
	<div class="modal-body">
		<div class="msj_detalle_venta"></div>
		<div class="form-group">
			<label for="" class="control-label col-sm-3 bolder">Monto:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto">
			</div>
		</div>			
	</div>
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">select.notas.desglose.php Notas</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide" >
					<option value=""></option>
					<?php foreach($mcompra_wh->pordesglose($desglose_ide) as $c): ?>
						<option value="<?php echo $c->compra_ide ?>">
							<?php 
							echo $c->compra_num.' - '. $c->compra_porc_desc.' - '. $c->compra_monto.' - '. $c->clien_nombre1; 
							?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>		
	<input type="hidden" class="form-control" name="desglose_ide" value="<?php echo $desglose_ide ?>">
	<input type="hidden" class="form-control" name="desgvta_ide" value="<?php echo $desgvta_ide ?>">
	<?php echo $fn->modalFooter(1) ?>
</form>
<div class="lista_detallevta"></div>
<script>
	load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
</script>
<script>
	$(function(){
		var formulario = '.op_detalle_vta';
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
				mto: {
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
				$.post('prc-mdesglose-insertdetalleventa',$(formulario).serialize(),function(data){
					alerta('.msj_detalle_venta','danger',data);
					if(!isNaN(data)) {
						load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
						if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
							$(formulario).each(function(){ this.reset() })
						} else {
							cerrarmodal();
						}
					} else {
						alerta('.msj_detalle_venta','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>