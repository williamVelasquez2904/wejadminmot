<?php require '../../../cfg/base.php'; ?>
<div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Por favor rellene el siguiente formulario para agregar un cliente.
</div>
<form action="" class="op_venta">
	<div class="msj-clien" id="errores"></div>
	<!-- Datos del cliente ############### -->
	<fieldset><legend>Datos</legend>	



			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Ide del detalle:</label>
				<input type="text" name="deta_ide" id="deta_ide" class="form-control" value="1">
			</div>	

			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Vendedor:</label>
				<input type="text" name="vende_ide" id="vende_ide" class="form-control" value="6">
			</div>	

<input type="hidden" name="ape1" class="form-control" value="">
<input type="hidden" name="ape2" class="form-control" value="">
<div class="form-actions clearfix">
	<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check"></span> Guardar Cambios</button>
</div>


</form>

<?php $mensacti='<button class="btn btn-success btn-xs" title="Activar" onclick=""><i class="fa fa-check"> Activar</i></button>'; ?>


<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-1d'});
	})
</script>

<script>
	$(function(){
		var formulario = '.op_venta';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				tipcli: {
					required: true,
				},
				ced: {
					required: true,
				},
				nom1: {
					required: true,
				},
				dir: {
					required: true,
				}
			},

			messages: {
				tipcli: {
					required: 'Obligatorio',
				},
				ced: {
					required: 'Obligatorio',
				},
				nom1: {
					required: 'Obligatorio',
				},
				dir: {
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
				$.post('prc-mcompracom-insert_venta',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-cliente-datos.personales','clien_ide='+data.trim(),'.perfil');
					} else {
						var data1=data.split(' - ');
						if (data1[0]=='Cliente se encuentra Inactivo') {
							
							

							if(confirm('Cliente se encuentra Inactivo, ¿Desea Reactivarlo?')==true) {
								$.post('prc-mcliente-reactivarlo','ide='+data1[1],function(data2){
									if(!isNaN(data2)) {
										alert('El cliente fue Reactivado satisfactoriamente')
										load('vst-cliente-datos.personales','clien_ide='+data1[1],'.perfil');
									} else {
										alerta('.msj-clien','danger',data2);
									}
								})
							}


						} else {
							alerta('.msj-clien','danger',data1[0]);
						}
						location.href="#errores"
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>