<?php require '../../../cfg/base.php'; 
/*agrega encabezado del cruce*/
?>
<form action="" class="op1">
<?php 
	echo $fn->modalHeader('Agregar Cruce');
	echo $fn->modalWidth('90%');
?>
	<div class="modal-body">
		<div class="msj"></div>
		<fieldset><legend>[insert.php] 11-08-2025  - Agregar Cruce. Proveedor <?php echo $prov_ide ?></legend>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Tipo</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="tipo" id="tipo">
					<option value=0>Cruce</option>
					<!-- <option value=1>Devolución</option> -->
				</select>
			</div>
		</div>		
		
		<div class="form-group col-sm-10 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Seleccione Pago </label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="pago" id="pago">
					<!-- <?php //foreach($mpago->listaXstatus(0)  as $p): ?> -->
					<?php foreach($mpago->listaXstatusProv(0,$prov_ide)  as $p): ?>	
						<option value="<?php echo $p->pago_ide ?>" data-monto="<?php echo $p->pago_monto ?>">
						<?php echo "$".$p->pago_monto." | Fecha: ".$p->pago_fecha." |  Ref -  ".$p->pago_ref." |   ".$p->pago_titular ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>				
		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha" value="">
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
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto</label>
				<div class="col-sm-12 col-xs-12">
					<input type="text" class="form-control" name="mto" id="mto" value="" >
				</div>
		</div>
		<div class="form-group col-sm-6">
			<!-- <label for="" class="label control-label col-sm-12 bolder">Archivo img </label> -->
			<div class="col-sm-12">
				<input type="hidden" name="arch_img" id="arch_img" class="form-control" value="">
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
				fec: {
					required: true,
				}
			},
			messages: {
				fec: {
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
				$.post('prc-mcruce-insert_encab',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-cruce-lista','','.lista');
						if(confirm('Registro   agregado correctamente.\n¿Desea agregar otro registro?')==true) {
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
<script>
$(function(){
    $('#pago').on('change', function() {
        var monto = $(this).find('option:selected').data('monto');
        $('#mto').val(monto);
    });
});
</script>