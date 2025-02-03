<?php require '../../../cfg/base.php';
	echo $fn->modalWidth('80%');
?>
<?php foreach($mcompra_wh->poride($ide) as $r):?>
	<form action="" class="op2">
		<?php echo $fn->modalHeader("[update_matriz.php] 28-01-2025 | Actualizar  Nota : $ide") ?>
		<div class="modal-body">
			<div class="msj_upd"></div>


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
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nro. Factura</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="nro" id="nro" class="form-control" value="<?php echo $r->compra_num ?>" autocomplete="off">
			</div>
			</div>

			<div class="form-group col-sm-8 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cliente</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Cliente" name="clien_ide" id="clien_ide" >
					<option value=""></option>
					<?php foreach($mcliente->lista() as $c): ?>
						<option value="<?php echo $c->clien_ide ?>" <?php echo $fn->select($c->clien_ide,$r->clien_ide) ?>>
						<?php echo $c->clien_ide.' - '. $c->clien_nombre1.' - '. $c->clien_nombre2 ?></option>
					<?php endforeach; ?>
				</select>
			</div>
			</div>			
			<div class="clearfix"></div>


		<div class="clearfix"></div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Factura</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $r->compra_fecha; ?>">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>


			<div class="form-group col-sm-2 col-xs-12">
				<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Recepción</label>
				<div class="col-sm-12 col-xs-12">
					<div class="input-group">
						<input type="text" name="fec_recep" id="fec_recep" class="form-control fecha" value="<?php echo $r->compra_fecha_recep ?>">
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>			
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Factor de cambio</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="tasa" id="tasa" class="form-control"  min="0.01" value="<?php echo $r->compra_tasa ?>">
			</div>
		</div>	

		<div class="form-group col-sm-1 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Desc.</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Porcentaje de Descuento" name="porc" id="porc"  >
					<option value="" selected></option>
					<?php foreach($mtasa->lista() as $t): ?>
						<option value="<?php echo $t->tasa_monto ?>" <?php echo $fn->select($t->tasa_monto,$r->compra_porc_desc) ?>>
						<?php echo $t->descrip ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>	
		<div class="clearfix"></div>

		<div class="form-group  col-xs-2">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto contado ($)</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_contado" id="mto_contado" class="form-control" value="<?php echo $r->compra_monto ?>"  min="0.01">
			</div>
		</div>	

		<div class="form-group  col-xs-2">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto Crédito ($)</label>
			<div class="col-sm-12 col-xs-12">
				<input type="number" name="mto_credito" id="mto_credito" class="form-control" value="<?php echo $r->compra_monto_credito ?>"  min="0.01" >
			</div>
		</div>	
		<div class="clearfix"></div>


		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 bolder">Condición</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" name="cond" id="cond">
					<option value=0 <?php echo $fn->select(0,$r->compra_condicion) ?>>Contado</option>
					<option value=1 <?php echo $fn->select(1,$r->compra_condicion) ?>>Crédito</option>
				</select>
			</div>
		</div>	

			<div class="form-group col-sm-2 col-xs-12">
				<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Tipo de factura</label>
				<div class="col-sm-12 col-xs-12">
					<select class="form-control chosen" name="tipo" id="tipo">
						<option value="" selected=""></option>
						<?php foreach($mtipmerc->lista() as $p): ?>
							<option value="<?php echo $p->tipvta_ide ?>" <?php echo $fn->select($p->tipvta_ide,$r->compra_tipo) ?>>
							<?php echo $p->tipvta_descrip ?>
							</option>
						<?php endforeach; ?>
					</select>
				</div>
			</div>
			<div class="form-group col-sm-3 col-xs-12">
				<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Destino</label>
				<div class="col-sm-12 col-xs-12">

					<select class="form-control chosen" name="destino" id="destino" onchange="habilitarFlete();" onclick="habilitarFlete();">
						<option value=0 <?php echo $fn->select(0,$r->compra_destino) ?>>0-Directo - (Dirección de la NOTA)- No flete</option>
						<option value=1 <?php echo $fn->select(1,$r->compra_destino) ?>>1-Oficina - (S/C) - SI tiene flete</option>
						<option value=2 <?php echo $fn->select(2,$r->compra_destino) ?>>2-Oficina - (S/C) - Directo al cliente</option>
						<option value=3 <?php echo $fn->select(3,$r->compra_destino) ?>>3-Ingreso a Taller</option>					
					</select>
				</div>
			</div>
			<div class="clearfix"></div>
			<div  class="form-group col-sm-2 col-xs-12">
				<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Monto flete</label>
					<div class="col-sm-12 col-xs-12">
					<input type="text" class="form-control" name="mto_flete" id="mto_flete" onchange="validaFlete();" autocomplete="off">
				</div>
			</div>				

			<div class="form-group col-sm-2 col-xs-2">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Devolución</label>
				<div class="col-sm-12 col-xs-12">
					<div class="input-group">
						<input type="text" name="mto_dev" id="mto_dev"  value="<?php echo $r->compra_devol ?>">
					</div>
				</div>
			</div>
			<div class="clearfix"></div>

