<?php require '../../../cfg/base.php'; ?>
<form action="" class="op1">
	<?php 
	echo $fn->modalHeader('Agregar Devolución');
	echo $fn->modalWidth('90%');
	?>
	<div class="modal-body">
		<div class="msj"></div>
		<div class="form-group col-sm-4 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Producto</label>
			<div class="col-sm-12 col-xs-12">
				<select class="form-control chosen" title="Producto" name="produc_ide" id="produc_ide" >
					<option value=""></option>
					<?php foreach($mproducto->lista() as $p): ?>
						<option value="<?php echo $c->produc_ide ?>">
						<?php echo $p->produc_ide.' - '. $p->produc_codigo.' - '. $p->produc_descrip ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>		
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Cantidad</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="cantidad" id="cantidad" class="form-control" value="" autocomplete="off">
			</div>
		</div>
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Motivo</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="motivo" id="motivo" class="form-control" value="" autocomplete="off">
			</div>
		</div>
		<div class="form-group col-sm-3 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Nota</label>
			<select class="form-control chosen" title="nota" name="compra_ide" id="compra_ide"  onclick="getTotalVenta();">
					<option value=""></option>
					<?php foreach($mcompra_wh->lista_all() as $c): ?>
						<option value="<?php echo $c->compra_ide ?>" >
							<?php 
							echo $c->compra_num.' - '. $c->compra_porc_desc.'% - MONTO CREDITO '. $c->compra_monto_credito;
							?>
						</option>
					<?php endforeach; ?>
			</select>
		</div>
		<div class="clearfix"></div>
		<div class="form-group col-sm-2 col-xs-12">
			<label for="" class="label control-label col-sm-12 col-xs-12 bolder">Precio Unitario</label>
			<div class="col-sm-12 col-xs-12">
				<input type="text" name="punit" id="punit" class="form-control" value="" autocomplete="off">
			</div>
		</div>

	</div>
	<?php echo $fn->modalFooter(1) ?>
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
				$.post('prc-mbanco-insert',$(formulario).serialize(),function(data){

					if(!isNaN(data)) {
						load('vst-banco-lista','','.lista');
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