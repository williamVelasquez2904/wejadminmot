<?php require '../../../cfg/base.php'; 

//05/12/2023

date_default_timezone_set('America/Lima');
$hoy = date("Y-m-d");
$date = new DateTime($hoy );

//echo $date->format('Y/m/d');
// Fin act 05/12/2023
/******************************************************/
$date_w="2023-01-01";
extract($_POST);
?>
<div class="">
	<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Datos de la Requisicion</label>
</div>

<div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Por favor rellene el siguiente formulario para agregar requisicion.
</div>
<form action="" class="op1">
	<div class="msj1"></div>
	<fieldset><legend>Datos de la requisicion</legend>	
		<input type="hidden" name="clien_ide" class="form-control" value="<?php echo $clien_ide; ?>">
		<div class="form-group col-sm-4 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Vendedor</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Vendedor" name="vende_ide" id="vende_ide" >
					<option value=""></option>
					<?php foreach($mvendedor->lista() as $m): ?>
						<option value="<?php echo $m->vende_ide ?>"
							<?php if ($m->vende_ide==1) echo "selected";?> >
						<?php echo $m->vende_ide.'-'. $m->vende_razonsocial ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>	
		<div class="form-group col-sm-4 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Requisicion:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $date->format('Y/m/d'); ?>">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Requisicion</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto" class="form-control" value="0.00" min="0.01">
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right">
				<span class="i fa fa-check fa-2x"></span> 
				<font size="4">Insertar</font>
			</button>
		</div>
	</fieldset>
</form>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script>
<script>
	$(function(){
		var formulario1 = '.op1';
		$(formulario1).validate({
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

				$.post('prc-mrequisicion-insert',$(formulario1).serialize(),function(data1){
					if(!isNaN(data1)) {
						load('vst-requisicion-lista','clien_ide=<?php echo $clien_ide; ?>','.lista');
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