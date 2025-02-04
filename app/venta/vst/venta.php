<?php require '../../../cfg/base.php'; ?> 
<form action="" class="op1">
	
<?php 
$titulo="[venta.php] (31-01-2025) PROCESAR VENTA. $ide --- ORIGEN: $origen_ide ";
echo $fn->modalWidth('80%');
echo $fn->modalHeader($titulo);

$condicion=0;
$nombre_cliente="";
$fecha_actual=date("Y-m-d");

if ($origen_ide==1){
	$fecha_actual="";
}

foreach($mcompra_wh->poride($ide) as $r): 
	$condicion         = 0;
	$mensaje_condicion = Funciones::descrip_condicion($r->compra_condicion);
	$mensaje_destino   = Funciones::descrip_destino($r->compra_destino);
	$lista_igual_porc  = array(0,2);
	if (in_array($r->compra_destino,$lista_igual_porc)) $venta_porc_desc=$r->compra_porc_desc;
	$row_cliente       = $mcliente->poride($r->clien_ide);
	$nota_venta        = "";

	if ($origen_ide==1){
		$nota_venta=$r->compra_num;
	} // directa

	foreach($mcliente->poride($r->clien_ide) as $p): 
		$id_cliente_compra = $p->clien_ide;
		$nombre_cliente=$p->clien_nombre1;
		$nombre2_cliente=$p->clien_nombre2;
	endforeach;
endforeach;

