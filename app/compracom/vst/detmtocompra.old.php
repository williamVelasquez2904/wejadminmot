<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('80%');
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
				<label for="" class="control-label col-sm-4 col-xs-12 bolder">Observación :</label>
				<div class="col-sm-8 col-xs-12 inpobservacion"></div>
			</div>
	
			<div class="form-group col-sm-12 col-xs-12">
				<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="2"> Insertar</font>
				</button>
			</div>
			
			<div class="clearfix"></div>
		<input type="text" class="form-control" name="encab_ide" value="<?php echo $compra_encab_ide ?>">
		<input type="text" class="form-control" name="orden_ide" value="<?php echo $orden_ide ?>">		
		<input type="text" class="form-control" name="reqdet_ide" value="<?php echo $det_req_ide ?>">
				
		</form>
		<div class="listadetalles"></div>
	</div>
	<?php echo $fn->modalFooter(2); ?>

<script>
	load('vst-compracom-input.monto','','.inpmon');
	load('vst-compracom-input.observacion','','.inpobservacion');

    load('vst-compracom-listadetalles','orden_ide=<?php echo $orden_ide?>&compra_encab_ide=<?php echo $compra_encab_ide ?>&det_req_ide=<?php echo $det_req_ide?>','.listadetalles');
	
</script>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script>
<script>
	$(function(){
		var formulario = '.op2';
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
				var vprove_ide = $('select[name="prove_ide"]').val();
				var vorden_ide_a = $('input[name="orden_ide"]').val();
				var vorden_ide = $('select[name="orden_ide"]').val();
				var vmtod = $('input[name="mtod"]').val();
				var vmtodr = $('input[name="mtodr"]').val();
				if (vprove_ide>0) {
					if (vorden_ide>=0 || vorden_ide_a=="crear") {
						if (vmtodr>0) {
							if (vmtod>0 && vmtodr>0) {
								$.post('prc-mcompracom-insert_montodetalle',$(formulario).serialize(),function(data){
									if(!isNaN(data)) {
										load('vst-requisicion-lista','clien_ide=<?php echo $r[0]->req_clien_ide ?>','.lista');
										load('vst-requisicion-select.prove','ide=<?php echo $r[0]->req_ide; ?>&clien_ide=<?php echo $r[0]->req_clien_ide ?>','.selpro');
										load('vst-requisicion-select.orden','clien_ide=<?php echo $r[0]->req_clien_ide ?>&prove_ide='+vprove_ide,'.selord');
										load('vst-requisicion-input.monto','ide=<?php echo $r[0]->req_ide; ?>&monreq=<?php echo $r[0]->req_monto ?>','.inpmon');
										load('vst-requisicion-listadetalles','ide=<?php echo $r[0]->req_ide; ?>&monreq=<?php echo $r[0]->req_monto ?>&clien_ide=<?php echo $r[0]->req_clien_ide ?>','.listadetalles');
										alerta('.msj','success','Se agregó correctamente el registro');
									} else {
										alerta('.msj','danger',data)
									}
								})
							} else { 
								alerta('.msj','danger','El monto debe ser mayor a cero (0)');
							}
						} else { 
							alerta('.msj','danger','El monto excede lo permitido');
						}
					} else {
						alerta('.msj','danger','Indique Orden');
					}
				} else {
					alerta('.msj','danger','Indique Proveedor');
				}
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 