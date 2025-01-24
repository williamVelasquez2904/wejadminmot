<?php require '../../../cfg/base.php'; ?>
<form action="" class="op1 form-horizontal">
	<?php echo $fn->modalWidth('90%');
	echo $fn->modalHeader('Agregar Pago') ?>
	<div class="modal-body">
		<div class="msj"></div>



		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Referencia</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="ref" id="ref" class="form-control" value="" autocomplete="off" value="pedro perez">
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Banco Origen</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="" name="banco_origen" id="banco_origen" >
					<option value=""></option>
					<?php foreach($mbanco->lista() as $b): ?>
						<option value="<?php echo $b->banco_ide ?>">
						<?php echo $b->banco_descrip ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>	
		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Banco Destino</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Banco destino" name="banco_destino" id="banco_destino"  value="5">
					<option value=""></option>
					<?php foreach($mbanco->lista() as $b): ?>
						<option value="<?php echo $b->banco_ide ?>">
						<?php echo $b->banco_descrip ?></option>
					<?php endforeach; ?>

				</select>
			</div>
		</div>	

		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Persona que envia</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="envia" id="envia" class="form-control" value="" autocomplete="off" value="prueba pago">
			</div>
		</div>


		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Bs. </label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_bs" id="mto_bs" class="form-control" value="0" >
			</div>
		</div>		


		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto dolar ($). </label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto" id="mto" class="form-control" value="0.00" min="0.01" value="500">
			</div>
		</div>		

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Tasa</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="tasa" id="tasa" class="form-control" value="0.00"  value="0">
			</div>
		</div>		

	</div>
	<?php echo $fn->modalFooter(1) ?>
</form>

<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});
	load('vst-pago-lista','','.lista');
</script>
<script>
	$(function(){
		var formulario = '.op1';
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
				alert(data);
				$.post('prc-mpago-insert_prueba',$(formulario).serialize(),function(data){

					if(!isNaN(data)) {

						/*load('vst-pago-lista','','.lista');*/
						if(confirm('Registro agregado correctamente en prueba.\n¿Desea agregar otro registro?')==true) {
							$(formulario).each(function(){ this.reset() })
						} else {
							cerrarmodal();
						}
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