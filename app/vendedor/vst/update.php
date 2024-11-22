<?php require '../../../cfg/base.php'; ?>
<?php foreach($mvendedor->poride($vende_ide) as $r): ?>
	<form action="" class="op2-pac well">
		<div class="msj-pac"></div>
		<fieldset><legend>Datos</legend>	
			<div class="form-group col-sm-4">
				<label for="" class="label control-label col-sm-12 bolder">Tipo: </label>
				<div class="col-sm-10" id="tipoven">
					<select class="form-control chosen" title="Agregar" name="tipo" id="tipo" onchange="load('vst-tipclien-selecttipo','tipo_ide='+this.value,'#tipoven');">
						<option value=""></option>
						<?php foreach($mtipclien->lista() as $p): ?>
							<option value="<?php echo $p->tipcli_ide ?>" <?php echo $fn->select($p->tipcli_ide,$r->vende_tipo) ?>><?php echo $p->tipcli_descrip ?></option>
						<?php endforeach; ?>
					</select>
				</div>
			</div>
			<div class="form-group col-sm-4">
				<label for="" class="label control-label col-sm-12 bolder">RIF o Cédula:</label>
				<div class="col-sm-12">
					<input type="text" name="ced" class="form-control" value="<?php echo $r->vende_cedrif ?>">
				</div>
			</div>
			<div class="form-group col-sm-4">
				<label for="" class="label control-label col-sm-12 bolder">Fecha de Registro:</label>
				<div class="col-sm-12">
					<input type="text" name="freg" class="form-control fecha" value="<?php echo date('d-m-Y',strtotime($r->vende_fecreg)); ?>">
				</div>
			</div>

			<div class="clearfix"></div>

			<div class="form-group col-sm-8">
				<label for="" class="label control-label col-sm-12 bolder">Nombre o Razón Social:</label>
				<div class="col-sm-12">
					<input type="text" name="nom1" class="form-control" value="<?php echo $r->vende_razonsocial ?>">
				</div>
			</div>
			<div class="form-group col-sm-4">
				<label for="" class="label control-label col-sm-12 bolder">Alias:</label>
				<div class="col-sm-12">
					<input type="text" name="nom2" class="form-control" value="<?php echo $r->vende_alias ?>">
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="form-group col-sm-12">
				<label for="" class="label control-label col-sm-12 bolder">Dirección:</label>
				<div class="col-sm-12">
					<input type="text" name="dir" class="form-control" value="<?php echo $r->vende_direcci ?>">
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="form-group col-sm-4">
				<label for="" class="label control-label col-sm-12 bolder">Teléfono:</label>
				<div class="col-sm-12">
					<input type="text" name="mov" class="form-control" value="<?php echo $r->vende_telcon ?>">
				</div>
			</div>
			<div class="form-group col-sm-4">
				<label for="" class="label control-label col-sm-12 bolder">Correo Electrónico:</label>
				<div class="col-sm-12">
					<input type="text" name="corre" class="form-control" value="<?php echo $r->vende_correo ?>">
				</div>
			</div>
			<div class="form-group col-sm-4">
				<label for="" class="label control-label col-sm-12 bolder">Contribuyente Especial:</label>
					<select class="form-control chosen" name="coes" id="coes">
						<option <?php if ($r->vende_contriespec==0) echo 'selected="true"'; ?> value="0">No</option>
						<option <?php if ($r->vende_contriespec==1) echo 'selected="true"'; ?> value="1">Si</option>
					</select>
			</div>
			<div class="clearfix"></div>
			<div class="form-group col-sm-12">
				<label for="" class="label control-label col-sm-12 bolder">Ubicación Mapa:</label>
				<div class="col-sm-12">
					<input type="text" name="ubimap" class="form-control" value="<?php echo $r->vende_ubimap ?>">
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="form-actions">
				<div class="btn-group pull-right">
					<button class="btn btn-primary btn-sm"><span class="i fa fa-check"></span> Guardar Cambios</button>
					<button type="button" class="btn btn-danger btn-sm pull-right" onclick="load('vst-vendedor-datos.personales','vende_ide=<?php echo $vende_ide ?>','.perfil')"><span class="i fa fa-times"></span> Cancelar</button>
				</div>
			</div>
		</fieldset>
		<input type="hidden" name="vende_ide" value="<?php echo $r->vende_ide ?>">
	</form>
<?php endforeach; ?>
<script>
	$(function(){
		$('.chosen').chosen();
		$('.fecha').datepicker({format:'dd-mm-yyyy',endDate:'-0d'});
	})
</script>

<script>
	$(function(){
		var formulario = '.op2-pac';
		$(formulario).validate({
			errorElement: 'div',
			errorClass: 'help-block',
			focusInvalid: true,
			rules: {
				tipcli: {
					required: true,
				},
				ced: {
					required: true,
				},
				nom1: {
					required: true,
				},
				dir: {
					required: true,
				}
			},

			messages: {
				tipcli: {
					required: 'Obligatorio',
				},
				ced: {
					required: 'Obligatorio',
				},
				nom1: {
					required: 'Obligatorio',
				},
				dir: {
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
				$.post('prc-mvendedor-update',$(formulario).serialize(),function(data){
					if(!isNaN(data)) {
						alert('Cambios guardados correctamente');
						load('vst-vendedor-datos.personales','vende_ide=<?php echo $vende_ide ?>','.perfil');
					} else {
						alerta('.msj-pac','danger',data)
					}
				})
			},
			invalidHandler: function (form) {
			}
		});
	})
</script>