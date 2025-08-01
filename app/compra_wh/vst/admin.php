<?php 
extract($_POST);
if(!isset($origen_opcion)){
	$origen_opcion=0;
}	
if(isset($origen_opcion)){
	if ($origen_opcion==1) require '../../../cfg/base.php'; 
	}
?>
<?php 
date_default_timezone_set('America/El_Salvador');
$fecha_hoy = date('d-m-Y');
?>
<div class="alert alert-info"> 
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Por favor rellene el siguiente formulario para agregar Compra
</div>
<button class="btn btn-info btn-sm" title="Ocultar" onclick="OcultarDiv();">
	<i class="fa fa-search"></i>
	Ocultar 
</button> 
<form action="" class="op1">
	<div class="datosnota" id="myDIV">
	<div class="msj"></div>
	<fieldset><legend>[admin.php] (31-07-2025). Datos de la Compra</legend>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Proveedor</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Proveedor" name="prov_ide" id="prov_ide" >
					<option value=""></option>
					<?php foreach($mproveedor->lista() as $p): ?>
						<option value="<?php echo $p->prove_ide ?>" <?php if ($p->prove_ide==2) { echo "selected"; } ?>> 
						<?php echo  $p->prove_razonsocial ?>
						</option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>		

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Tipo Documento</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="tipo_doc" id="tipo_doc">
					<option value=0 selected></option>
					<option value=1>Nota de Entrega</option>
					<option value=2>Factura Fiscal</option>
				</select>
			</div>
		</div>	
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nro. Factura</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="nro" id="nro" class="form-control" value="" autocomplete="off">
			</div>
		</div>
		<div class="form-group col-sm-4 col-xs-12">
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
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Factura</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $fecha_hoy; ?>">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Sub-Total en Bs.  </label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_subtotal" id="mto_subtotal" class="form-control" value="0.00" min="0.01" onchange="calculaMontoCredito();" onclick="calculaMontoCredito();">
			</div>
		</div>		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Factor de cambio</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="tasa" id="tasa" class="form-control" value="0.00" min="0.01" onchange="calculaMontoCredito();" onclick="calculaMontoCredito();">
			</div>
		</div>		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Desc.</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Porcentaje de Descuento" name="porc" id="porc"  onchange="calculaMontoContado();" onclick="calculaMontoContado();">
					<option value="" selected></option>
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
				<input type="number" name="mto_credito" id="mto_credito" class="form-control" value="0.00" min="0.01" onchange="calculaMontoCredito();" onclick="calculaMontoCredito();">
			</div>
		</div> 
		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto contado ($)</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_contado" id="mto_contado" class="form-control" value="0.00" min="0.01" onchange="calculaMontoCredito();">
			</div>
		</div>		

		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Condición</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="cond" id="cond">
					<option value=0>Contado</option>
					<option value=1>Crédito</option>
				</select>
			</div>
		</div>	
		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Tipo de factura</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="tipo" id="tipo">
					<option value="" selected=""></option>
					<?php foreach($mtipmerc->lista() as $p): ?>
						<option value="<?php echo $p->tipvta_ide ?>">
						<?php echo $p->tipvta_descrip ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>		

		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Destino</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="destino" id="destino" onchange="habilitarFlete();">
					<option value=0>Directo - (Dirección de la NOTA)- No flete</option> <!-- Si tiene carrito -->
					<option value=1>Oficina - (S/C) - SI tiene flete (Desglose)</option><!-- Calcular Flete directo  -->
					<option value=2>Oficina - (S/C) - Directo al cliente</option>       <!-- Si tiene carrito -->
					<option value=3>Ingreso a Taller</option>					
					<option value=4>Por definir</option>					

				</select>
			</div>
		</div>		

		<div class="form-group col-sm-1 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Registrar Venta</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="op_venta" id="op_venta">
					 <!-- Asociamos origen con_op venta para darle el mismo valor 1, osea en este caso pasamos el valor 1 a origen cuando la venta sea directa -->
					<option value=1>Si</option>
					<option value=2>No</option>
				</select>
			</div>
		</div>		



		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% flete</label>
			<div class="col-sm-12">
				<select name="porc_flete" id="porc_flete" onchange="calculaMontoFlete();" disabled>
  					<option value="1" >1%</option>
  					<option value="2" >2%</option>
  					<option value="" selected>Monto fijo</option>
				</select>
			</div>
		</div>
		<div  class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto flete</label>
			<div class="col-sm-12">
				<input type="text" class="form-control" name="mto_flete" id="mto_flete" onchange="validaFlete();" autocomplete="off" disabled>
			</div>
		</div>
		<div class="clearfix"></div>

	</fieldset>
	
	</div>
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
		$('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-1d'}); // formato dia mes año 
	})




/*	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});
	*/

	load('vst-compra_wh-lista','','.lista');
