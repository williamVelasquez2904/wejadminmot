<?php
require '../../../cfg/base.php'; 
echo $fn->modalWidth('50%');  
extract($_POST);
/*
var_dump('<PRE>');
var_dump("Condicion: ".$valor_cond);
var_dump('<PRE>');
*/
$desglose_ide=$_SESSION['desglose_ide'];
$_SESSION['desgvta_ide']=$desgvta_ide;

$mensaje_condicion   = Funciones::descrip_condicion($valor_cond);
?>
<form action="" class="op_detalle_vta form-horizontal">

	<?php echo $fn->modalHeader('[detalleventa.php]-290824 INCLUIR VENTA. Notas con descuento del  '."<B>".$porcentaje."%"."<B>") ?>
	<div class="modal-body">
		<div class="msj_detalle_venta"></div>
		<div class="form-group">
			<label for="" class="control-label col-sm-3 bolder">Seleccione la Nota</label>
			<div class="col-sm-9">
			<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide"  onclick="getTotalVenta();">
					<option value=""></option>
					<?php foreach($mcompra_wh->pordesglose($desglose_ide,$porcentaje) as $c): ?>
						<option value="<?php echo $c->compra_ide ?>" >
							<?php 
							echo $c->compra_num.' - '. $c->compra_porc_desc.'% - MONTO CREDITO '. $c->compra_monto_credito;
							?>
						</option>
					<?php endforeach; ?>
			</select>
			</div>				

			<label for="" class="control-label col-sm-3 bolder">Disponible</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="disp" id="disp" disabled>
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
				<input type="text" class="form-control" name="monto_contado" id="monto_contado" disabled="off">
			</div>			
			<label for="" class="control-label col-sm-3 bolder">Condición</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="f_cond" id="f_cond"  value="<?php echo $mensaje_condicion; ?>" disabled>

				<!-- <select name="cond" id="cond" onchange="calculaMontoFlete();"> -->
				<!-- <select name="cond" id="cond" >
  					<option value="0" selected>Contado</option>
  					<option value="1" >Crédito</option>
				</select> -->
			</div>
			<input type="hidden" class="form-control" name="cond" id="cond"  value="<?php echo $valor_cond; ?>" >

			<label for="" class="control-label col-sm-3 bolder">Flete</label>
			<div class="col-sm-9">
				<select name="flete" id="flete" onchange="calculaMontoFlete();">
  					<option value="1" selected>1%</option>
  					<option value="2" >2%</option>
  					<option value="0" >Monto fijo</option>
				</select>
			</div>
			<label for="" class="control-label col-sm-3 bolder">Monto flete</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="mto_flete" id="mto_flete" >
			</div>

			<input type="hidden" class="form-control" name="desglose_ide"  id="desglose_ide" value="<?php echo $desglose_ide; ?>">
			<input type="hidden" class="form-control" name="desgvta_ide" value="<?php echo $desgvta_ide ?>">	

			<input type="hidden" class="form-control" name="compra_monto_credito"  id="compra_monto_credito" value="<?php echo $c->compra_monto_credito; ?>">

			<input type="hidden" class="form-control" name="total_nota"  id="total_nota" >


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
		//alert(factor);
		montoNeto = round(document.getElementById('mto').value*factor,2);
		//alert(montoNeto);
		document.getElementById('monto_contado').value=montoNeto;

/*		valor_condicion = 0;*/
		factor =0 ;		
		factor =(document.getElementById('flete').value)/100;
		valor_condicion = document.getElementById('cond').value;
		monto=0;
		if (valor_condicion == 0) { // contado
			monto = round(document.getElementById('monto_contado').value*factor,2);
			/*document.getElementById('mto_flete').value=monto;*/
		}
		if (valor_condicion == 1) { // credito
			monto = round(document.getElementById('mto').value*factor,2);
			/*document.getElementById('mto_flete').value=monto;*/
		}
		document.getElementById('mto_flete').value=calculaMontoFlete();
	}

	function calculaMontoFlete(){
		/*valor_condicion = 0;*/
		factor =0 ;		
		factor =(document.getElementById('flete').value)/100;
		monto=0;
		valor_condicion = document.getElementById('cond').value;
		if (valor_condicion == 0) { // contado
			/*monto = round(document.getElementById('monto_contado').value*factor,2);     Confirmar si se calcula el flete con el moto contado o credito */
			monto = round(document.getElementById('mto').value*factor,2);
			document.getElementById('mto_flete').value=monto;
		}
		if (valor_condicion == 1) { // credito
			monto = round(document.getElementById('mto').value*factor,2);
			document.getElementById('mto_flete').value=monto;
		}
		return monto;

	}

	function getMontoCredito(){
		var v_compra_ide   = 	document.getElementById('compra_ide').value;
		var datosform ='compra_ide='+v_compra_ide;
		var resultado =0;
		$.post('prc-mdesglose-monto_credito_nota',datosform,function(data){
			document.getElementById('compra_monto_credito').value=data.trim();
			resultado =data.trim();
		})
		return resultado;
	}	

	function getTotalVenta(){
	/*	alert("paso getTotalVenta");*/
		var v_compra_ide   = 	document.getElementById('compra_ide').value;
		var datosform ='compra_ide='+v_compra_ide;
		document.getElementById('compra_monto_credito').value=getMontoCredito();
		$.post('prc-mdesglose-monto_total_venta',datosform,function(data){
			/*alert("valor de data en getTotalVenta : "+data.trim());*/
				document.getElementById('total_nota').value=data.trim();
				let disponible =document.getElementById('compra_monto_credito').value - document.getElementById('total_nota').value;
				/*document.getElementById('disp').value=document.getElementById('compra_monto_credito').value	-document.getElementById('total_nota').value;*/
				document.getElementById('disp').value=round(disponible,2);
				return data.trim();
				/*document.getElementById('total_nota').value=data.trim();*/
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

				if(confirm('Desea registrar esta venta ?')==true) {	
					document.getElementById("monto_contado").disabled=false;

					$.post('prc-mdesglose-insertdetalleventa',$(formulario).serialize(),function(data){
						
						if(!isNaN(data)) {
							if (data.trim()=="Monto Insuficiente"){
								alert("Verfique saldo disponible");
							}else{
							load('vst-desglose-lista_venta','','.lista_desgvta');
							alerta('.msj_detalle_venta','success',"Registro satisfactorio. ID detalle de la venta:  "+data);							
							load('vst-desglose-listadetalleventa','desgvta_ide=<?php echo $desgvta_ide; ?>','.lista_detallevta');
							if(confirm('Registro agregado correctamente.\n¿Desea agregadoar otro registro?')==true) {
								document.getElementById("monto_contado").disabled=true;
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
				}	
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>