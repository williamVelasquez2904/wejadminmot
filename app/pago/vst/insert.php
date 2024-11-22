<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require '../../../cfg/base.php'; 
?>
<form action="" class="op1">
<?php
	$fecha_actual=date("d-m-Y");
	echo $fn->modalWidth('60%');
	echo $fn->modalHeader('Agregar Pago') ?>
	<div class="modal-body">
		<div class="msj"></div>

		<fieldset><legend>[insert.php 21-11-2024]  - INSERT PAGO</legend>
		<div class="clearfix"></div>

		<div class="form-group col-sm-2">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha</label>
			<div class="col-sm-12 ">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $fecha_actual; ?>">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>			

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Hora</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="hora" id="hora" value="16:00" >
					</div>
				</div>		

		<div class="form-group col-sm-4">
			<label for="" class="label control-label col-sm-12 bolder">Titular</label>
			<div class="col-sm-12">
				<input type="text" name="titular" class="form-control" value="Prueba 1">
			</div>
		</div>

		<div class="form-group col-sm-4">
			<label for="" class="label control-label col-sm-12 bolder">Referencia</label>
			<div class="col-sm-12">
				<input type="text" name="ref" class="form-control" value="Prueba 1">
			</div>
		</div>

		<div class="clearfix"></div>		
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Forma de Pago</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="forpago" id="forpago">
					<option value="" selected=""></option>
					<?php foreach($mforpago->lista() as $f): ?>
						<option value="<?php echo $f->forpago_ide ?>">
						<?php echo $f->forpago_descrip ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>	
		<div class="form-group col-sm-4">
			<label for="" class="label control-label col-sm-12 bolder">Archivo img </label>
			<div class="col-sm-12">
				<input type="text" name="arch_img" id="arch_img" class="form-control" value="">
			</div>
		</div>

		<div class="clearfix"></div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto" id="mto" value="100" >
					</div>
				</div>

		<div class="clearfix"></div>

	</div>
	<?php echo $fn->modalFooter(1) ?>
</form>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-1d'}); // formato dia mes año 
	})
</script>
<script>
	$(function(){
		var formulario = '.op1';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				des: {
					required: true,
				},
				forpago: {
					required: true,
				}
			},


			messages: {
				des: {
					required: 'Obligatorio',
				},
				forpago: {
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
				var $flag        =true;				
				var f_forpago    = document.getElementById('forpago').value;
				var f_arch_img    = document.getElementById('arch_img').value;
				

				if (f_forpago.trim().length==0){ 
					alert('Debe Seleccionar una  forma de pago. ');
					$flag=false;
				}

				if (f_arch_img.trim().length==0){ 
					alert('Escriba un nombre para la imagen del pago. ');
					$flag=false;
				}
				if ($flag){
					$.post('prc-mpago-insert',$(formulario).serialize(),function(data){
						if(!isNaN(data)) {
							load('vst-pago-lista','','.lista');
							if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
								$(formulario).each(function(){ this.reset() })
							} else {
								cerrarmodal();
							}
						} else {
							alerta('.msj','danger',data)
						}
					})
				}
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>