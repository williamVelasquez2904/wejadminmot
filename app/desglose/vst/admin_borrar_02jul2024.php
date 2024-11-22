<?php 
$row = $mcliente->lista();

foreach($mdesglose->ultimo() as $u):
	$ultimo  =  $u->ultimo;
endforeach;
?>
<div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Por favor rellene el siguiente formulario para cada desglose
</div>
<form action="" class="admindesglose">
	<div class="msj1"></div>
	<fieldset><legend>Datos del Desglose 02/07/2024</legend>	


		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">fecha</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>
		<div class="form-group col-sm-6 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Descripción</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="descrip" id="descrip" class="form-control" value="">
			</div>
		</div>
		<div class="form-group col-sm-3 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-2x"></span> <br>Insertar </button>
		</div>
	</fieldset>
</form>
<div class="clearfix"></div>
<div class="space-10"></div>
<div class="lista"></div>
<div class="clientes"></div>
<div class="venta"></div>

<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});
	load('vst-desglose-lista','','.lista');
	load('vst-desglose-lista_notas','ide=<?php echo $ultimo; ?>','.notas');
</script>
<script>
	$(function(){
		var formulario1 = '.admindesglose';
		$(formulario1).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				fec: {
					required: true,
				},
				descrip: {
					required: true,
				}
			},

			messages: {
				fec: {
					required: 'Obligatorio',
				},
				descrip: {
					required: 'Obligatorio',
				}
			},

			invalidHandler: function (event, validator) { //display error alert on form submit   
				$('.alert-danger', $(formulario1)).show();
			},

			highlight: function (e) {
				$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
			},

			success: function (e) {
				$(e).closest('.form-group').removeClass('has-error').addClass('has-info');
				$(e).remove();
			},

			submitHandler: function (form) {
					$.post('prc-mdesglose-insert',$(formulario1).serialize(),function(data1){
						if(!isNaN(data1)) {
							load('vst-desglose-lista','','.lista');
							alert('Registro agregado correctamente.');
							$(formulario1).each(function(){ this.reset() });
						} else {
							alerta('.msj1','danger',data1)
						}
					})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 