<!-- 			<div class="form-group col-sm-2 col-xs-2">
				<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Sustitución </label>
				<div class="col-sm-12 col-xs-12">
					<div class="input-group">
						<select class="form-control chosen" name="estatus" id="estatus" onchange="sustituir();">
							<option value=0  <?php //if ($r->compra_estatus == 0) echo 'selected' ?> >  Normal</option>										
						</select>
					</div>
				</div>
			</div>
 -->
			<div class="form-group col-sm-2 col-xs-2">
				<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota Sustituida</label>
				<div class="col-sm-12 col-xs-12">
					<div class="input-group">
						<input type="text" name="nota_sustituida" id="nota_sustituida"  value="<?php echo $r->compra_sustitucion ?>">
					</div>
				</div>
			</div>

		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->compra_ide ?>">
	</form>
<?php endforeach; ?>

<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	})
</script>

<script>
	function habilitarFlete(){
		let f_destino   = document.getElementById('destino').value;
		
		if (f_destino == 1 || f_destino == 2 || f_destino == 3 ){
				alert("Debe asignar un monto en FLETE.");
				document.getElementById('mto_flete').disabled=false;
				document.getElementById('mto_flete').focus=true;
				
				porc_flete.disabled = false;
				mto_flete.disabled = false;
				
		}
		if (f_destino == 0 ){
				document.getElementById('mto_flete').value=0;
				document.getElementById('mto_flete').disabled=true;
				mto_flete.disabled = true;
				porc_flete.disabled = true;
		}
	}
</script>	

<!-- <script>
	function round(value, decimals) {
  		return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
	}
	function calculaMontoCredito(){
		factor =(100-document.getElementById('porc').value)/100;
		montoCredito = round(document.getElementById('mto_con').value/factor,2);
		document.getElementById('mto_cre').value=montoCredito;
	}
</script>
 -->
<script>
	$(function(){
		var formulario = '.op2';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				mto_contado: {
					required: true,
				}
			},

			messages: {
				mto_contado: {
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
				var f_nota_sustituida   = document.getElementById('nota_sustituida').value;
			
 
				//alert ("valor de destino afuera: "+f_destino.trim());

/*
				if (f_destino.trim() == 0 ){
					if f_mto_flete

				}*/				

				$.post('prc-mcompra_wh-update_matriz',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						/*load('vst-compra_wh-lista_matriz','','.lista_matriz');*/
						/*load('vst-compra_wh-lista','','.lista');*/
						load('vst-compra_wh-lista','','.lista');
						alerta('.msj_upd','success','Registro modificado correctamente');
					} else {
						alerta('.msj_upd','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>