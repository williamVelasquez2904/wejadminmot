<?php 
//require '../cfg/base.php'; 
require '../../../cfg/base.php';
echo $fn->modalWidth('40%');  
extract($_POST);
$desglose_ide=$_SESSION['desglose_ide'];

$_SESSION['desgvta_ide']=$desgvta_ide;
?>
<form action="" class="op_detalle_vta form-horizontal">

	<?php echo $fn->modalHeader('Incluir Venta. NOTAS CON DESCUENTO DEL   '."<B>".$porcentaje."%"."<B>") ?>
	<div class="modal-body">
		<div class="msj_detalle_venta"></div>



		<div class="form-group">
			<label for="" class="control-label col-sm-3 bolder">Nota:</label>
			<div class="col-sm-9">
			<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide" >
					<option value=""></option>
					<?php foreach($mcompra_wh->pordesglose($desglose_ide,$porcentaje) as $c): ?>
						<option value="<?php echo $c->compra_ide ?>" onchange="calculaDisponible();">
							<?php 
							echo $c->compra_num.' - '. $c->compra_porc_desc.' - '. $c->compra_monto_credito.' - '. $c->clien_nombre1; 
							?>
						</option>
					<?php endforeach; ?>
			</select>
			</div>			

			<label for="" class="control-label col-sm-3 bolder">Monto disponible</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto_disponible" id="mto_disponible" >
			</div>			

			<label for="" class="control-label col-sm-3 bolder">Monto a Crédito</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto" id="mto" onchange="calculaDisponible(<?php echo $c->compra_num ?>);">
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

			<input type="hidden" class="form-control" name="desglose_ide" value="<?php echo $desglose_ide; ?>">
			<input type="hidden" class="form-control" name="desgvta_ide" value="<?php echo $desgvta_ide ?>">
			<input type="text" class="form-control" name="nota" value="<?php echo $c->compra_num ?>">
		</div>
	</div>
	<?php echo $fn->modalFooter(1) ?>
</form>
<div class="lista_detallevta"></div>
<script>
	load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
</script>
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
	function calculaTotalVenta(){
		total_venta = document.getElementById('mto_alm').value+document.getElementById('mto_asig').value;
		document.getElementById('mto_tot').value=total_venta;
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
	function calculaDisponible(nota){
		var nota = 	document.getElementById('nota').value;
		alert("entro a calcular disponibilidad...");alert('nota.....: '+nota);
		$.post('prc-mdesglose-total_venta_nota','nota='+nota,function(data){
				alert(data);
				document.getElementById('mto_disponible').value="PRUEBA";
				if(data==1) {
					document.getElementById('mto_flete').value=monto;
					
				} else {
					alert('Error al ejecutar proceso:  ',data);
				}
		})
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
				$.post('prc-mdesglose-insertdetalleventa',$(formulario).serialize(),function(data){
					alerta('.msj_detalle_venta','danger',data);
					if(!isNaN(data)) {
						load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
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