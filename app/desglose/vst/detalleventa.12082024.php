<?php 
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
			<label for="" class="control-label col-sm-3 bolder">Seleccione la Nota</label>
			<div class="col-sm-9">
			<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide"  onclick="getTotalVenta();" onchange="calculaDisponible_dos();">
					<option value=""></option>
					<?php foreach($mcompra_wh->pordesglose($desglose_ide,$porcentaje) as $c): ?>
						<option value="<?php echo $c->compra_ide ?>" >
							<?php 
							echo $c->compra_num.' - '. $c->compra_porc_desc.'% - '. $c->compra_monto_credito.' - Disponible '. number_format($c->disponible,2,".",",")
							?>
						</option>
					<?php endforeach; ?>
			</select>
			</div>				

			<label for="" class="control-label col-sm-3 bolder">Disponible</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="disp" id="disp" disabled="off">
			</div>						
			<label for="" class="control-label col-sm-3 bolder">% Asignado</label>
			<div class="col-sm-9">
				<select class="form-control chosen"  id="tasa_dcto" name="tasa_dcto" >
					<option value="0" >0</option>
					<option value="5" >5%</option>
					<option value="10" >10%</option>
					<option value="15" >15%</option>
					<option value="20" >20%</option>
					<option value="25" selected>25%</option>
					<option value="33" >33%</option>
				</select>
			</div>			
			<label for="" class="control-label col-sm-3 bolder">Monto a Crédito</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto" id="mto" onchange="calculaMontoContado();">
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

			<input type="hidden" class="form-control" name="desglose_ide"  id="desglose_ide" value="<?php echo $desglose_ide; ?>">
			<input type="hidden" class="form-control" name="desgvta_ide" value="<?php echo $desgvta_ide ?>">	
			Monto Credito
			<input type="text" class="form-control" name="compra_monto_credito"  id="compra_monto_credito" value="<?php echo $c->compra_monto_credito; ?>">
			total nota
			<input type="text" class="form-control" name="total_nota"  id="total_nota" >
			<!-- <input type="text" class="form-control" name="nota" value="<?php //echo $c->compra_num ?>"> -->

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

	function MostrarMontoDisponible(){   //Muestra el monto disponible de la nota en el campo
		document.getElementById('mto_disponible').value ="PRUEBA";
	}

	function calculaMontoContado(){
		factor =0 ;
		factor =(100-document.getElementById('tasa_dcto').value)/100;
		alert(factor);
		montoNeto = round(document.getElementById('mto').value*factor,2);
		alert(montoNeto);
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
/*	function calculaTotalVenta(){
		total_venta = document.getElementById('mto_alm').value+document.getElementById('mto_asig').value;
		document.getElementById('mto_tot').value=total_venta;
	}*/
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

	function calculaDisponible_dos(){
		var v_compra_monto_credito=0;
		var v_total_venta=0;
		v_compra_monto_credito=getMontoCredito();
		v_total_venta = getTotalVenta();
		document.getElementById('compra_monto_credito').value=v_compra_monto_credito;
		document.getElementById('total_nota').value	= v_total_venta;
/*
		getMontoCredito();
		getTotalVenta();
		let v_compra_monto_credito = parseFloat(document.getElementById('compra_monto_credito').value);
		let v_total_venta  = parseFloat(document.getElementById('total_nota').value);
		*/
		/*alert(v_compra_monto_credito);*/
		let disponible =(v_compra_monto_credito - v_total_venta);
		
		document.getElementById('disp').value= disponible;
		return 0;
	}	


	function getMontoCredito(){
		var v_compra_ide   = 	document.getElementById('compra_ide').value;
		var datosform ='compra_ide='+v_compra_ide;
		var resultado =0;
		$.post('prc-mdesglose-monto_credito_nota',datosform,function(data){
			document.getElementById('compra_monto_credito').value=data.trim();
			document.getElementById('total_nota').value=50000;

			/*alert("valor de data: "+data.trim());*/
			resultado =data.trim();
			/*return data.trim();*/
		/*		document.getElementById('compra_monto_credito').value=data.trim();*/
		})
		/*let v_compra_monto_credito = parseFloat(document.getElementById('compra_monto_credito').value);*/
		return resultado;
		
	}	

	function getTotalVenta(){
		var v_compra_ide   = 	document.getElementById('compra_ide').value;
		var datosform ='compra_ide='+v_compra_ide;
		$.post('prc-mdesglose-monto_total_venta',datosform,function(data){
			/*alert("valor de data en getTotalVenta : "+data.trim());*/
				document.getElementById('total_nota').value=data.trim();
				document.getElementById('disp').value=document.getElementById('compra_monto_credito').value	-document.getElementById('total_nota').value;
				return data.trim();
				/*document.getElementById('total_nota').value=data.trim();*/
		})

	}
/*	
	function calculaDisponible(){

		var v_compra_ide   = 	document.getElementById('compra_ide').value;
		var v_desglose_ide = 	document.getElementById('desglose_ide').value;




		var datosform ='compra_ide='+v_compra_ide;
		$.post('prc-mdesglose-monto_credito_nota',datosform,function(data){
				document.getElementById('compra_monto_credito').value=data.trim();
		})

		var datosform ='compra_ide='+v_compra_ide+'&desglose_ide='+v_desglose_ide;
		$.post('prc-mdesglose-calcula_venta_endesglose',datosform,function(data){
				document.getElementById('total_venta_nota').value=data.trim();
		})
		
		let v_total_venta_nota     = parseFloat(document.getElementById('total_venta_nota').value);
		let v_compra_monto_credito = parseFloat(document.getElementById('compra_monto_credito').value);
		let v_monto_disponible = v_compra_monto_credito - v_total_venta_nota;
		document.getElementById('mto_disponible2').value =v_monto_disponible ;
		return v_monto_disponible;
	}
/*
	function disponible(){

		let v_compra_monto_credito = parseFloat(document.getElementById('compra_monto_credito').value);
		let v_compra_monto_credito-v_total_venta_nota     = parseFloat(document.getElementById('total_venta_nota').value);
		let v_disponible=v_compra_monto_credito-v_total_venta_nota;

		document.getElementById('mto_disponible2').value = v_disponible;
		return v_disponible;

	}
*/

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
					/*alerta('.msj_detalle_venta','danger',data);*/
					if(!isNaN(data)) {
						if (data.trim()=="Monto Insuficiente"){
							alert("Verfique saldo disponible");
						}else{
						alerta('.msj_detalle_venta','danger',"Registro satisfactorio. ID detalle de la venta:  "+data);							
						load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
						if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
							$(formulario).each(function(){ this.reset() })
							} else {
								load('vst-desglose-lista_venta','','.lista_desgvta');
								cerrarmodal();
							}
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