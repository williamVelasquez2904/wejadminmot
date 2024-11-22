<?php require '../../../cfg/base.php';
?>
<?php foreach($mcompra_wh->poride($ide) as $r):  ?>
	<form action="" class="op2 form-horizontal">
		<?php echo $fn->modalHeader("Editar Nota : $ide") ?>
		<div class="modal-body">
			<div class="msj"></div>

			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Proveedor</label>
				<div class="col-sm-9 col-xs-12">

					<select class="form-control chosen" title="Proveedor" name="prov_ide" id="prov_ide">
						<option value=""></option>
						<?php foreach($mproveedor->lista() as $p): ?>
							<option value="<?php echo $v->prove_ide ?>" <?php echo $fn->select($p->prove_ide,$r->compra_prov_ide) ?>><?php echo $p->prove_razonsocial ?> (<?php echo $p->prove_alias ?>)
							</option>
						<?php endforeach; ?>
					</select>
				</div>
			</div>


			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Fecha envio</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="fec_envio" id="fec_envio" class="form-control fecha" value="<?php echo $r->compra_fecha_envio ?>">
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Fecha Recepción</label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<input type="text" name="fec_recep" id="fec_recep" class="form-control fecha" value="<?php echo $r->compra_fecha_recep ?>">
						<span class="input-group-addon">
							<i class="icon-calendar bigger-110"></i>
						</span>
					</div>
				</div>
			</div>			
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Sustitución </label>
				<div class="col-sm-9 col-xs-12">
					<div class="input-group">
						<select class="form-control chosen" name="estatus" id="estatus" onchange="sustituir();">
							<option value=0  <?php if ($r->compra_estatus == 0) echo 'selected' ?> >  Normal</option>										
							<option value=5  <?php if ($r->compra_estatus == 5) echo 'selected' ?>> Fue sustituida </option>
							<option value=6  <?php if ($r->compra_estatus == 6) echo 'selected' ?>> Esta Nota sustituye a otra </option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label col-sm-3 col-xs-12 bolder">Nota Sustituida</label>
				<div class="col-sm-9 col-xs-12">
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
				var f_nota_sustituida   = document.getElementById('nota_sustituida').value;
			
 
				//alert ("valor de destino afuera: "+f_destino.trim());

/*
				if (f_destino.trim() == 0 ){
					if f_mto_flete

				}*/				


				$.post('prc-mcompra_wh-update_matriz',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						load('vst-compra_wh-lista_matriz','','.lista_matriz');
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