?>
	<div class="modal-body">
		<div class="msj25"></div>

		<fieldset><legend>DATOS DE LA NOTA EN MATRIZ</legend>	
		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente </label>
				<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="nombre_cliente" id="nombre_cliente" value="<?php echo $nombre_cliente;  ?>" disabled >
				</div>
		</div>
		<input type="hidden" class="form-control" name="clien_ide" id="clien_ide" value="<?php echo $r->clien_ide;  ?>"  >

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Mantener el mismo cliente </label>
					<div class="col-sm-12 col-xs-12">
						<select class="form-control chosen" onchange="activarCambioCliente();" id="opCliente" name="opCliente" >
							<option value="1" selected>Si</option>
							<option value="2" >No</option>
						</select>
					</div>
		</div>
 
 		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Tipo</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="f_compra_tipo" id ="f_compra_tipo" value="<?php echo $r->tipvta_descrip ?>">
				<input type="hidden" class="form-control" name="tipoventa"       id ="tipoventa"      value="<?php echo $r->compra_tipo;  ?>" >
			</div>
		</div>
		<!-- <input type="hidden" class="form-control" name="tipo" id ="tipo" value="<?php //echo $r->compra_tipo ?>"> -->
	


		<div class="clearfix"></div> 

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota Compra</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="compra_num" id="compra_num" value="<?php echo $r->compra_num;  ?>" >
					</div>
				</div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Factura</label>
					<div class="col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" name="fec_fac" id="fec_fac" class="form-control fecha" value="<?php echo $r->compra_fecha;  ?>">
							<span class="input-group-addon">
								<i class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Descuento</label>
					<div class="col-sm-12 col-xs-12">
						<!-- <input type="text" class="form-control" name="compra_porc_desc" id="compra_porc_desc" value="<?php //echo $r->compra_porc_desc;  ?>" > -->
						<input type="text" class="form-control" name="porc_desc" id="porc_desc" value="<?php echo $r->compra_porc_desc;  ?>" >
					</div>
				</div>				
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Contado de la Nota</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto" id="mto" value="<?php echo $r->compra_monto;  ?>" >
					</div>
				</div>

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto a Crédito de la Nota</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto_credito_compra" id="mto_credito_compra" value="<?php echo $r->compra_monto_credito;  ?>" >
					</div>
				</div>

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Destino Compra</label>
					<div class="col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="compra_destino" value="<?php echo $mensaje_destino;  ?>" disabled>
					</div>
				</div>


				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Condición de la Nota</label>
					<div class="col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="condicion_nota" value="<?php echo $mensaje_condicion;  ?>" disabled>
					</div>
				</div>
				<div class="clearfix"></div>
		</fieldset>

		<fieldset><legend>Datos de la Venta</legend>
		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>

			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Cliente" name="clien_venta_ide" id="clien_venta_ide" >
					<option value="<?php echo $r->clien_ide;  ?>" selected><?php echo $r->clien_ide.' - '. $nombre_cliente.' - '. $nombre2_cliente ?></option>
					<?php foreach($mcliente->lista() as $c): ?>
						<option value="<?php echo $c->clien_ide ?>">
						<?php echo $c->clien_ide.' - '. $c->clien_nombre1.' - '. $c->clien_nombre2 ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Origen de la Venta</label>
					<div class="col-sm-12 col-xs-12">
						<select name="origen" id="origen">
  							<option value="1" selected>Directa</option>
  							<option value="2" >Por desglose</option>
  							<option value="3" >Taller</option>
						</select>
					</div>
		</div> 		
		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota Venta</label>
			<div class="col-sm-12 col-xs-12">			
				<input type="text" class="form-control" name="nota" id="nota" value="<?php echo $nota_venta ?>">
			</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Sin Fecha</label>
			<div class="col-sm-12 col-xs-12">
				<select name="sinfecha" id="sinfecha" onchange="evaluar_fecha();">
						<option value="1" selected>Sin Fecha</option>
						<option value="2" >Con Fecha</option>
				</select>
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Venta</label>
					<div class="col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $fecha_actual; ?>" disabled>
							<span class="input-group-addon">
								<i class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
		</div>
		<input type="hidden" name="fec_venta" id="fec_venta" class="form-control fecha">

		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Vendedor</label>
				<div class="col-sm-12 col-xs-12">
					<select class="form-control chosen" title="Vendedor" name="vende_ide" id="vende_ide" >
							<option value=""></option>
							<?php foreach($mvendedor->lista() as $c): ?>
								<option value="<?php echo $c->vende_ide ?>">
								<?php echo $c->vende_ide.' - '. $c->vende_alias ?></option>
							<?php endforeach; ?>
						</select>
					</div>
		</div>
		<div class="clearfix"></div>
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Asignado</label>
					<div class="col-sm-12 col-xs-12">
						<!-- <select class="form-control chosen" onchange="calculaMontoContado_venta();" id="porc_desc" name="porc_desc" > -->
						<select class="form-control chosen" onchange="calculaMontoContado_venta();" id="porc_asig" name="porc_asig" >			
							<option value="0" selected>0</option>
							<option value="5" >5%</option>
							<option value="10" <?php if ($venta_porc_desc==10) echo "selected"?>>10%</option >
							<option value="15" <?php if ($venta_porc_desc==15) echo "selected"?>>15%</option>
							<option value="20" <?php if ($venta_porc_desc==20) echo "selected"?>>20%</option>
							<option value="25" <?php if ($venta_porc_desc==25) echo "selected"?>>25%</option>
							<option value="30" <?php if ($venta_porc_desc==30) echo "selected"?>>30%</option>
							<option value="33" <?php if ($venta_porc_desc==33) echo "selected"?>>33%</option>
							<option value="35" <?php if ($venta_porc_desc==35) echo "selected"?>>35%</option>
							<option value="38" <?php if ($venta_porc_desc==38) echo "selected"?>>38%</option>
						</select>
					</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto contado</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="monto_contado" id="monto_contado" value="<?php echo $r->compra_monto; ?>">
					</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Crédito</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="monto_credito" id="monto_credito" value="<?php echo $r->compra_monto_credito; ?>">
					</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Condición</label>
					<div class="col-sm-12 col-xs-12">
						<select name="cond_venta" id="cond_venta" onchange="calculaMontoFlete();">
  							<option value="0" selected>Contado</option>
  							<option value="1" >Crédito</option>
						</select>
					</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Flete</label>
					<div class="col-sm-12 col-xs-12">
						<select name="flete" id="flete" onchange="calculaMontoFlete();">
							<option value="0" selected></option>
  							<option value="1" >1%</option>
  							<option value="2" >2%</option>
  							<option value="3" >Monto fijo</option>
						</select>
					</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto flete</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="mto_flete" id="mto_flete" >
			</div>
		</div>

		<input type="hidden" class="form-control" name="wventa_flete" id="wventa_flete" >
		<!-- <div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Venta flete</label >
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="wventa_flete" id="wventa_flete" >
			</div>
		</div> -->

		<div class="clearfix"></div>
		<input type="hidden" class="form-control" name="compra_ide" id="compra_ide" value="<?php echo $r->compra_ide;  ?>" >
		<input type="hidden" class="form-control" name="ide" id="ide" value="0" >
		<!-- <input type="hidden" class="form-control" name="origen" id="origen" value="<?php //echo $origen_ide;  ?>" > -->
		</fieldset>


	</div> <!-- del modal body -->

	<?php echo $fn->modalFooter(1) ?>
