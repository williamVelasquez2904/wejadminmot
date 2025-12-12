<?php require '../../../cfg/base.php'; 
/*var_dump($ide);*/
echo $fn->modalWidth('80%');
$r = $mrecibo->poride($ide)  //	 encabezado  del recibo  ?> 
	<?php echo $fn->modalHeader("[verdetalles.php]. 04122024 -  Detalles del recibo : ".$r[0]->recencab_num." - ".$r[0]->cliente) ?>  
	<div class="modal-body">
		<div class="msj"></div>
		<form action="" class="op2 form-horizontal">	
			<fieldset><legend> DATOS DE LA NOTA ASOCIADA AL RECIBO  </legend>
				<div class="form-group col-sm-4 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Seleccione la Nota</label>
					<div class="col-sm-12 col-xs-12">
							<select class="form-control chosen" title="nota" name="venta_ide" id="venta_ide">
							<option value="">Seleccione</option>
							<?php foreach($mventa->porcliente($clien_ide) as $c): ?>
								<option value="<?php echo $c->venta_ide ?>">
									<?php 
									echo $c->venta_num.' - Monto contado: '. $c->venta_monto.' - Monto Crédito: '. $c->venta_monto_credito.' - Flete:  '. $c->venta_flete; 
									?>
								</option>
							<?php endforeach; ?>
						</select>
					</div>
				</div>
				<input type="hidden" class="form-control" name="encab_ide" id="encab_ide" value="<?php echo $ide; ?>">

			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto venta:</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto_venta" id="mto_venta" disabled >
					</div>
			</div>
			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Flete:</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto_flete" id="mto_flete" disabled >
					</div>
			</div>			
			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">TOTAL:</label>
					<div class="col-sm-12 col-xs-12 inp_mto_total"></div>
			</div>			


				<button class="btn btn-primary btn-sm pull-right col-sm-2 col-xs-12" onclick="insertNota()">
					<span class="i fa fa-plus fa-2x"></span> 
					<font size="4"> Insertar</font>
				</button>
			</fieldset>
			<div class="clearfix"></div>

			<fieldset><legend>DATOS DEL PAGO</legend>

			<!-- 04-12-2025	 -->
		<div class="form-group col-sm-9 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Pago</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Pago" name="pago_ide" id="pago_ide" >
					<option value=""></option>
					<?php foreach($mpago->lista() as $c): ?>
						<option value="<?php echo $c->pago_ide ?>">
						<?php echo $c->pago_ide.' - '.$c->pago_titular.' - '. $c->pago_monto.' - '. $c->pago_fecha ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<div class="clearfix"></div>
		<!--  fin de actualizaciones de 04-12-2025	 -->		
			<div class="form-group col-sm-2 col-xs-12">
				<label for="" class="label control-label col-sm-12 bolder">Forma de pago</label>
					<div class="col-sm-12 col-xs-12">
						<select class="form-control chosen" title="forma de Pago" name="forpago" id="forpago">
							<option value="">Seleccione</option>
							<?php foreach($mpago->formapago_lista() as $fp): ?>
								<option value="<?php echo $fp->forpago_ide ?>">
									<?php 
									echo $fp->forpago_descrip; 
									?>
								</option>
							<?php endforeach; ?>
						</select>
					</div>
			</div>
			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto:</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto" id="mto" autocomplete="off" >
					</div>
			</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>
		
			<div class="form-group col-sm-4 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Referencia:</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="ref" id="ref" autocomplete="off" >
					</div>
			</div>			
			<div class="clearfix"></div>

			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Factor de cambio :</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="factor" id="factor" onchange="calculaMontoenDolares();">
					</div>
			</div>			
			<div class="form-group col-sm-2 col-xs-12">
					<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto en Dolares :</label>
					<div class="col-sm-12 col-xs-12">
						<input type="text" class="form-control" name="mto_dolar" id="mto_dolar" >
					</div>
			</div>		
			<div class="form-group col-sm-2 col-xs-12">
				<div class="btn-group">
					<button class="btn btn-danger btn-sm" title="Registrar Pago" onclick="insertPago()">
						<img src="img/imagenes/moneda1.png" alt = "Registrar Pago"/>
					</button>
				</div>
			</div>		


			</fieldset>

            <!-- Nueva sección separada para PAGO EN EFECTIVO -->
            <fieldset><legend>PAGO EN EFECTIVO</legend>
                <div class="form-group col-sm-2 col-xs-12">
                    <label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Efectivo:</label>
                    <div class="col-sm-12 col-xs-12">
                        <input type="text" class="form-control" name="mto_efectivo" id="mto_efectivo" autocomplete="off">
                    </div>
                </div>

                <div class="form-group col-sm-2 col-xs-12">
                    <label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Efectivo:</label>
                    <div class="col-sm-12 col-xs-12">
                        <div class="input-group">
                            <input type="text" name="fec_efectivo" id="fec_efectivo" class="form-control fecha">
                            <span class="input-group-addon">
                                <i class="icon-calendar bigger-110"></i>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="form-group col-sm-2 col-xs-12">
                    <label for="" class="label control-label col-sm-12 col-xs-12 bolder">Referencia Efectivo:</label>
                    <div class="col-sm-12 col-xs-12">
                        <input type="text" class="form-control" name="ref_efectivo" id="ref_efectivo" autocomplete="off">
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="form-group pull-left">
                    <div class="btn-group">
                        <button class="btn btn-success btn-sm" title="Registrar Pago en Efectivo" onclick="registrarEfectivo()">
                            <i class="fa fa-money"></i> 
                            REGISTRAR EFECTIVO
                        </button>
                    </div>
                </div>
            </fieldset>

        </form>
		</div>			
		
		<div class="listadetalles"></div>
		<div class="lista_notas"></div>
		<div class="lista_pagos"></div>
	<div class="btn-group">
				<button class="btn btn-danger btn-sm" title="Distribuir el pagado entre todas las notas" onclick="distribuir()">
					<i class="fa fa-plus"></i> 
					<u>D</u>ISTRIBUIR PAGO.&nbsp;&nbsp;
				</button>
		</div>
	</div>
	<?php echo $fn->modalFooter(2); ?>
