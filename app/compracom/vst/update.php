<?php require '../../../cfg/base.php'; 
?>
<!-- modificar para compra -->
<?php foreach($mcompracom->poride($ide) as $r):  ?>
	<form action="" class="op2 form-horizontal">
		<?php echo $fn->modalHeader("Editar Compra: $ide") ?>
		<div class="modal-body">
			<div class="msj"></div>

			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Fecha Compra</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="fec" id="fec" class="form-control fecha" value="<?php echo $r->compra_encab_fecha ?>">
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Fecha Envio al Transporte</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="fec_envio" id="fec_envio" class="form-control fecha" value="<?php echo $r->compra_encab_fecha_envio ?>">
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>			
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Descuento</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="number" name="porc" id="porc" class="form-control" value="<?php echo$r->compra_encab_porcentaje ?>" onchange="calculaMontoCredito();" >
					</div>
				</div>
			</div>			
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Monto Contado</label>
				<div class="col-sm-9 col-xs-12" >
					<div class="input-group">
						<input type="number" name="mto_con" id="mto_con" class="form-control" value="<?php echo$r->compra_encab_monto_contado ?>" onchange="calculaMontoCredito();" >
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Monto Crédito </label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="number" name="mto_cre" id="mto_cre" class="form-control" value="<?php echo$r->compra_encab_monto_credito ?>"  >
					</div>
				</div>
			</div>	
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Tasa</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="number" name="tasa" class="form-control" value="<?php echo$r->compra_encab_tasa ?>"  >
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Flete</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="number" name="flete" class="form-control" value="<?php echo$r->compra_encab_flete ?>"  >
					</div>
				</div>
			</div>			
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Condición</label>
				<div class="col-sm-9 col-xs-12">
					<select class="form-control chosen" name="condi" id="condi" value="<?php echo$r->compra_encab_condicion?>" >
						<option <?php if ($r->compra_encab_condicion==0) echo 'selected="true"'; ?>  value=0>Contado</option>
						<option <?php if ($r->compra_encab_condicion==1) echo 'selected="true"'; ?>  value=1>Crédito</option>
					</select>
				</div>
			</div>	
			
		</div>
		<?php echo $fn->modalFooter(1) ?>
		<input type="hidden" class="form-control" name="ide" value="<?php echo $r->compra_encab_ide ?>">
	</form>
<?php endforeach; ?>

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
	function calculaMontoCredito(){
		factor =(100-document.getElementById('porc').value)/100;
		montoCredito = round(document.getElementById('mto_con').value/factor,2);
		document.getElementById('mto_cre').value=montoCredito;
	}
</script>
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
				$.post('prc-mcompracom-update',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-compracom-lista','','.lista');
						alerta('.msj','success','Registro modificado correctamente');
					} else {
						alerta('.msj','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>