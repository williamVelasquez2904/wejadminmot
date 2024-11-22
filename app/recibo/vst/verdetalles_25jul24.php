<?php require '../../../cfg/base.php'; 

echo $fn->modalWidth('80%');
$r = $mrecibo->poride($ide)  //	 encabezado  del recibo  ?> 
	<?php echo $fn->modalHeader("Detalles del recibo: ".$r[0]->recencab_num) ?>  
	<div class="modal-body">
		<div class="msj"></div>
		<form action="" class="op2 form-horizontal">	
			
				<div class="form-group col-sm-6 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Seleccione la Nota</label>
					<div class="col-sm-12 col-xs-12">
							<select class="form-control chosen" title="nota" name="venta_ide" id="venta_ide">
							<option value="">Seleccione</option>
							<?php foreach($mventa->porcliente($clien_ide) as $c): ?>
								<option value="<?php echo $c->venta_ide ?>">
									<?php 
									echo $c->venta_num.' - Monto contado: '. $c->venta_monto.' - Monto Crédito: '. $c->venta_monto_credito.' - Flete:  '. $c->venta_flete; 
									?>
								</option>
							<?php endforeach; ?>
						</select>
					</div>
				</div>
			<input type="text" class="form-control" name="encab_ide" id="encab_ide" value="<?php echo $ide; ?>">

			<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="4"> Insertar</font>
			</button>
			<div class="clearfix"></div>

			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto venta:</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto_venta" id="mto_venta" >
					</div>
			</div>
			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Flete:</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto_flete" id="mto_flete" >
					</div>
			</div>			
			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">TOTAL:</label>
					<div class="col-sm-12 col-xs-12 inp_mto_total"></div>
			</div>			

			<div class="clearfix"></div>

			<div class="form-group col-sm-2 col-xs-12">
				<label for="" class="label control-label col-sm-12 bolder">TIPO De pago</label>
					<div class="col-sm-12 col-xs-12">
						<select class="form-control chosen" name="tipo" id="tipo">
							<option value=1 selected>Completo</option>					
							<option value=2>Parcial</option>
						</select>
				</div>
			</div>				

			<div class="form-group col-sm-2 col-xs-12">
				<label for="" class="label control-label col-sm-12 bolder">Forma de pago</label>
					<div class="col-sm-12 col-xs-12">
						<select class="form-control chosen" name="forpago" id="forpago">
							<option value=1 selected>Efectivo</option>					
							<option value=2>Zelle</option>
							<option value=3>Transferencia Bancaria</option>
						</select>
				</div>
			</div>	
			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto:</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto" id="mto" >
					</div>
			</div>

			<div class="clearfix"></div>

		</form>
		<div class="listadetalles"></div>
		<div class="lista_notas"></div>
	</div>
	<?php echo $fn->modalFooter(2); ?>

<script>
	load('vst-recibo-listanotas','clien_ide=<?php echo $r[0]->recencab_clien_ide ?>','.selord');
	load('vst-recibo-listapagos','clien_ide=<?php echo $r[0]->recencab_clien_ide ?>','.selord');


	load('vst-recibo-select.notas','clien_ide=<?php echo $r[0]->recencab_clien_ide ?>','.selord');
	load('vst-recibo-monto_total','	','.inp_mto_total');
</script>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
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
				}
			},

			messages: {
				des: {
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
				/*alert(data);*/
				$.post('prc-mrecibo-insert_nota',$(formulario).serialize(),function(data){

					if(!isNaN(data)) {
						load('vst-recibo-lista_notas','encab_ide=<?php echo $ide ?>','.lista_notas');
						if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
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