<script>
load('vst-recibo-lista_notas','encab_ide=<?php echo $ide ?>','.lista_notas');
load('vst-recibo-lista_pagos','encab_ide=<?php echo $ide ?>','.lista_pagos');

function distribuir(){ 
		alert("Paso 1");
		var v_encab_ide    = document.getElementById('encab_ide').value;
		if (confirm("¿Desea distribuir el monto : "+v_encab_ide+"?")==true){
			$.post('prc-mrecibo-distribuir_pago','encab_ide='+v_encab_ide,function(data){
				alert("Despues de distribuir. ");
				/*load('vst-recibo-lista_notas','encab_ide=<?php //echo $ide ?>','.lista_notas');
				load('vst-recibo-lista_pagos','encab_ide=<?php //echo $ide ?>','.lista_pagos');*/
				if (data.trim()==false)
					alert("No hay monto para distribuir");
				else 
					alert("Monto distribuido: "+data);

/*				if(!isNaN(data.trim())) {
					alert("Paso.... 21/08/2024");	
					load('vst-recibo-lista_notas','encab_ide=<?php //echo $ide ?>','.lista_notas');
					load('vst-recibo-lista_pagos','encab_ide=<?php //echo $ide ?>','.lista_pagos');
				} else {
					alerta('.msj','danger',data);
				}*/

			})
		}
} 

function calculaMontoEnDolares(){	
		tasa=0;
		factor= 0;
		montoDolar=0;
		
		/*factor =round((100-document.getElementById('factor').value)/100,2);*/
		factor =round(document.getElementById('factor').value,2);
		tasa = document.getElementById('tasa').value;
		montoDolar = round ((document.getElementById('mto').value*factor),2);
		
		document.getElementById('mto_dolar').value=montoDolar;

		/*alert("entro a calculaMontoContado...");*/
		return montoDolar;
	}	
function insertPago(){
		var v_encab_ide    = document.getElementById('encab_ide').value;
		var v_pago_forma   = document.getElementById('forpago').value;
		var v_pago_monto   = document.getElementById('mto').value;
		var v_pago_fecha   = document.getElementById('fec').value;
		var v_pago_ref     = document.getElementById('ref').value;

		var v_pago_ide    = document.getElementById('pago_ide').value;

		alert("v_pago_fecha: "+v_pago_fecha);
/*		var v_pago_fecha   = "2024-01-01";*/
		var v_pago_titular = "WV";

		if (confirm("¿Desea realmente registrar este pago ? ")==true){
			var datosform ='encab_ide='+v_encab_ide+'&pago_forma='+v_pago_forma+'&pago_monto='+v_pago_monto+'&pago_fecha='+v_pago_fecha+'&pago_titular='+v_pago_titular+'&pago_ref='+v_pago_ref;

			var datosform ='encab_ide='+v_encab_ide+'&pago_ide='+v_pago_ide;			

			$.post('prc-mrecibo-insert_pago',datosform,function(data){
				if(!isNaN(data)) {
					load('vst-recibo-lista_pagos','encab_ide=<?php echo $ide ?>','.lista_pagos');
				} else {
					alerta('.msj','danger',data);
				}
			})
		}
	};	
function insertNota(){
	    $flag=true;
		var v_encab_ide    = document.getElementById('encab_ide').value;
		var v_venta_ide    = document.getElementById('venta_ide').value;
		if (v_venta_ide.trim().length==0){
				alert('Debe Seleccionar una venta.');
				$flag=false;
		}
		if (v_encab_ide.trim().length==0){
				alert('encabezado en blanco.');
				$flag=false;
		}

		if (confirm("¿Desea realmente registrar esta NOTA ? ")==true){
			var datosform ='encab_ide='+v_encab_ide+'&venta_ide='+v_venta_ide;
			$.post('prc-mrecibo-insert_nota',datosform,function(data){
				/*alert("paso por insert nota. Valor de data"+data);*/
				if(!isNaN(data)) {
					load('vst-recibo-lista_notas','encab_ide=<?php echo $ide ?>','.lista_notas');
				} else {
					alerta('.msj','danger',data);
				}
			})
		}
}	

/*function distribuir(ide){
		if (confirm("¿Desea distribuir el monto : "+ide+"?")==true){
			$.post('prc-mfacturacionex-deleteventatemp','numtck='+ticket,function(data){
				if(data==1) {
					//alert("Venta Eliminada Exitosamente");
					//location.reload();
					load('vst-facturacionexpress-adminproduc','clien_ide=<?php //echo $cliente ?>','.factura');
					getFocus("produc");
				} else if(data==2) {
					alert("La Venta NO puede ser eliminada, porque ya fue procesada.");
					//location.reload();
					load('vst-facturacionexpress-adminproduc','clien_ide=<?php //echo $cliente ?>','.factura');
					getFocus("produc");
				} else {
					alerta('.msj','danger',data);
				}
			})
		}
	}*/

</script>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script>
<script>
	$(function(){
		var formulario = '.op2';
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

			},

			invalidHandler: function (form) {
			}
		});
	})
</script>