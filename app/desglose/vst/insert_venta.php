<?php require '../../../cfg/base.php'; ?>


<form action="" class="op1 form-horizontal">


	<div class="msj"></div>
	<fieldset><legend>Datos de la Venta (DESGLOSE)  17-07)</legend>	
		<div class="form-group">
			<label for="" class="control-label col-sm-3 bolder">Cliente:</label>
			<div class="col-sm-9 col-xs-12">
				<select class="form-control chosen" title="Cliente" name="clien_ide" id="clien_ide" >
					<option value=""></option>
					<?php foreach($mcliente->lista() as $c): ?>
						<option value="<?php echo $c->clien_ide ?>">
						<?php echo $c->clien_ide.' - '. $c->clien_nombre1.' - '. $c->clien_nombre2 ?></option>
					<?php endforeach; ?>
				</select>
			</div>
			
		</div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">% Descuento</label>
				<select class="form-control chosen" title="Cliente" name="porc_ide" id="porc_ide" >
					<option value=""></option>
					<?php foreach($mporcentaje->lista_tipo("venta") as $c): ?>
						<option value="<?php echo $c->porc_ide ?>">
						<?php echo  $c->porc_monto ?>%</option>
					<?php endforeach; ?>
				</select>
		</div>
		<input type="text" name="desg_ide" value="<?php echo $ide ?>">
		<div class="form-group col-sm-1 col-xs-12">
			<button class="btn btn-primary btn-sm pull-right"><span class="i fa fa-check fa-2x"></span> <br>Insertar </button>
		</div>
	</fieldset>

</form>


<script>
	$(function(){
		var formulario = '.op1';
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
				alert(data);
				$.post('prc-mdesglose-insertventa',$(formulario).serialize(),function(data){
					//alert(data);
					if(!isNaN(data)) {
						/*load('vst-desglose-lista_venta','desg_ide=<?php echo $desg_ide ?>','.lista_desgvta');*/
						if(confirm('Registro agregado correctamente.\n¿Desea agregar otro registro?')==true) {
							$(formulario).each(function(){ this.reset() })
						} else {
							cerrarmodal();
						}
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