
 <div class="alert alert-info">
	<i class="fa fa-exclamation-triangle fa-2x pull-left red"></i> Por favor rellene el siguiente formulario para agregar orden.
</div>
<form action="" class="op1">
	<div class="msj1"></div> 
	<fieldset><legend>Datos de la Orden</legend>	
		
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Proveedor</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Proveedor" name="prove_ide" id="prove_ide" >
					<option value=""></option>
					<?php foreach($mproveedor->lista() as $p): ?>
						<option value="<?php echo $p->prove_ide ?>">
						<?php echo $p->prove_ide.' - '. $p->prove_razonsocial.' - '. $p->prove_alias ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<div class="form-group col-sm-3 col-xs-12">
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
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Fecha Orden:</label>
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
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">No. Control</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="control" class="form-control" value="">
			</div>
		</div>
		<div class="form-group col-sm-1 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-2x"></span> <br>Insertar </button>
		</div>
	</fieldset>
</form>
<div class="clearfix"></div>
<div class="space-10"></div>
<div class="lista"></div>

<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'yyyy-mm-dd',endDate:'-0d'});
	});
	load('vst-orden-lista','','.lista');
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
				control: {
					required: true,
				}
			},

			messages: {
				fec: {
					required: 'Obligatorio',
				},
				control: {
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
				var vprove_ide = $('select[name="prove_ide"]').val();
				var vclien_ide = $('select[name="clien_ide"]').val();
				if (vprove_ide>0) {
					if (vclien_ide>0) {
						$.post('prc-morden-insert',$(formulario1).serialize(),function(data1){
							if(!isNaN(data1)) {
								load('vst-orden-lista','','.lista');
								alert('Registro agregado correctamente.');
								$(formulario1).each(function(){ this.reset() });
							} else {
								alerta('.msj1','danger',data1)
							}
						})
					} else {
						alerta('.msj1','danger','Indique Cliente');
					}
				} else {
					alerta('.msj1','danger','Indique Proveedor');
				}
			},
			invalidHandler: function (form) {
			}
		});
	})
</script> 