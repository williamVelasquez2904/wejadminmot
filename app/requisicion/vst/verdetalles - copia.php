<?php require '../../../cfg/base.php'; 
echo $fn->modalWidth('80%');
$r = $mrequisicion->poride($ide) ?>
	<?php echo $fn->modalHeader("Detalles de la Requisición:<b> $ide</b>, por un Monto Total de: <b>".number_format($r[0]->req_monto,2,",",".")."</b>") ?>
	<div class="modal-body">
		<div class="msj"></div>
		<form action="" class="op2 form-horizontal">	
			<div class="form-group col-sm-4 col-xs-12">
				<label for="" class="control-label col-sm-12 col-xs-12 bolder">Proveedor</label>
				<div class="col-sm-12 col-xs-12 selpro"></div>
			</div>
			<div class="form-group col-sm-4 col-xs-12">
				<label for="" class="control-label col-sm-12 col-xs-12 bolder">Orden</label>
				<div class="col-sm-12 col-xs-12 selord"></div>
			</div>	
			<div class="form-group col-sm-2 col-xs-12">
				<label for="" class="control-label col-sm-12 col-xs-12 bolder">Monto</label>
				<div class="col-sm-12 col-xs-12 inpmon"></div>
			</div>
				<br>
				<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="4"> Insertar</font>
				</button>
			
			<div class="clearfix"></div>
		
			<input type="hidden" class="form-control" name="ide" value="<?php echo $r[0]->req_ide ?>">
		</form>
		<div class="listadetalles"></div>
	</div>
	<?php echo $fn->modalFooter(2); ?>

<script>
	load('vst-requisicion-select.prove','clien_ide=<?php echo $r[0]->req_clien_ide ?>&ide=<?php echo $r[0]->req_ide; ?>','.selpro');
	load('vst-requisicion-select.orden','clien_ide=<?php echo $r[0]->req_clien_ide ?>&prove_ide=0','.selord');
	load('vst-requisicion-input.monto','ide=<?php echo $r[0]->req_ide; ?>&monreq=<?php echo $r[0]->req_monto ?>','.inpmon');
	load('vst-requisicion-listadetalles','ide=<?php echo $r[0]->req_ide; ?>&clien_ide=<?php echo $r[0]->req_clien_ide ?>&monreq=<?php echo $r[0]->req_monto ?>','.listadetalles');
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
								$.post('prc-mrequisicion-insertdetalle',$(formulario).serialize(),function(data){
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