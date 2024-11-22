 <div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Por favor rellene el siguiente formulario para agregar Compra
</div>
<form action="" class="op1">

	<fieldset><legend>Datos de la Compra</legend>	

		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nro. Factura</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="nro" id="nro" class="form-control" value="">
			</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Condición:</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="cond" id="cond">
					<option value=0>Contado</option>
					<option value=1>Crédito</option>
				</select>
			</div>
		</div>		
		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Destino:</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="destino" id="destino">
					<option value=0>Directo - (Dirección de la NOTA)- No flete</option>
					<option value=1>Oficina - (S/C) - si flete</option>
					<option value=3>Ingreso a Taller</option>					
				</select>
			</div>
		</div>		

		<div class="clearfix"></div>			
		<div class="form-group col-sm-4 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Proveedor</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Cliente" name="prov_ide" id="prov_ide" >
					<option value=""></option>
					<?php foreach($mproveedor->lista() as $p): ?>
						<option value="<?php echo $c->clien_ide ?>">
						<?php echo $p->prove_cedrif.' - '. $p->prove_razonsocial ?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>		
		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Cliente" name="clien_ide" id="clien_ide" >
					<option value=""></option>
					<?php foreach($mcliente->lista() as $c): ?>
						<option value="<?php echo $c->clien_ide ?>">
						<?php echo $c->clien_ide.' - '. $c->clien_nombre1.' - '. $c->clien_nombre2 ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-3x"></span>  </button>
		</div>

		<div class="clearfix"></div>	

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Factura:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha" value="2024-05-13">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Sub-Total en Bs.  </label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_subtotal" id="mto_subtotal" class="form-control" value="0.00" min="0.01" onchange="calculaMontoCredito();">
			</div>
		</div>		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Factor de cambio</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="tasa" id="tasa" class="form-control" value="0.00" min="0.01" onchange="calculaMontoCredito();">
			</div>
		</div>		
		<div class="form-group col-sm-1 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Descuento</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="porc" id="porc" class="form-control" value="0.00" max="100.00" onchange="calculaMontoCredito();">
			</div>
		</div>	
		<div class="clearfix"></div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Crédito ($)</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_credito" id="mto_credito" class="form-control" value="0.00" min="0.01" onchange="calculaMontoCredito();">
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto contado ($)</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_contador" id="mto_contado" class="form-control" value="0.00" min="0.01" onchange="calculaMontoCredito();">
			</div>
		</div>		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto flete</label>
			<div class="col-sm-12">
				<select name="flete" id="flete" onchange="calculaMontoFlete();">
  					<option value="1" selected>1%</option>
  					<option value="2" >2%</option>
  					<option value="3" >Monto fijo</option>
				</select>
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto flete</label>
			<div class="col-sm-12">
				<input type="text" class="form-control" name="mto_flete" id="mto_flete" >
			</div>
		</div>
		<div class="clearfix"></div>



	</fieldset>
</form>
<div class="clearfix"></div>
<div class="space-10"></div>
<div class="lista"></div>

<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});
	load('vst-compra_wh-lista','','.lista');
</script>
<script>
	function round(value, decimals) {
  		return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
	}
	function calculaMontoCredito(){
		factor= 0;
		montoCredito=0;
		factor =(100-document.getElementById('porc').value)/100;
/*		montoCredito = round(document.getElementById('mto_subtotal').value/factor,2);
		document.getElementById('mto_credito').value=montoCredito;
*/
		montoCredito = round(document.getElementById('mto_subtotal').value/factor,2);
		document.getElementById('mto_credito').value=montoCredito;
	}
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
				},
				orden_ide: {
					required: true,
				},				
				control: {
					required: true,
				}
			},

			messages: {
				fec: {
					required: 'Obligatorio',
				},
				orden_ide: {
					required: 'Obligatorio',
				},				
				control: {
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
				var f_orden_ide = $("#orden_ide").val();
				if (f_orden_ide=0){
					alert('Orden en cero...');

				}
				$.post('prc-mcompra_wh-insert',$(formulario).serialize(),function(data){

					if(!isNaN(data)) {
						/*alert('Valor de orden: '+f_orden_ide);*/
							load('vst-compra_wh-lista','orden_ide='+f_orden_ide,'.lista');
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