</script>
<script>

	function validarEntrada($input) {
	    // Expresión regular para evitar comillas simples y dobles
	    if (preg_match("/['\"]/", $input)) {
	        return false; // Entrada no válida
	    }
	    return true; // Entrada válida
	}


	function recalcular(){ 
		document.getElementById('mto_credito').value=calculaMontoCredito();
		document.getElementById('mto_contado').value=calculaMontoContado();
		document.getElementById('mto_flete').value=calculaMontoFlete();
		alert("Montos recalculados...");
		return;
	}	
	function round(value, decimals) {
  		return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
	}

	function calculaMontoCredito(){
		tasa = 0;
		mto_subtotal=0;
		montoCredito=0;

		var elemento = document.getElementById('tasa');		
		if (elemento !== null) { 
			tasa = document.getElementById('tasa').value;
		}
		var elemento = document.getElementById('mto_subtotal');
		if (elemento !== null) { 
			mto_subtotal=document.getElementById('mto_subtotal');
		}		
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
		 if (document.getElementById('tipo_doc').value==2){
		 	document.getElementById('mto_contado').value=round(montoContado*1.16,2);
		 }

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
	function habilitarFlete(){
		let f_destino   = document.getElementById('destino').value;
		
		if (f_destino == 1 || f_destino == 2 || f_destino == 3 ){
				alert("Debe asignar un monto en FLETE.");
				//document.getElementById('mto_flete').focus();
				
				porc_flete.disabled = false;
				mto_flete.disabled = false;
				document.getElementById('mto_flete').focus();
		}
		if (f_destino == 0 ){
				document.getElementById('mto_flete').value=0;
				mto_flete.disabled = true;
				porc_flete.disabled = true;
		}
	}

	function validaFlete(){
		let f_destino   = document.getElementById('destino').value;
		let v_mto_flete = document.getElementById('mto_flete').value;
		if (f_destino ==0  &&  v_mto_flete > 0 ){
				alert("Por favor verifique mnto del flete");
				document.getElementById('mto_flete').value=0;
				mto_flete.disabled = true;
				porc_flete.disabled = true;
		}
	}

	function ocultar(){
		var datosnota = document.getElementsByClassName("datosnota")[0];
		if (datosnota.style.visibility=="hidden"){
				datosnota.style.visibility="visible";

		}
		else{
			datosnota.style.visibility="hidden";
		}
	}	
	function OcultarDiv() {
	    var x = document.getElementById("myDIV");
	    if (x.style.display === "none") {
	        x.style.display = "block";
	    } else {
	        x.style.display = "none";
	    }
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
				cond: {
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
				cond: {
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
				var f_porc        = document.getElementById('porc').value;
				var f_tipo        = document.getElementById('tipo').value;
				var f_clien_ide   = document.getElementById('clien_ide').value;
				var f_prov_ide        = document.getElementById('prov_ide').value;
				var f_destino     = document.getElementById('destino').value;
				var f_mto_flete   = document.getElementById('mto_flete').value;
				var f_orden_ide   = $("#orden_ide").val();
				var $flag         =true;				
 
				//alert ("valor de destino afuera: "+f_destino.trim());

/*
				if (f_destino.trim() == 0 ){
					if f_mto_flete

				}*/ 

/*

				if (f_destino.trim() !== 0  && f_mto_flete!==0){
					alert ("entro 1. valor de destino aqui  : "+f_destino.trim());
					alert("El Monto del Flete debe ser mayor a cero (2)");
 					$flag=false;				
					document.getElementById("mto_flete").focus();

				}*/

				if (f_tipo.trim().length==0){ 
					alert('Debe Seleccionar un Tipo de factura');
					$flag=false;
				}

				if (f_porc.trim().length==0){ 
					alert('Debe Seleccionar un Porcentaje');
					$flag=false;
				}


				if (f_destino == 0 ){
//					alert("destino es cero");
					document.getElementById('mto_flete').disabled=false;
					document.getElementById('mto_flete').value=0;
					/*document.getElementById('destino').value=0;*/

				}

				if (f_clien_ide.trim().length==0){ 
					alert('Debe Seleccionar un Cliente.');
					$flag=false;
				}

				/*if (f_orden_ide=0){
					alert('Orden en cero...');

				}*/
				if (f_prov_ide.trim().length==0){
					alert('Debe seleccionar un Proveedor');
					$flag=false;
				}
				if ($flag){
					$.post('prc-mcompra_wh-insert',$(formulario).serialize(),function(data){

						if(!isNaN(data)) {
							/*alert('Valor de orden: '+f_orden_ide);*/
								//load('vst-compra_wh-lista','orden_ide='+f_orden_ide,'.lista');
								if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
									/*alert("Paso")*/
									load('vst-compra_wh-lista','','.lista');
									$(formulario).each(function(){ this.reset() })
									/*document.getElementById('tipo').selected="";*/  //revisar 12/10/2024 sabado
									document.getElementById('tipo').value="";
									document.getElementById('porc').value=f_porc;
									document.getElementById('clien_ide').value=f_clien_ide;
									document.getElementById('prov_ide').value=f_prov_ide;

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