<?php 
require '../../../cfg/base.php'; ?>
<form action="" class="op1">
<?php 

$fecha_hoy = date('d-m-Y');
$titulo="[insert_venta_taller.php] 160924. 11:24 -  PROCESAR VENTA TALLER";
echo $fn->modalWidth('80%');
echo $fn->modalHeader($titulo);
//$fecha_actual=date("Y-m-d");
$fecha_actual=date("d-m-Y");
$condicion=0;
$nombre_cliente="";

/*foreach($mcompra_wh->poride($ide) as $r): 
	$condicion=0;
	$mensaje_condicion = Funciones::descrip_condicion($r->compra_condicion);
	$row_cliente = $mcliente->poride($r->clien_ide);
	foreach($mcliente->poride($r->clien_ide) as $p): 
		$nombre_cliente=$p->clien_nombre1;
	endforeach;
endforeach;*/
?>
	<div class="modal-body">
		<div class="msj25"></div>


		<fieldset><legend>DATOS DE LA NOTA EN MATRIZ</legend>	
		<div class="form-group col-sm-5 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>
				<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="nombre_cliente" value="<?php //echo $nombre_cliente;  ?>" disabled >
				</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Mantener el mismo cliente</label>
					<div class="col-sm-12 col-xs-12">
						<select class="form-control chosen" onchange="activarCambioCliente();" id="opCliente" name="opCliente" >
							<option value="1" selected>Si</option>
							<option value="2" >No</option>
						</select>
					</div>
		</div>
		<div class="clearfix"></div>

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota Compra</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="compra_num" id="compra_num" value="<?php //echo $r->compra_num;  ?>" >
					</div>
				</div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Factura:</label>
					<div class="col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" name="fec_fac" id="fec_fac" class="form-control fecha" value="<?php //echo $r->compra_fecha;  ?>">
							<span class="input-group-addon">
								<i class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Descuento</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="compra_porc_desc" id="compra_porc_desc" value="<?php //echo $r->compra_porc_desc;  ?>" >
					</div>
				</div>				
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Contado de la Nota</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto" id="mto" value="<?php //echo $r->compra_monto;  ?>" >
					</div>
				</div>

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto a Crédito de la Nota</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto_credito_compra" id="mto_credito_compra" value="<?php //echo $r->compra_monto_credito;  ?>" >
					</div>
				</div>

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Condición de la Nota</label>
					<div class="col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="condicion_nota" value="<?php //echo $mensaje_condicion;  ?>" disabled>
					</div>
				</div>
				<div class="clearfix"></div>
		</fieldset>




		<fieldset><legend>Datos de la Venta</legend>
		<div class="form-group col-sm-6 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Cliente" name="clien_venta_ide" id="clien_venta_ide" >
					<option value=""></option>
					<?php foreach($mcliente->lista() as $c): ?>
						<option value="<?php echo $c->clien_ide ?>">
						<?php echo $c->clien_ide.' - '. $c->clien_nombre1.' - '. $c->clien_nombre2 ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<div class="form-group col-sm-3 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Origen de la Venta</label>
					<div class="col-sm-12 col-xs-12">
						<select name="origen" id="origen" disabled="on">
  							<option value="3" >Taller</option>
						</select>
					</div>
		</div> 		

		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Tipo de factura</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="tipoventa" id="tipoventa">
					<option value=""></option>
					<?php foreach($mtipmerc->lista() as $p): ?>
						<option value="<?php echo $p->tipvta_ide ?>">
						<?php echo $p->tipvta_descrip ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>		
		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota Venta</label>
			<div class="col-sm-12 col-xs-12">			
				<input type="text" class="form-control" name="nota" id="nota">
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Venta:</label>
					<div class="col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" name="fec_venta" id="fec_venta" class="form-control fecha" value="<?php echo $fecha_hoy; ?>">
							<span class="input-group-addon">
								<i class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
		</div>
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


		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Descuento</label>
					<div class="col-sm-12 col-xs-12">
						<select class="form-control chosen" onchange="" id="porc_desc" name="porc_desc" >
							<option value="0" selected>0</option>
							<option value="5" >5%</option>
							<option value="10" >10%</option>
							<option value="15" >15%</option>
							<option value="20" selected>20%</option>
							<option value="25" >25%</option>
							<option value="30" >30%</option>
							<option value="33" >33%</option>
						</select>
					</div>
		</div>

		<div class="clearfix"></div>

		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Asignado</label>
					<div class="col-sm-12 col-xs-12">
						<select class="form-control chosen" onchange="calculaMontoContado_venta();" id="porc_asig" name="porc_asig" >
							<option value="0" selected>0</option>
							<option value="5" >5%</option>
							<option value="10" >10%</option>
							<option value="15" >15%</option>
							<option value="20" >20%</option>
							<option value="25" >25%</option>
							<option value="30" >30%</option>
							<option value="33" >33%</option>
						</select>
					</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto contado</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="monto_contado" id="monto_contado" value="">
					</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Crédito</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="monto_credito" id="monto_credito" value="">
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
 		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Venta flete</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" class="form-control" name="wventa_flete" id="wventa_flete" >
			</div>
		</div> 

		<div class="clearfix"></div>
		<input type="hidden" class="form-control" name="compra_ide" id="compra_ide" value="0" >
		<input type="hidden" class="form-control" name="ide" id="ide" value="0" >
		<input type="hidden" class="form-control" name="origen" id="origen" value="3" >
		</fieldset>


	</div> <!-- del modal body -->

	<?php echo $fn->modalFooter(1) ?>
</form>

<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-1d'}); // formato dia mes año 
	})
</script>

<!-- <script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script>
 -->
<script>
	function round(value, decimals) {
  		return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
	}
	function calculaMontoContado_venta(){
		factor =0 ;
		factor =(100-document.getElementById('porc_desc').value)/100;
		montoNeto = round(document.getElementById('monto_credito').value*factor,2);
		document.getElementById('monto_contado').value=montoNeto;
		document.getElementById('mto_flete').value=calculaMontoFlete();
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
				tipoventa: {
					required: true,
				},
				des: {
					required: true,
				}
			},

			messages: {
				tipoventa: {
					required: 'Obligatorio',				
				},					
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
				var f_tipoventa          = document.getElementById('tipoventa').value;

				document.getElementById('wventa_flete').value=f_monto_flete;
				

				//alert("Monto flete: "+f_monto_flete);

				var $flag=true;
	
				if (f_tipoventa.trim().length==0){
					alert('Debe Seleccionar un tipo de venta. ');
					$flag=false;
					//document.getElementById("input1").focus();
					document.getElementById('tipoventa').focus(); // validar este focus . Fecha de act. 16/09/2024
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

				/*alert("valor de clien_venta_ide antes de enviar: "+f_clien_ide);*/
				if ($flag){
					/*$.post('prc-mventa-insert_venta_taller',$(formulario).serialize(),function(data){*/
					$.post('prc-mventa-insert_venta_2',$(formulario).serialize(),function(data){
						if(!isNaN(data)) {
							load('vst-venta_wh-lista_taller','','.lista_taller');
							if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
								$(formulario).each(function(){ this.reset() })
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