<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('90%');
//$r = $mrequisicion->poride($orden_ide)
$r = $mcompracom->listacompracomdeta($compra_encab_ide,$orden_ide,$det_req_ide);
//var_dump($r);
?>
<?php echo $fn->modalHeader("Compra Id:<b> $compra_encab_ide</b>, Orden ide: <b>$orden_ide</b>, Det. Req: <b>$det_req_ide</b>  ") ?>

	<div class="modal-body">
		<div class="msj"></div>
		<form action="" class="op2 form-horizontal">	
			
			<div class="form-group col-sm-12 col-xs-12">
				<label for="" class="control-label col-sm-4 col-xs-12 bolder">Monto:</label>
				<div class="col-sm-4 col-xs-12 inpmon"></div>
			</div>

			<div class="form-group col-sm-12 col-xs-12">
				<label for="" class="control-label col-sm-4 col-xs-12 bolder">Observación. :</label>
				<div class="col-sm-8 col-xs-12 inpobservacion"></div>
			</div>
	
			<div class="form-group col-sm-12 col-xs-12">
				<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="2"> Insertar</font>
				</button>
			</div>
			
			<div class="clearfix"></div>
		<input type="hidden" class="form-control" name="encab_ide" value="<?php echo $compra_encab_ide ?>">
		<input type="hidden" class="form-control" name="orden_ide" value="<?php echo $orden_ide ?>">		
		<input type="hidden" class="form-control" name="reqdet_ide" value="<?php echo $det_req_ide ?>">
				
		</form>
		<div class="listadetalles"></div>
		<button class="btn btn-info btn-sm" title="Ver Listado de Ordenes con Estatus Enviadas y/o Cerradas" onclick="modal('vst-compracom-detacompra','orden_ide=<?php echo $orden_ide?>&compra_encab_ide=<?php echo $compra_encab_ide ?>')">
			<i class="fa fa-arrow-left"></i>
			Volver
		</button>

	</div>
	<?php echo $fn->modalFooter(2); ?>

<script>
	load('vst-compracom-input.monto','','.inpmon');
	load('vst-compracom-input.observacion','','.inpobservacion');
    load('vst-compracom-listadetalles','orden_ide=<?php echo $orden_ide?>&compra_encab_ide=<?php echo $compra_encab_ide ?>&det_req_ide=<?php echo $det_req_ide?>','.listadetalles');
</script>
<script>
	$(function(){
		var formulario = '.op2';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				tipcli: {
					required: true,
				},
				nom1: {
					required: true,
				},
				ape1: {
					required: true,
				},
			},

			messages: {
				tipcli: {
					required: 'Obligatorio',
				},
				nom1: {
					required: 'Obligatorio',
				},
				ape1: {
					required: 'Obligatorio',
				},
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
				$.post('prc-mcompracom-insertmontodetalle',$(formulario).serialize(),function(data){
						if(!isNaN(data.trim())) {
							alert('Cambios guardados correctamente');
						} else {
							alerta('.msj-pac','danger',data.trim())
						}
						load('vst-compracom-detacompra','orden_ide=<?php echo $orden_ide?>&compra_encab_ide=<?php echo $compra_encab_ide ?>','');
				

				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>