</form>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script>
<script>
	function round(value, decimals) {
  		return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
	}
	function calculaMontoContado_venta(){
		factor =0 ;
		factor =(100-document.getElementById('porc_asig').value)/100;
		montoNeto = round(document.getElementById('monto_credito').value*factor,2);
		document.getElementById('monto_contado').value=montoNeto;
		document.getElementById('mto_flete').value=calculaMontoFlete();
	}

	function activarCambioCliente(){ // Asigna datos si es el mismo cliente 
		// si el mismo cliente de la orden de compra corresponde a la venta se asignan los mismo valores
/*		var op ;
		op = document.getElementById('opCliente').value	;
		if op ==1 {
			document.getElementById('clien_venta_ide').value=document.getElementById('nombre_cliente').value	;
		}
		if op ==2 {
			document.getElementById('clien_venta_ide').value=0	;
		}
		*/
	return true;	

	}

	function evaluar_fecha(){ // Evalua si la venta lleva fecha
							  // si se maraca la casilla sin fecha en campo fecha de la venta se deshabilita
		var f_sinfecha;
		f_sinfecha = document.getElementById('sinfecha').value;

		if (f_sinfecha == "1") {  // sin  fecha
			/*alert("sin fecha");*/
			document.getElementById('fec').value="";
			document.getElementById('fec').disabled=true;
/*			fec.value = "";
			fec.disabled = true;
*/		}
		if (f_sinfecha == "2") {  // con fecha
/*			alert("con  fecha");*/
			document.getElementById('fec').disabled=false;
			/*fec.disabled = false;*/
			fec.value = "<?php echo date("Y-m-d"); ?>";

		}
		return true;
	}

	function calculaMontoFlete(){
		valor_condicion = 0;
		factor =0 ;		
		if ( (document.getElementById('flete').value!= 0  ) ) {
			factor =(document.getElementById('flete').value)/100;	
		}
		

		
		monto=0;
		valor_condicion = document.getElementById('cond_venta').value;
		if (valor_condicion == 0) { // contado
			monto = round(document.getElementById('monto_contado').value*factor,2);
			document.getElementById('mto_flete').value=monto;
		}
		if (valor_condicion == 1) { // credito
			monto = round(document.getElementById('monto_credito').value*factor,2);
			document.getElementById('mto_flete').value=monto;
		}

		if ( (document.getElementById('flete').value== 3  ) ) {
			document.getElementById('mto_flete').value="";	
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

				var f_clien_ide          = document.getElementById('clien_venta_ide').value;
				var f_vende_ide          = document.getElementById('vende_ide').value;
				var f_monto_flete        = document.getElementById('mto_flete').value;
				var f_nota               = document.getElementById('nota').value;
				var f_compra_num		 = document.getElementById('compra_num').value;
				var f_origen     		 = document.getElementById('origen').value;

				var f_sinfecha   		 = document.getElementById('sinfecha').value;
				var f_fec   	    	 = document.getElementById('fec').value;
				var f_tipo   	    	 = document.getElementById('tipoventa').value;
				alert(f_tipo);

				//document.getElementById('fec_venta').value = document.getElementById('fec').value;
				fec_venta.value          = f_fec;


				document.getElementById('wventa_flete').value=f_monto_flete;
				

				//alert("Monto flete: "+f_monto_flete);

				var $flag=true;
	
				if (f_nota.trim() !== f_compra_num.trim() &&  f_origen !== 3 ){ // 3 es taller
					if(confirm('Los número de NOTAS son diferentes \n¿Desea cambiar Origen de la Venta?')==true) {
								$flag=false;
								document.getElementById('origen').value=3;
								document.getElementById('compra_ide').value=0;
							} else {
								document.getElementById('origen').value=1;
							}
				}	

				if (f_nota.trim() !== f_compra_num.trim() &&  f_origen == 3 ){ // 3 es taller
					if(confirm('Los número de NOTAS son diferentes \n¿Desea Incluir la Venta?')==true) {
								$flag=true;
								document.getElementById('origen').value=3;
								document.getElementById('compra_ide').value=0;
							} else {
								$flag=false;
								document.getElementById('origen').value=1;
							}
				}					

				if (f_clien_ide.trim().length==0){
					alert('Debe Seleccionar un cliente...');
					$flag=false;
				}
				if (f_vende_ide.trim().length==0){
					alert('Debe Seleccionar un Vendedor...');
					$flag=false;
				}

				if (f_nota.trim().length==0){
					alert('Nota no puede ser vacio...');
					$flag=false;
				}
				if ($flag){

					$.post('prc-mventa-insert_venta_2',$(formulario).serialize(),function(data){
						if(!isNaN(data)) {
							load('vst-compra_wh-lista','','.lista');
							if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
								$(formulario).each(function(){ this.reset() })
								cerrarmodal();
							} else {
								cerrarmodal();
							}
						} else {
							alerta('.msj25','danger',data)
						}
					})

				}
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>