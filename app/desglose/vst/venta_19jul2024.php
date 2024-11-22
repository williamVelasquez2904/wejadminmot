<?php 
require '../../../cfg/base.php'; 
extract($_POST);
/*
var_dump("<pre>");
var_dump($_SESSION['s_usua_tienda']);
var_dump("</pre>");
*/
echo $fn->modalWidth('80%');
$fecha_actual=date("Y-m-d");
$condicion=0;
$nombre_cliente="";

$titulo="PROCESAR VENTA. $ide";
?>
<?php echo $fn->modalHeader($titulo); ?>
<?php foreach($mcompra_wh->poride($ide) as $r): 
	$condicion=0;
	$mensaje_condicion = Funciones::descrip_condicion($r->compra_condicion);
	$row_cliente = $mcliente->poride($r->clien_ide);
	foreach($mcliente->poride($r->clien_ide) as $p): 
		$nombre_cliente=$p->clien_nombre1;
	endforeach;
?>
<?php endforeach; ?>
<form action="" class="op_detalle_vta form-horizontal">
	<div class="modal-body">
		<div class="msj_detalle_venta"></div>
			<fieldset><legend>DATOS DE LA NOTA EN MATRIZ</legend>	

				<div class="form-group col-sm-5 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="nombre_cliente" value="<?php echo $nombre_cliente;  ?>" disabled >
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="compra_num" id="compra_num" value="<?php echo $r->compra_num;  ?>" >
					</div>
				</div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Factura:</label>
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
						<input type="text" class="form-control" name="compra_porc_desc" id="compra_porc_desc" value="<?php echo $r->compra_porc_desc;  ?>" >
					</div>
				</div>				
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto a Crédito de la Nota</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto" id="mto" value="<?php echo $r->compra_monto_credito;  ?>" onchange="calculaMontoContado();">
					</div>
				</div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Condición de la Nota</label>
					<div class="col-sm-12 col-xs-12">
							<input type="text" class="form-control" name="condicion_nota" value="<?php echo $mensaje_condicion;  ?>" disabled>
					</div>
				</div>
				<div class="clearfix"></div>

				<fieldset><legend>Datos de la Venta</legend>	

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


				<div class="clearfix"></div>
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="venta_num" id="venta_num" value="<?php echo $r->compra_num;  ?>" >
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
			<div class="clearfix"></div>
				
				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Venta:</label>
					<div class="col-sm-12 col-xs-12">
						<div class="input-group">
							<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $fecha_actual; ?>">
							<span class="input-group-addon">
								<i class="icon-calendar bigger-110"></i>
							</span>
						</div>
					</div>
				</div>


				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Asignado</label>
					<div class="col-sm-12 col-xs-12">
						<select class="form-control chosen" onchange="calculaMontoContado();" id="tasa_dcto" name="tasa_dcto" >
							<option value="0" >0</option>
							<option value="5" >5%</option>
							<option value="10" >10%</option>
							<option value="15" >15%</option>
							<option value="20" >20%</option>
							<option value="25" selected>25%</option>
							<option value="33" >33%</option>
						</select>
					</div>
				</div>

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto contado</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="monto_contado" id="monto_contado" >
					</div>
				</div>

				<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Condición</label>
					<div class="col-sm-12 col-xs-12">
						<select name="cond" id="cond" onchange="calculaMontoFlete();">
  							<option value="0" selected>Contado</option>
  							<option value="1" >Crédito</option>
						</select>
					</div>
				</div>
				<div class="clearfix"></div>

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

			</fieldset>
		
		<fieldset>
	</div>
	</fieldset>

</form>
<?php endforeach; ?>
<?php echo $fn->modalFooter(1) ?>
<script>
	function round(value, decimals) {
  		return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
	}
	function calculaMontoContado(){
		factor =0 ;
		factor =(100-document.getElementById('tasa_dcto').value)/100;
		montoNeto = round(document.getElementById('mto').value*factor,2);
		document.getElementById('monto_contado').value=montoNeto;

		valor_condicion = 0;
		factor =0 ;		
		factor =(document.getElementById('flete').value)/100;
		valor_condicion = document.getElementById('cond').value;
		monto=0;
		if (valor_condicion == 0) { // contado
			monto = round(document.getElementById('monto_contado').value*factor,2);
			document.getElementById('mto_flete').value=monto;
		}
		if (valor_condicion == 1) { // credito
			monto = round(document.getElementById('mto').value*factor,2);
			document.getElementById('mto_flete').value=monto;
		}
	}
	function calculaMontoFlete(){
		valor_condicion = 0;
		factor =0 ;		
		factor =(document.getElementById('flete').value)/100;
		monto=0;
		valor_condicion = document.getElementById('cond').value;
		if (valor_condicion == 0) { // contado
			monto = round(document.getElementById('monto_contado').value*factor,2);
			document.getElementById('mto_flete').value=monto;
		}
		if (valor_condicion == 1) { // credito
			monto = round(document.getElementById('mto').value*factor,2);
			document.getElementById('mto_flete').value=monto;
		}

	}
</script>
<script>
	$(function(){
		var formulario = '.op_detalle_vta';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				compra_num: {
					required: true,
				}
			},

			messages: {
				compra_num: {
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
				$.post('prc-mventa-insert_venta_2',$(formulario).serialize(),function(data){

					if(!isNaN(data)) {

						if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
							$(formulario).each(function(){ this.reset() })
						} else {
							cerrarmodal();
						}
					} else {
						alerta('.msj_detalle_venta','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 