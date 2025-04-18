 <div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Por favor rellene el siguiente formulario para agregar Compra 
</div>
<form action="" class="op1">
	<div class="msj"></div>
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
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">TIPO DE FACTURA</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="tipo" id="tipo">
					<option value=1 selected>AUTO ASIA</option>					
					<option value=2>CHYZU</option> 
					<option value=3>ACEITE</option>
					<option value=4>PACE FOX</option>
					<option value=5>CASCOS</option>
				</select>
			</div>
		</div>				
		<div class="form-group col-sm-3 col-xs-12">
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
				<select class="form-control chosen" title="Proveedor" name="prov_ide" id="prov_ide" >
					<option value=""></option>
					<?php foreach($mproveedor->lista() as $p): ?>
						<option value="<?php echo $p->prove_ide ?>">
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
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Desc.Asig.</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Porcentaje de Descuento" name="porc" id="porc"  onchange="calculaMontoContado();">
					<option value=""></option>
					<?php foreach($mtasa->lista() as $t): ?>
						<option value="<?php echo $t->tasa_monto ?>">
						<?php echo $t->descrip ?></option>
					<?php endforeach; ?>
				</select>
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
				<input type="number" name="mto_contado" id="mto_contado" class="form-control" value="0.00" min="0.01" onchange="calculaMontoCredito();">
			</div>
		</div>		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% flete</label>
			<div class="col-sm-12">
				<select name="porc_flete" id="porc_flete" onchange="calculaMontoFlete();">
  					<option value="1" selected>1%</option>
  					<option value="2" >2%</option>
  					<option value="" >Monto fijo</option>
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
<button class="btn btn-info btn-sm" title="Recalcular" onclick="recalcular();">
	<i class="fa fa-search"></i>
	Recalcular 
</button>
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
	function recalcular(){ 
		document.getElementById('mto_credito').value=calculaMontoCredito();
		document.getElementById('mto_contado').value=calculaMontoContado();
		document.getElementById('mto_flete').value=calculaMontoFlete();
		//alert("Montos recalculados...");
	}	
	function round(value, decimals) {
  		return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
	}

	function calculaMontoCredito(){
		//factor= 0;
		montoCredito=0;
		//factor =(100-document.getElementById('porc').value)/100; 
		tasa = 0;
		tasa = document.getElementById('tasa').value;
		if (document.getElementById('mto_subtotal').value > 0 )
			montoCredito = round(document.getElementById('mto_subtotal').value/tasa,2);

		document.getElementById('mto_credito').value=montoCredito;
		document.getElementById('mto_flete').value=calculaMontoFlete();
		document.getElementById('mto_contado').value=calculaMontoContado();
		return	montoCredito;
	}	
/*	function calculaMontoCredito(){
		factor= 0;
		montoCredito=0;
		factor =(100-document.getElementById('porc').value)/100;
		montoCredito = round(document.getElementById('mto_subtotal').value/factor,2);
		document.getElementById('mto_credito').value=montoCredito;
	}
*/
	function calculaMontoContado(){	
		tasa=0;
		factor= 0;
		montoContado=0;
		montoContado_bs=0;
		factor =round((100-document.getElementById('porc').value)/100,2);
		tasa = document.getElementById('tasa').value;
		montoContado_bs = round ((document.getElementById('mto_subtotal').value*factor),2);
		montoContado    = round ((montoContado_bs/tasa),2) ;
		document.getElementById('mto_contado').value=montoContado;
		calculaMontoFlete();
		/*alert("entro a calculaMontoContado...");*/
		return montoContado;
	}	
	function calculaMontoFlete(){	
		factor= 0;
		montoFlete=0;
		factor =(document.getElementById('porc_flete').value)/100;
		montoFlete = round(document.getElementById('mto_contado').value*factor,2);
		document.getElementById('mto_flete').value=montoFlete;
		return montoFlete;
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
				var f_clien_ide   = document.getElementById('clien_ide').value;
				var f_prov   = document.getElementById('prov_ide').value;
				var f_orden_ide = $("#orden_ide").val();
				
				if (f_clien_ide.trim().length==0){ 
					alert('Debe Seleccionar un cliente...');
					$flag=false;
				}

				if (f_orden_ide=0){
					alert('Orden en cero...');

				}
				if (f_prov.trim().length==0){
					alert('Debe seleccionar un proveedor');
					$flag=false;
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