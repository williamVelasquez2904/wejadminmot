<?php 
echo "prueba";
 ?>	
<div class="alert alert-info"> 
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Informacion para reporte de cobranza
</div>
<form action="" class="op1">
	<div class="msj1"></div>
	<fieldset><legend>Por favor Seleccione los paramentros de su preferencia</legend>	

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">No. Nota</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="num" class="form-control" value="">
			</div>
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Inicio:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>

		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Fin:</label>
			<div class="col-sm-12 col-xs-12">
				<div class="input-group">
					<input type="text" name="fec" id="fec" class="form-control fecha">
					<span class="input-group-addon">
						<i class="icon-calendar bigger-110"></i>
					</span>
				</div>
			</div>
		</div>


		<div class="form-group col-sm-2 col-xs-12">
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
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Vendedor wrwerw</label>
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
		<div class="form-group col-sm-1 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-2x"></span> <br>Buscar	 </button>
		</div>
	</fieldset>
</form>
<div class="clearfix"></div>

<div class="lista"></div>

<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});
	load('vst-recibo-lista','','.lista');
</script>
<script>
	$(function(){
		var formulario1 = '.op1';
		$(formulario1).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				fec: {
					required: true,
				},
				num: {
					required: true,
				}
			},

			messages: {
				fec: {
					required: 'Obligatorio',
				},
				num: {
					required: 'Obligatorio',
				}
			},

			invalidHandler: function (event, validator) { //display error alert on form submit   
				$('.alert-danger', $(formulario1)).show();
			},

			highlight: function (e) {
				$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
			},

			success: function (e) {
				$(e).closest('.form-group').removeClass('has-error').addClass('has-info');
				$(e).remove();
			},

			submitHandler: function (form) {
				var vvende_ide = $('select[name="vende_ide"]').val();
				var vclien_ide = $('select[name="clien_ide"]').val();
				if (vvende_ide>0) {
					if (vclien_ide>0) {
						$.post('prc-mrecibo-insert',$(formulario1).serialize(),function(data1){
							if(!isNaN(data1)) {
								load('vst-recibo-lista','','.lista');
								alert('Registro (RECIBO) agregado correctamente.');
								$(formulario1).each(function(){ this.reset() });
							} else {
								alerta('.msj1','danger',data1)
							}
						})
					} else {
						alerta('.msj1','danger','Indique Cliente');
					}
				} else {
					alerta('.msj1','danger','Indique Vendedor');
				}
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>
