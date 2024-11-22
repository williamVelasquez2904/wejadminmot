<?php 
require '../../../cfg/base.php'; 
extract($_POST);
echo $fn->modalWidth('70%');

$titulo="PROCESAR VENTA. $ide";
?>
<?php echo $fn->modalHeader($titulo); ?>
<?php foreach($mcompra_wh->poride($ide) as $r): ?>

<form action="" class="op_detalle_vta form-horizontal">

	<div class="modal-body">
		<div class="msj_detalle_venta"></div>
		<fieldset>
		
			<legend>Datos de la Compra</legend>


		<div class="form-group">
			<label for="" class="control-label col-sm-3 bolder">Nota:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="compra_num" id="compra_num" value="<?php echo $r->compra_num;  ?>" >
			</div>			
			<label for="" class="control-label col-sm-3 bolder">Monto a Crédito</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto" id="mto" value="<?php echo $r->compra_monto_credito;  ?>" onchange="calculaMontoContado();">
			</div>			
			<label for="" class="control-label col-sm-3 bolder">% Asignado</label>
			<div class="col-sm-9">
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
			<label for="" class="control-label col-sm-3 bolder">Monto contado</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="monto_contado" id="monto_contado" >
			</div>			
			<label for="" class="control-label col-sm-3 bolder">Condición</label>
			<div class="col-sm-9">
				<select name="cond" id="cond" onchange="calculaMontoFlete();">
  					<option value="0" selected>Contado</option>
  					<option value="1" >Crédito</option>
				</select>
			</div>
			<label for="" class="control-label col-sm-3 bolder">Flete</label>
			<div class="col-sm-9">
				<select name="flete" id="flete" onchange="calculaMontoFlete();">
  					<option value="1" selected>1%</option>
  					<option value="2" >2%</option>
  					<option value="3" >Monto fijo</option>
				</select>
			</div>
			<label for="" class="control-label col-sm-3 bolder">Monto flete</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto_flete" id="mto_flete" >
			</div>
		</div>
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
